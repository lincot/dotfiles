#!/bin/sh

mkdir -p ~/Pictures/Screenshots
sudo pacman -Sy --needed \
    sway swaybg mesa \
    mako libnotify \
    wezterm \
    helix \
    ttf-fira-code ttf-fira-sans ttf-font-awesome \
    brave-bin \
    pipewire pipewire-alsa \
    imv mpv \
    fish eza ripgrep-all \
    i3status-rust \
    grim slurp swappy \
    wl-clipboard \
    gsettings-desktop-schemas gnome-themes-extra \
    pass
sudo ln -s /bin/helix /bin/hx
systemctl enable --user 20-20-20.timer
gsettings set org.gnome.desktop.interface color-scheme prefer-dark
echo "export QT_STYLE_OVERRIDE=adwaita-dark" >> ~/.profile
