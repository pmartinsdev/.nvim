# pmartinsdev's Neovim Configuration

Welcome to my Neovim configuration! I hope this helps you with your own setup. This repository contains all of the plugins and configurations I use to make Neovim my go-to text editor.

## Features

This configuration comes with a variety of features, including:

- Custom keyboard shortcuts to make navigating Neovim more intuitive
- Integration with Git, allowing you to execute Git commands without leaving the editor
- A powerful file browser that makes navigating your file system a breeze
- Integration with language servers to provide better autocompletion and code analysis
- Custom commenting functionality for quickly commenting and uncommenting code
- Custom fuzzy finders for quickly searching for files or text within files

## Keyboard Shortcuts

I've created a variety of custom keyboard shortcuts to help you navigate Neovim more easily. Here's a rundown of some of the most useful shortcuts:

| Plugin Name  | Shortcut  | Description                                                      |
| ------------ | --------- | ---------------------------------------------------------------- |
| vim          | `<C-a>`   | Select all file content                                          |
| vim          | `te`      | Creates a new TAB                                                |
| vim          | `tc`      | Closes the current TAN                                           |
| vim          | `<Space>` | Navigate between TABs                                            |
| vim          | `sw`      | Go to the next window                                            |
| vim          | `sh`      | Go to the left window                                            |
| vim          | `sk`      | Go to up window                                                  |
| vim          | `sj`      | Go to down window                                                |
| vim          | `sl`      | Go to right window                                               |
|              |           |                                                                  |
| git          | `gm`      | Do git merge + input                                             |
| git          | `gco`     | Do git checkout + input                                          |
| git          | `gcc`     | Do git commit -m + input                                         |
| git          | `gcb`     | Do git checkout -b + input                                       |
| git          | `gss`     | Do git stash command                                             |
| git          | `gsa`     | Do git stash apply command                                       |
| git          | `gaa`     | Do git add . command                                             |
| git          | `gl`      | Make a pull from origin remote inside of current git branch      |
| git          | `gp`      | Push all commits into origin remote inside of current git branch |
|              |           |                                                                  |
| diffview     | `dv`      | Open diffview TAB                                                |
| diffview     | `dc`      | Closes diffview TAB                                              |
| diffview     | `>`       | Inside of diffview got to the next conflict                      |
| diffview     | `<`       | Inside of diffview got to the previous conflict                  |
| diffview     | `c-`      | Inside of diffview deletes the conflict region                   |
| diffview     | `c=`      | Inside of diffview accepts all versions from conflicts region    |
| diffview     | `c<`      | Inside of diffview accepts ours conflicts region                 |
| diffview     | `c>`      | Inside of diffview accepts theirs conflicts region               |
|              |           |                                                                  |
| git-blame    | `gb`      | Toggle GIT Blame                                                 |
|              |           |                                                                  |
| lspsaga      | `<ESC>`   | Toggle terminal window                                           |
| lspsaga      | `gr`      | Rename all name references                                       |
| lspsaga      | `K`       | Open definition                                                  |
| lspsaga      | `gd`      | Open all references window                                       |
| lspsaga      | `<C-j>`   | Jump to next diagnostic (error, warning)                         |
|              |           |                                                                  |
| nvim-comment | `;c`      | Comment cursor line                                              |
| nvim-comment | `;;c`     | Comment cursor selection                                         |
|              |           |                                                                  |
| telescope    | `;b`      | Open file browser                                                |
| telescope    | `N`       | Inside of file browser creates a new file                        |
| telescope    | `c`       | Inside of file browser copy cursor file and creates a new one    |
| telescope    | `h`       | Inside of file browser go to parent DIR                          |
| telescope    | `d`       | Inside of file browser ask to delete cursor file                 |
| telescope    | `;p`      | Open file finder                                                 |
| telescope    | `;f`      | Open fuzzy finder - Live grep                                    |
| telescope    | `;;`      | Open last telescope finder                                       |
| telescope    | `;e`      | Open diagnostic window                                           |
| telescope    | `;\`      | Open Buffer's browser                                            |
| telescope    | `;t`      | Open helper telescope finder                                     |

## Requirements

1. Unix System
2. Vim
3. Neo Vim 0.7+
4. Git 2.37+
5. [Lua Language Server](https://github.com/sumneko/lua-language-server)
6. [ripGrep](https://github.com/BurntSushi/ripgrep)

## How to Install

To install my Neovim configuration, follow these steps:

1. Clone this repository `git clone https://github.com/pmartinsdev/.nvim.git ~/.config/nvim`
2. Install all extensions and packages `sh ~/.config/nvim/install.sh`

And done !! Happy Hacking !!
