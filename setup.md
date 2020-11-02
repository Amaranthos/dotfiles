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
brew install nvm
brew install bash
brew install bashdot
brew install jenv
brew install jq
brew install pyenv
```

## Install apps via brew

```shell
brew cask install rectangle
brew cask install google-chrome
brew cask install slack
brew cask install visual-studio-code
brew cask install dotnet-sdk
brew cask install spotify
brew cask install docker
brew cask install java # and other java versions
```

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

## iTunes

Preferences > Devices > Prevent from syncing automatically

## Configure bash

https://itnext.io/upgrading-bash-on-macos-7138bd1066ba

- white list bash@5
