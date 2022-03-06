# GUI settings

## Theme

Use the following images as reference to set the theme and fonts

### gnome extensions app

![extensions](gui-settings/images/gt-extensions.png)

### gnome tweak appearance

![appearance](gui-settings/images/gt-appearance.png)

### gnome tweak fonts

![fonts](gui-settings/images/gt-fonts.png)

### gnome tweak topbar

![topbar](gui-settings/images/gt-topbar.png)

## VSCode

### Enable themes

Press Ctrl+Shift+P and type ```theme```, then change the relevant themes to the ones installed.

Icons: Material

File icons: Material

Color theme: Atom One dark

### Setup fonts for terminal

Add following lines to ```Ctrl+Shift+P > settings.json```

```json
"terminal.integrated.defaultProfile.linux": "zsh",
"terminal.integrated.fontFamily": "SF Mono Powerline",
"terminal.integrated.fontWeight": "400",
"terminal.integrated.fontSize": 15
```

## zshrc settings

change the following

```zsh
ZSH_THEME="agnoster"
plugins=(git sudo copypath copyfile copybuffer dirhistory)
```
