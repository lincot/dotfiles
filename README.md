# my linux dotfiles

![screenshot](screenshot.png)

## preferred software

- distro: [Void Linux](https://voidlinux.org)
- WM: [sway](https://swaywm.org)
- terminal: [kitty](https://sw.kovidgoyal.net/kitty/)
- text editor: [helix](https://helix-editor.com)
- monospace font: [Fira Code](https://github.com/tonsky/FiraCode)
- sans font: [Fira](http://mozilla.github.io/Fira/)
- browser: [Firefox](https://www.mozilla.org/firefox)
- audio/video server: [PipeWire](https://pipewire.org)
- image viewer: [imv](https://sr.ht/~exec64/imv/)
- media player: [mpv](https://mpv.io)
- shell: [fish](https://fishshell.com)
- file lister: [exa](https://the.exa.website)
- search tool: [ripgrep](https://github.com/BurntSushi/ripgrep)
- status bar: [i3status-rust](https://github.com/greshake/i3status-rust/)
- screenshotting: [grim](https://wayland.emersion.fr/grim/),
[slurp](https://wayland.emersion.fr/slurp/) and
[swappy](https://github.com/jtheoof/swappy)

## installation

1. install Void Linux
2. install git: `sudo xbps-install -S git`
3. download this repo:
    ```fish
    cd
    git init
    git remote add origin https://git.sr.ht/~lincot/dotfiles
    git fetch
    git checkout -f master
    ```
4. review, edit and run `install.sh`
5. review and edit the config files
6. [configure Firefox](ff_configuration.md)
7. enjoy

## other software you may like

- tool to isolatedly install bloatware: [Flatpak](https://www.flatpak.org)
- screen recorder: [wf-recorder](https://github.com/ammen99/wf-recorder)
