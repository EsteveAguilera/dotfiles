### Install homebrew

```sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
### Install all the Brewfile dependencies

```sh
$ brew bundle

```
### xcrun: error
If you get this error message:
```
xcrun: error: invalid active developer path (/Library/Developer/CommandLineTools), missing xcrun at: /Library/Developer/CommandLineTools/usr/bin/xcrun
```

Just type the next command:

`sudo xcode-select --install`
