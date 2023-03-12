#!/bin/sh

mkdir -p ~/Pictures/Screenshots
sudo ln -s /bin/helix /bin/hx
sudo pacman -Sy --needed \
    sway mesa \
    mako libnotify \
    wezterm \
    helix \
    ttf-fira-code ttf-fira-sans ttf-font-awesome \
    thorium-browser-bin \
    pipewire pipewire-alsa \
    imv mpv \
    fish \
    i3status-rust \
    grim slurp swappy \
    wl-clipboard \
    gsettings-desktop-schemas gnome-themes-extra \
    pass \
    ripgrep-all
