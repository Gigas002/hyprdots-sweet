# hyprdots-sweet

An attempt to use the amazing gtk/kde sweet theme by [EliverLara](https://github.com/EliverLara) in [hyprland](https://github.com/hyprwm/Hyprland) via [hyprdots](https://github.com/prasanthrangan/hyprdots)

**Work in progress!**

![example](example.png)

For discussions, please refer to [this thread](https://github.com/prasanthrangan/hyprdots/discussions/653)

## Installation

You'll need to clone the [hyprdots](https://github.com/prasanthrangan/hyprdots) repo first. Maybe a [hyprtdots-ctl](https://github.com/kRHYME7/Hyprdots-ctl) may useful too

After that, go into `Hyprdots/Scripts` and execute the `themepatcher`:

`/themepatcher.sh "Sweet" "https://github.com/gigas002/hyprdots-sweet" "EliverLara.sweet-vscode"`

## Current status

Seems to work correctly:

- gtk
- icons
- configs/swww
- configs/kvantum
- kitty theme

Packaging problems:

- cursors -- packaged, but theme not applied
- firefox -- packaged, but theme not applied
- vscode -- installable manually, but automatic install through `themepatcher.py` doesn't work ([theme](https://marketplace.visualstudio.com/items?itemName=EliverLara.sweet-vscode), [icons](https://marketplace.visualstudio.com/items?itemName=EliverLara.sweet-vscode-icons))
- sddm -- can't confirm since I've always been using this theme with KDE Plasma and nothing changed for me with install
- unreadable fonts (see `dolphin` for example) -> `qt5ct` theme config problem. You can just rename any other config in `~/.config/qt5ct/themes` into `Sweet.conf` while it's not fixed

Incomplete:

- configs/hypr theme is (mostly) a copy-paste from synthwave
- configs/qt5ct theme generated poorly
- add configs/qt6ct theme (copy-paste of qt5ct is enough)
- configs/rofi theme is copy-paste from synthwave
- configs/waybar theme is copy-paste from synthwave
- more styles for different applications? Not sure if it's needed though
- ugly tray icons (probably a waybar-specific issue)
- splashscreen if possible

The referenced [Synth-Wave theme](https://github.com/prasanthrangan/hyprdots-mod)
