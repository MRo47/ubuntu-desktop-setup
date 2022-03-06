# GUI settings

## vscode

### Enable extensions and themes


### Setup fonts for terminal

Add following lines to `Ctrl+Shift+P > settings.json`

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