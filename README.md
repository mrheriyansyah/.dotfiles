# MY PERSONAL DOTFILES

This repo was intended to documenting my personal's Arch Linux system.
I'll try to make this as detail as i can, feel free to use it yourself.

# Table of Contents
- [Directory Structure](#directory-structure)
- [Installed Programs](#installed-programs)
    - [Basic Tools](#basic-tools)
    - [Main Programs](#main-programs)
        - [Window Manager](#window-manager)
        - [Status Bar](#status-bar)
        - [Terminal Emulator](#terminal-emulator)
        - [Code Editor](#code-editor)
        - [Wallpaper](#wallpaper)
    - [Custom Scripts](#custom-scripts)


# Directory Structure

All files is saved in `~/.dotfiles` and using [GNU Stow](https://www.gnu.org/software/stow/) to distribute them to their default directory.  
Wallpapers is stored in `usr/share/Wallpapers` to make them accessible to other user.

# Installed Programs
## Basic tools

Here's a list of programs that i install as is (no custom config), and tools to run this setup properly :  
(nb: I need to find a better descriptive name for this).

- [Nerd Font](https://www.nerdfonts.com/)
For displaying icons properly

- [Figlet](http://www.figlet.org/) & [Lolcat](https://github.com/busyloop/lolcat)
Nothing beats style and colorfull text!

- [Gedit](https://gedit-text-editor.org/)
GUI text editor

- [Nemo](https://github.com/linuxmint/nemo)
File browser, use `SUPER_E` to launch.

- [Clipse](https://github.com/savedra1/clipse)
CLipboard, use `SUPER_V` to launch.

## Main Programs

### Window Manager
I choose [HYPRLAND](hypr.land) as my tiling window manager.

### Status Bar
[Waybar](https://github.com/Alexays/Waybar)

### Terminal Emulator
[Kitty](https://github.com/kovidgoyal/kitty)

### Code Editor
[Neovim](neovim.io)

### Wallpaper
[Waypaper](https://github.com/anufrievroman/waypaper) as my wallpaper picker and [swww](https://github.com/LGFae/swww) as the backend.

### Screenshot
[Hyprshot](https://github.com/Gustash/Hyprshot)  
Captured image stored at `~/Pictures/Screenshots/`  
Usage :
1. `PrtSc` to capture a whole screen.
2. `SUPER_Ctrl + PrtSc` to choose & capture a window.
3. `SUPER_Shift + PrtSc` to drawn a region to capture.

### Launcher
[Rofi](https://github.com/davatorium/rofi)  
`SUPER_R` to run Rofi.

## Custom Scripts

### push.sh
Automated git command to make add, comment and push proccess easier. It content all config files installed on my system.  
Usage :  
1. Use bash aliases `dotfiles` & `push` to go to dotfiles dir and run this script.
2. Type a number that shows in the menu option to add your file
3. Type a comment for that file
4. Choose [y]es to add more files, i'll loop back to the menu, or choose [n]o to push it.
