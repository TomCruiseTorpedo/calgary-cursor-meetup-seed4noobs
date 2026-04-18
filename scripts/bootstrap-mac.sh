#!/usr/bin/env bash
# Bootstrap script for fresh Mac dev environment.
# Idempotent — safe to re-run. Each tool is only installed if missing.
set -euo pipefail

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

info()    { echo -e "${GREEN}==>${NC} $*"; }
warn()    { echo -e "${YELLOW}[!]${NC} $*"; }
success() { echo -e "${GREEN}[✓]${NC} $*"; }

# --- Step 0: Xcode Command Line Tools ---
# CLT provides git, clang, and other build tools. Homebrew requires it.
if ! xcode-select -p &>/dev/null; then
  warn "Xcode Command Line Tools not found. Triggering install popup..."
  xcode-select --install
  echo ""
  warn "A popup window just appeared asking you to install Xcode Command Line Tools."
  warn "Click 'Install', wait for it to finish, then re-run this script."
  exit 0
fi
success "Xcode Command Line Tools"

# --- Step 1: Homebrew ---
if ! command -v brew &>/dev/null; then
  info "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Add Homebrew to PATH for the rest of this script (handles Apple Silicon vs Intel)
if [[ -f /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -f /usr/local/bin/brew ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

# Write into shell profile so new terminals pick it up
BREW_EVAL='eval "$(/opt/homebrew/bin/brew shellenv)"'
for profile in "$HOME/.zprofile" "$HOME/.bash_profile"; do
  if [[ -f "$profile" ]] && ! grep -q "brew shellenv" "$profile"; then
    echo "$BREW_EVAL" >> "$profile"
  fi
done

success "Homebrew $(brew --version | head -1 | awk '{print $2}')"

# --- Step 2: Oh My Zsh ---
# Install before nvm so nvm's shell lines go into OMZ's .zshrc, not the other way around.
if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
  info "Installing Oh My Zsh..."
  RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
success "Oh My Zsh"

# --- Step 3: Git ---
# Xcode CLT already installed git, but brew version is newer and updatable.
if ! brew list git &>/dev/null; then
  info "Installing git (brew)..."
  brew install git
fi
success "$(git --version)"

# --- Step 4: nvm + Node 22 ---
export NVM_DIR="$HOME/.nvm"
if [[ ! -d "$NVM_DIR" ]]; then
  info "Installing nvm..."
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
fi
# Source nvm without restarting the terminal
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Safety: ensure nvm lines are in .zshrc (OMZ may have replaced it before nvm ran)
if [[ -f "$HOME/.zshrc" ]] && ! grep -q "NVM_DIR" "$HOME/.zshrc"; then
  {
    echo 'export NVM_DIR="$HOME/.nvm"'
    echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"'
  } >> "$HOME/.zshrc"
fi

if ! node --version &>/dev/null; then
  info "Installing Node.js 22 LTS..."
  nvm install 22
fi
nvm use 22
nvm alias default 22
success "$(node --version) (Node) / $(npm --version) (npm)"

# --- Step 5: Python ---
if ! command -v python3 &>/dev/null; then
  info "Installing Python 3..."
  brew install python
fi
success "$(python3 --version)"

# --- Step 6: GitHub CLI ---
if ! command -v gh &>/dev/null; then
  info "Installing GitHub CLI..."
  brew install gh
fi
success "GitHub CLI $(gh --version | head -1 | awk '{print $3}')"

# --- Step 7: Git identity ---
GIT_NAME=$(git config --global user.name 2>/dev/null || true)
GIT_EMAIL=$(git config --global user.email 2>/dev/null || true)

if [[ -z "$GIT_NAME" ]]; then
  echo ""
  read -rp "Enter your full name for Git commits: " GIT_NAME
  git config --global user.name "$GIT_NAME"
fi
if [[ -z "$GIT_EMAIL" ]]; then
  read -rp "Enter your email for Git commits:     " GIT_EMAIL
  git config --global user.email "$GIT_EMAIL"
fi
success "Git identity: $GIT_NAME <$GIT_EMAIL>"

# --- Step 8: SSH key (ed25519) ---
SSH_KEY="$HOME/.ssh/id_ed25519"
if [[ ! -f "$SSH_KEY" ]]; then
  info "Generating SSH key (ed25519)..."
  mkdir -p "$HOME/.ssh"
  chmod 700 "$HOME/.ssh"
  ssh-keygen -t ed25519 -C "$GIT_EMAIL" -f "$SSH_KEY" -N ""
  # Add to ssh-agent and macOS Keychain
  eval "$(ssh-agent -s)" &>/dev/null
  ssh-add --apple-use-keychain "$SSH_KEY" 2>/dev/null || ssh-add "$SSH_KEY"
fi

# Ensure ~/.ssh/config has the GitHub entry
SSH_CONFIG="$HOME/.ssh/config"
if ! grep -q "Host github.com" "$SSH_CONFIG" 2>/dev/null; then
  {
    echo ""
    echo "Host github.com"
    echo "  AddKeysToAgent yes"
    echo "  UseKeychain yes"
    echo "  IdentityFile ~/.ssh/id_ed25519"
  } >> "$SSH_CONFIG"
  chmod 600 "$SSH_CONFIG"
fi
success "SSH key: $SSH_KEY"

# --- Step 9: iTerm2 ---
if [[ ! -d "/Applications/iTerm.app" ]]; then
  info "Installing iTerm2..."
  brew install --cask iterm2
fi
success "iTerm2"

# --- Done ---
echo ""
echo -e "${GREEN}============================================${NC}"
echo -e "${GREEN}  All tools installed successfully!         ${NC}"
echo -e "${GREEN}============================================${NC}"
echo ""
echo "  Homebrew: $(brew --version | head -1 | awk '{print $2}')"
echo "  Git:      $(git --version | awk '{print $3}')"
echo "  Node:     $(node --version)"
echo "  npm:      $(npm --version)"
echo "  Python:   $(python3 --version | awk '{print $2}')"
echo "  gh:       $(gh --version | head -1 | awk '{print $3}')"
echo "  iTerm2:   installed"
echo "  OMZ:      installed"
echo ""
echo -e "${YELLOW}Next steps:${NC}"
echo ""
echo "  1. Add your SSH public key to GitHub:"
echo "     → Copy it:  cat ~/.ssh/id_ed25519.pub | pbcopy"
echo "     → Paste at: https://github.com/settings/ssh/new"
echo ""
echo "  2. Connect GitHub CLI:  gh auth login"
echo ""
echo "  3. Open iTerm2 instead of Terminal from now on."
echo ""
echo "  4. Open Cursor: https://www.cursor.com"
