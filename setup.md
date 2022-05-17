# Setting up new mac machine

## Install brew

```shell
xcode-select —-install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle install
```

## Configure bash

https://itnext.io/upgrading-bash-on-macos-7138bd1066ba

- white list bash@5 `sudo nano /etc/shells/`
- set default shell `chsh -s <path>`
