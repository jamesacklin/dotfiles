# dotfiles
TODO: Probably bootstrap this with a script?

## Installation

Clone the git repo:

```
mkdir -p ~/Projects; cd ~/Projects
git clone https://github.com/jamesacklin/dotfiles.git
cd dotfiles
```

Then use [homemaker](http://foosoft.net/projects/homemaker/) to deploy.

OSX:

Install go. Then

```
export GOPATH=$HOME/go
mkdir -p $GOPATH
go get github.com/FooSoft/homemaker
go run github.com/FooSoft/homemaker $HOME/Projects/dotfiles/homemaker.tml $HOME/Projects/dotfiles
```

## Customization

Lots of interesting things happening in macos.sh, mostly copied wholesale from [https://github.com/mathiasbynens/dotfiles/blob/master/.macos](Mathias Bynens)

*Copyright (c) 2015 Christopher DeMarco <<cdemarco@gmail.com>>. All rights reserved.*