#!/bin/bash

# Paths
repo_root=$PWD
src=$PWD/src
Source=$PWD/Source
config=$PWD/Configs/.config

# Get updated repos
rm -rf $src
mkdir -p $src && cd $src
git clone https://github.com/EliverLara/Sweet && cd Sweet && git checkout nova && cd $src
git clone https://github.com/EliverLara/Sweet-kde
git clone https://github.com/EliverLara/firefox-sweet-theme
git clone https://github.com/EliverLara/sweet-vscode
git clone https://github.com/EliverLara/sweet-vscode-icons
git clone https://github.com/EliverLara/Sweet-folders
git clone https://github.com/EliverLara/candy-icons
cd $repo_root

# Copy the needed data from repo

# Gtk
gtk_theme_name="Sweet"
rm -rf $Source/$gtk_theme_name && mkdir -p $Source/$gtk_theme_name
cp -r $src/Sweet/cinnamon $Source/$gtk_theme_name/cinnamon
cp -r $src/Sweet/gnome-shell $Source/$gtk_theme_name/gnome-shell
cp -r $src/Sweet/gtk-2.0 $Source/$gtk_theme_name/gtk-2.0
cp -r $src/Sweet/gtk-3.0 $Source/$gtk_theme_name/gtk-3.0
cp -r $src/Sweet/gtk-4.0 $Source/$gtk_theme_name/gtk-4.0
cp -r $src/Sweet/metacity-1 $Source/$gtk_theme_name/metacity-1
cp -r $src/Sweet/xfwm4 $Source/$gtk_theme_name/xfwm4
cp -f $src/Sweet/index.theme $Source/$gtk_theme_name/index.theme

# Icons
rm -rf $Source/candy-icons && mkdir -p $Source/candy-icons
cp -r $src/candy-icons $Source/candy-icons

Sweet_folders="$src/Sweet-folders"
rm -rf $Source/Sweet-Blue && mkdir -p $Source/Sweet-Blue
cp -r $Sweet_folders/Sweet-Blue $Source/Sweet-Blue
rm -rf $Source/Sweet-Blue-Filled && mkdir -p $Source/Sweet-Blue-Filled
cp -r $Sweet_folders/Sweet-Blue-Filled $Source/Sweet-Blue-Filled
rm -rf $Source/Sweet-Mars && mkdir -p $Source/Sweet-Mars
cp -r $Sweet_folders/Sweet-Mars $Source/Sweet-Mars
rm -rf $Source/Sweet-Purple && mkdir -p $Source/Sweet-Purple
cp -r $Sweet_folders/Sweet-Purple $Source/Sweet-Purple
rm -rf $Source/Sweet-Purple-Filled && mkdir -p $Source/Sweet-Purple-Filled
cp -r $Sweet_folders/Sweet-Purple-Filled $Source/Sweet-Purple-Filled
rm -rf $Source/Sweet-Rainbow && mkdir -p $Source/Sweet-Rainbow
cp -r $Sweet_folders/Sweet-Rainbow $Source/Sweet-Rainbow
rm -rf $Source/Sweet-Red && mkdir -p $Source/Sweet-Red
cp -r $Sweet_folders/Sweet-Red $Source/Sweet-Red
rm -rf $Source/Sweet-Red-Filled && mkdir -p $Source/Sweet-Red-Filled
cp -r $Sweet_folders/Sweet-Red-Filled $Source/Sweet-Red-Filled
rm -rf $Source/Sweet-Teal && mkdir -p $Source/Sweet-Teal
cp -r $Sweet_folders/Sweet-Teal $Source/Sweet-Teal
rm -rf $Source/Sweet-Teal-Filled && mkdir -p $Source/Sweet-Teal-Filled
cp -r $Sweet_folders/Sweet-Teal-Filled $Source/Sweet-Teal-Filled
rm -rf $Source/Sweet-Yellow && mkdir -p $Source/Sweet-Yellow
cp -r $Sweet_folders/Sweet-Yellow $Source/Sweet-Yellow
rm -rf $Source/Sweet-Yellow-Filled && mkdir -p $Source/Sweet-Yellow-Filled
cp -r $Sweet_folders/Sweet-Yellow-Filled $Source/Sweet-Yellow-Filled


# Cursors
rm -rf $Source/Sweet-cursors && mkdir -p $Source/Sweet-cursors
cp -r $src/Sweet/kde/cursors/Sweet-cursors $Source/Sweet-cursors


