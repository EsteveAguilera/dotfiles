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

### ERROR: Cask 'XXXXXX' definition is invalid: invalid 'depends_on macos' value: unknown or unsupported macOS version: :XXXXX
To fix, just run the command:

```sh
/usr/bin/find "$(brew --prefix)/Caskroom/"*'/.metadata' -type f -name '*.rb' -print0 | /usr/bin/xargs -0 /usr/bin/perl -i -pe 's/depends_on macos: \[.*?\]//gsm;s/depends_on macos: .*//g'
```

This will remove all `depends_on macos` references of installed casks (where it doesn’t matter anymore anyway)
