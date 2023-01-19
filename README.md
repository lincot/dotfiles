# my dotfiles

![screenshot](screenshot.png)

## preferred software

- distro: [Void Linux](https://voidlinux.org)
- WM: [sway](https://swaywm.org)
- terminal: [wezterm](https://wezfurlong.org/wezterm/)
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
- password manager: [pass](https://www.passwordstore.org/)

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
4. review, edit and execute `install.sh`
5. review and edit the config files
6. [configure Firefox](ff_configuration.md)

## to begin

1. turn on your PC
2. log in
3. run `XDG_CURRENT_DESKTOP=sway dbus-run-session sway`
4. press `Super+Enter` to open terminal
5. launch firefox: `firefox-wayland &>/dev/null &disown`
6. move it to the second workspace with `Super+Shift+2`
(so that there is only 1 fullscreen window per workspace)
7. enjoy

## other software you might like

- tool to install isolated bloatware: [Flatpak](https://www.flatpak.org)
- screen recorder: [wf-recorder](https://github.com/ammen99/wf-recorder)
