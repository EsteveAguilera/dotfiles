## What is homebrew
[Homebrew](https://brew.sh/) is a package manager for macOS that lets you install software right from the terminal like 
```sh
$ brew install wget
```

### Install homebrew
To install homebrew just run this command on your terminal
```sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### Brewfile
The Brewfile is a file containing a list of Homebrew packages to install

To create your own Brewfile with the packages you've installed
```sh
$ brew bundle dump
```
And you can install all Homebrew packages from a Brewfile with
```sh
$ brew bundle
```

### xcrun: error
If you get this error message:
```
xcrun: error: invalid active developer path (/Library/Developer/CommandLineTools), missing xcrun at: /Library/Developer/CommandLineTools/usr/bin/xcrun
```

Just type the next command:
```sh
$ sudo xcode-select --install
```
