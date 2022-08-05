## install preqs
xcode-select --install || true
brew --version || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew analytics off
brew update

## tools
brew install azure-cli
brew install checkov
# brew install docker-completion
brew install hadolint
# brew install helm
brew install htop
brew install jq
brew install kubernetes-cli
brew install pre-commit
brew install terraform
brew install terraform-docs
brew install tflint
brew install yamllint
