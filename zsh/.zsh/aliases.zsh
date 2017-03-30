## Directory Info
alias ll='ls -lFh'
alias la='ls -lAFh'  # List all files (inlcuding hidden)
alias lh='ls -ld .*' # List hidden files only
alias lr='ls -tRFh'  # List recursively
alias ls='ls -GFh'

## zsh
alias zshconfig='st ~/.zsh'
alias localrc='if [[ -a ~/.localrc ]]; then ${EDITOR} ~/.localrc; fi'
alias ohmyzsh='st ~/.oh-my-zsh'
alias reload!='. ~/.zshrc'

## Others
alias clr='clear'
alias nano="nano -c" # Constantly show cursor position
alias ..='cd ..'
alias ...='cd ../..'

## Hidden files in Finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

## Gradle
alias gw='./gradlew'
alias gbuild='./gradlew build'
alias gtest='./gradlew test'
alias gclean='./gradlew clean'
alias gcleanbuild='./gradlew clean build'
alias gradleconfig='open ~/.gradle/gradle.properties'

function taskTree() {
  # https://github.com/dorongold/gradle-task-tree
  if [ "$1" != "" ]
  then
    echo "Generating tree for task: $1"
    gw "$1" taskTree --no-repeat -q > taskTree.txt && open taskTree.txt
    echo "Done!"
  else
    echo "You must provide a task as argument"
  fi
}

## Application shortcuts
alias sourcetree='open -a SourceTree' # Prefer installing the command tools instead
alias androidstudio='open -a /Applications/Android\ Studio.app'
alias slack='open -a Slack'
alias telegram='open -a Telegram'

## My most used command (by Sloy)
alias meh='echo "¯\_(シ)_/¯" | pbcopy && echo "¯\_(シ)_/¯ copied"'
