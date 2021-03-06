xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew doctor
brew update

brew install python
brew install ansible

HOMEBREW_CASK_OPTS="--appdir=/Applications" ansible-playbook -i hosts -vv localhost.yml
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
echo 'export PATH=$HOME/.nodebrew/current/bin:$PATH' >> ~/.zshrc
alias ctags="`brew --prefix`/bin/ctags"
