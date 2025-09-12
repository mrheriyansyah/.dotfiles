# MY PERSONAL DOTFILES

This repo was intended to documenting my personal's Arch Linux system.
I'll try to make this as detail as i can, feel free to use it yourself.

# Table of Contents
- [Directory Structure](#directory-structure)
- [Installed Programs](#installed-programs)
    - [Dependency](#dependency)
    - [Tools](#tools)
        - [Window Manager](#window-manager)
        - [Status Bar](#status-bar)
    - [Custom Scripts](#custom-scripts)


# Directory Structure

All files is saved in `~/.dotfiles` and using [GNU Stow](https://www.gnu.org/software/stow/) to distribute them to their default directory.  
Wallpapers is stored in `usr/share/Wallpapers` to make them accessible to other user.

# Installed Programs
## Dependency

Here's a list of programs that required to make the setup run properly :

- [Nerd Font](https://www.nerdfonts.com/)
For displaying icons properly

- [Figlet](http://www.figlet.org/) & [Lolcat](https://github.com/busyloop/lolcat)
Nothing beats style and colorfull text!

## Tools

### Window Manager
I choose [HYPRLAND](hypr.land) as my tiling window manager.

### Status Bar
[Waybar](https://github.com/Alexays/Waybar)

### Terminal Emulator
[Kitty](https://github.com/kovidgoyal/kitty)

## Custom Scripts

### push.sh
Automated git command to make add, comment and push proccess easier. It content all config files installed on my system.  
How to use it :  
1. Use bash aliases `dotfiles` & `push` to go to dotfiles dir and run this script.
2. Type a number that shows in the menu option to add your file
3. Type a comment for that file
4. Choose [y]es to add more files, i'll loop back to the menu, or choose [n]o to push it.
