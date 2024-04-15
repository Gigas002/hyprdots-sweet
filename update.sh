#!/bin/bash

# Paths
repo_root=$PWD
src=$PWD/src
Source=$PWD/Source
config=$PWD/Configs/.config/hyde/themes/Sweet

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
cp -r $src/Sweet/assets $Source/$gtk_theme_name/assets

# Icons
rm -rf $Source/candy-icons && mkdir -p $Source/candy-icons
cp -r $src/candy-icons $Source/candy-icons

Sweet_folders="$src/Sweet-folders"
rm -rf $Source/Sweet-Rainbow && mkdir -p $Source/Sweet-Rainbow
cp -r $Sweet_folders/Sweet-Rainbow $Source/Sweet-Rainbow

# Cursors
rm -rf $Source/Sweet-cursors && mkdir -p $Source/Sweet-cursors
cp -r $src/Sweet/kde/cursors/Sweet-cursors $Source/Sweet-cursors


# Wallpapers
rm -rf $config/wallpapers && mkdir -p $config/wallpapers
cp -r $src/Sweet/extras/Sweet-Wallpapers/* $config/wallpapers
rm $config/wallpapers/source.svg


# Kvantum
rm -rf $config/kvantum && mkdir -p $config/kvantum
cp -r $src/Sweet/kde/Kvantum/Sweet/* $config/kvantum
mv $config/kvantum/Sweet.kvconfig $config/kvantum/kvconfig.theme
{ echo '$HOME/.config/Kvantum/wallbash/wallbash.kvconfig'; cat $config/kvantum/kvconfig.theme; } > temp && mv temp $config/kvantum/kvconfig.theme
mv $config/kvantum/Sweet.svg $config/kvantum/kvantum.theme
{ echo '$HOME/.config/Kvantum/wallbash/wallbash.svg'; cat $config/kvantum/kvantum.theme; } > temp && mv temp $config/kvantum/kvantum.theme


# Make archives

mkdir -p $Source/arcs && cd $Source

rm -f $Source/arcs/Gtk_$gtk_theme_name.tar.gz
tar -cf $Source/arcs/Gtk_$gtk_theme_name.tar.gz $gtk_theme_name

rm -f $Source/arcs/Icon_candy-icons.tar.gz && cd candy-icons
tar -cf $Source/arcs/Icon_candy-icons.tar.gz candy-icons && cd $Source
rm -f $Source/arcs/Icon_Sweet-Rainbow.tar.gz && cd Sweet-Rainbow
tar -Jcf $Source/arcs/Icon_Sweet-Rainbow.tar.gz Sweet-Rainbow && cd $Source

rm -f $Source/arcs/Cursor_Sweet-cursors.tar.gz && cd Sweet-cursors
tar -Jcf $Source/arcs/Cursor_Sweet-cursors.tar.gz Sweet-cursors && cd $Source
