# Setting up new mac machine

## Install brew
```shell
xcode-select —-install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Tap brew repos
```shell
brew tap bashdot/tap
```

## Install tools via brew
```shell
brew install mas
brew install npm
brew install bash
brew install bashdot
```

## Install apps via brew
```shell
brew cask install google-chrome
brew cask install slack
brew cask install visual-studio-code
brew cask install dotnet-sdk
brew cask install spotify
brew cask install docker
```

## Install app store apps
```shell
mas signin $APPLE_ID
# Magnet
mas install 441258766
```

<!-- Handled by dotfiles
## Configure prompt
```shell
# curl -o ~/.bash.prompt -L https://gist.github.com/Amaranthos/b0255bdcb6d21db65f9ce29eb404d2cc/raw/.bash.prompt
# echo -e '\nsource ~/.bash.prompt' >> ~/.bash_profile && source ~/.bash_profile
``` -->

## Configure terminal
### Profiles > Text
- Font > Inconsolata
- Cursor > Vertical Bar

## Change system preferences

### Dock
- Minimise windows using: `scale effect`
- Prefer tabs when opening documents: `Always`
- Minimise windows into application icon: `true`
- Show recent applications: `false`

### Keyboard
#### Modifier Keys
Caps Lock: No Action

## Configure vccode
- Install settings sync`
- Generate new git token

## Configure git
```shell
git config --global core.editor "code -w"
git config --global user.name "Joshua Hodkinson"
git config --global user.email $USER_EMAIL
curl -o ~/.gitconfig.aliases -L https://gist.github.com/Amaranthos/690df1f6b75e6c0f5ce41609080e95d2/raw/.gitconfig.aliases
git config --global include.path "~/.gitconfig.aliases"
# curl -o ~/.git-completion.bash -L https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
# echo -e '\ntest -f ~/.git-completion.bash && . $_' >> ~/.bash_profile && source ~/.bash_profile
```

## Install font google fonts
```shell
curl -L https://github.com/google/fonts/tarball/master -o /tmp/master.tar.gz
mkdir -p /tmp/goog-fonts/fonts
tar -zxf /tmp/master.tar.gz -C /tmp/goog-fonts/fonts
sudo find /tmp/goog-fonts/fonts/ -type f -name "*.ttf" -exec cp {} '/Library/Fonts/' \;
rm -f /tmp/master.tar.gz
rm -rf /tmp/goog-fonts
```

## iTunes
Preferences > Devices > Prevent from syncing automatically

## Configure bash
https://itnext.io/upgrading-bash-on-macos-7138bd1066ba
- white list bash@5