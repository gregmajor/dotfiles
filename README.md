# Greg's Dotfiles

**Dotfile Management for the Obsessive Compulsive**

Dotfiles are files that contain configuration settings in Unix (and variant) systems. They usually have names that start with a dot (such as `.bashrc` and `.gitconfig`). Since the name begins with a dot (full stop), they are treated as hidden files. For guys that like to sharpen the saw such as me, they contain some of the most valuable information on a computer.

These are my dotfiles.

## Credit Where Credit Is Due

Up until this current iteration, I used to manage my dotfiles by putting them all in a folder (`~/dotfiles`) and then symlinking them with a little shell script. It worked and, generally speaking I was happy with it. Prior to this I did what most people did and simply had different versions of dotfiles strewn across all my computers.

In December 2016, I stumbled across [Zach Holman's blog post](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/) and had one of those "ah-ha!" moments. I really liked the context-sensitive organization and convention-based code he put in place. I also liked some of the extra bits and bobbles like using Homebrew's bundle feature.

Almost immediately I set out to combine Zach's dotfile strategy with my own. I wanted the cool organization and nifty features, but I also wanted to be able to run a single command that did it all and ultimately make it my own. This repository is the result of that effort.

## Topical Paradise

Bringing forth the notion of topics is one of the simple yet genius things Zach brought to his dotfiles. This makes it super easy to organize things logically and keep things tidy. For example, if you start using the greatest editor of all time, vim, then you create a `vim` folder, drop your `.vimrc` file (named as `.vimrc.symlink`) in there, and run `redot` to handle your vim settings. Everything vim related will live in that folder. If you lose your freaking mind and decide to use a different editor then cleaning up is as simple as removing the `vim` folder and re-running `redot`.

## Conventions Rule

I didn't want to have to edit the "base" files any time I made a change or added something new. To accomplish that, I adopted and tweaked Zach's convention-based setup:

### Global Conventions

- `bin/`: This directory is added to $PATH and is where to put useful scripts
- `homebrew/Brewfile`: This is a [Homebrew bundle file]("https://coderwall.com/p/afmnbq/homebrew-s-new-feature-brewfiles") that gets executed if you elect to do so when you run `redot`

### Topic Conventions
- `<topic>/path.sh`: Any file with this name will be sourced during `$PATH` setup
- `<topic>/install.sh`: Any file with this name will be executed if you elect to do so when you run `redot`
- `<topic>/*.symlink`: Any file with the `.symlink` extension will be symlinked into your `$HOME` directory
- `<topic>/*.source`: Any file with the `.source` extension will be sourced when you run `redot`

## Usage

Run this:

```sh
cd ~
git clone https://github.com/gregmajor/dotfiles.git ~/dotfiles
cd ~/dotfiles
./redot
```

The `redot` script will walk you through everything and won't make any change to your computer without asking permission first.

## Bugs

First and foremost, please remember that these are my *actual* dotfiles. You can simply browse through the source and steal what you like or you can go so far as to fork this repo and start making changes that suit your needs. I try to make sure everything works on MacOS, Linux, and even on Windows (a'la Git Bash and such), but I can't make any warranties or promises. That being said, if you do stumble on a bug, please [open an issue](https://github.com/gregmajor/dotfiles/issues) I'll have a look!