# Wallpapers
rm -rf $config/swww/Sweet && mkdir -p $config/swww/Sweet
cp -r $src/Sweet/extras/Sweet-Wallpapers/* $config/swww/Sweet


# Sddm
rm -rf $Source/Sddm_Sweet && mkdir -p $Source/Sddm_Sweet
cp -r $src/Sweet/kde/sddm/* $Source/Sddm_Sweet


# Kvantum
rm -rf $config/Kvantum/Sweet && mkdir -p $config/Kvantum/Sweet
cp -r $src/Sweet/kde/Kvantum/Sweet/* $config/Kvantum/Sweet
rm -rf $config/Kvantum/Sweet-transparent-toolbar && mkdir -p $config/Kvantum/Sweet-transparent-toolbar
cp -r $src/Sweet/kde/Kvantum/Sweet-transparent-toolbar/* $config/Kvantum/Sweet-transparent-toolbar


# Firefox
rm -rf $Source/Firefox_Sweet && mkdir -p $Source/Firefox_Sweet/chrome
cp -r $src/firefox-sweet-theme/theme $Source/Firefox_Sweet/chrome/theme
cp $src/firefox-sweet-theme/icon.svg $Source/Firefox_Sweet/chrome/icon.svg
cp $src/firefox-sweet-theme/userChrome.css $Source/Firefox_Sweet/chrome/userChrome.css


# Make archives

mkdir -p $Source/arcs && cd $Source

rm -f $Source/arcs/Gtk_$gtk_theme_name.tar.xz
tar -Jcf $Source/arcs/Gtk_$gtk_theme_name.tar.xz $gtk_theme_name

rm -f $Source/arcs/Icon_candy-icons.tar.xz
tar -Jcf $Source/arcs/Icon_candy-icons.tar.xz -C candy-icons .

rm -f $Source/arcs/Icon_Sweet-Blue.tar.xz
tar -Jcf $Source/arcs/Icon_Sweet-Blue.tar.xz -C Sweet-Blue .
rm -f $Source/arcs/Icon_Sweet-Blue-Filled.tar.xz
tar -Jcf $Source/arcs/Icon_Sweet-Blue-Filled.tar.xz -C Sweet-Blue-Filled .
rm -f $Source/arcs/Icon_Sweet-Mars.tar.xz
tar -Jcf $Source/arcs/Icon_Sweet-Mars.tar.xz -C Sweet-Mars .
rm -f $Source/arcs/Icon_Sweet-Purple.tar.xz
tar -Jcf $Source/arcs/Icon_Sweet-Purple.tar.xz -C Sweet-Purple .
rm -f $Source/arcs/Icon_Sweet-Purple-Filled.tar.xz
tar -Jcf $Source/arcs/Icon_Sweet-Purple-Filled.tar.xz -C Sweet-Purple-Filled .
rm -f $Source/arcs/Icon_Sweet-Rainbow.tar.xz
tar -Jcf $Source/arcs/Icon_Sweet-Rainbow.tar.xz -C Sweet-Rainbow .
rm -f $Source/arcs/Icon_Sweet-Red.tar.xz
tar -Jcf $Source/arcs/Icon_Sweet-Red.tar.xz -C Sweet-Red .
rm -f $Source/arcs/Icon_Sweet-Red-Filled.tar.xz
tar -Jcf $Source/arcs/Icon_Sweet-Red-Filled.tar.xz -C Sweet-Red-Filled .
rm -f $Source/arcs/Icon_Sweet-Teal.tar.xz
tar -Jcf $Source/arcs/Icon_Sweet-Teal.tar.xz -C Sweet-Teal .
rm -f $Source/arcs/Icon_Sweet-Teal-Filled.tar.xz
tar -Jcf $Source/arcs/Icon_Sweet-Teal-Filled.tar.xz -C Sweet-Teal-Filled .
rm -f $Source/arcs/Icon_Sweet-Yellow.tar.xz
tar -Jcf $Source/arcs/Icon_Sweet-Yellow.tar.xz -C Sweet-Yellow .
rm -f $Source/arcs/Icon_Sweet-Yellow-Filled.tar.xz
tar -Jcf $Source/arcs/Icon_Sweet-Yellow-Filled.tar.xz -C Sweet-Yellow-Filled .

rm -f $Source/arcs/Cursor_Sweet-cursors.tar.xz
tar -Jcf $Source/arcs/Cursor_Sweet-cursors.tar.xz -C Sweet-cursors .

rm -f $Source/arcs/Sddm_Sweet.tar.xz
tar -Jcf $Source/arcs/Sddm_Sweet.tar.xz Sddm_Sweet --transform s/Sddm_Sweet/Sweet/

rm -f $Source/arcs/Firefox_Sweet-cursors.tar.xz
tar -Jcf $Source/arcs/Firefox_Sweet-cursors.tar.xz -C Firefox_Sweet .
