#!/bin/sh

mkdir -p ~/Pictures/Screenshots
mkdir -p ~/Downloads

# system update
sudo xbps-install -Su xbps
sudo xbps-install -u

# packages installation
sudo xbps-install \
    sway mesa mesa-dri seatd pam_rundir \
    mako libnotify \
    xdg-desktop-portal-wlr \
    kitty \
    helix \
    font-firacode font-fira-otf \
    firefox \
    pipewire alsa-pipewire pulseaudio-utils ffmpeg \
    imv mpv \
    fish-shell \
    exa ripgrep \
    i3status-rust font-awesome5 \
    grim slurp swappy \
    wl-clipboard \
    gsettings-desktop-schemas gnome-themes-extra \
    pass

# allows running sway
sudo ln -s /etc/sv/seatd /var/service/
sudo usermod -aG _seatd $USER
if ! grep -q pam_rundir.so /etc/pam.d/system-login; then
    echo "-session   optional   pam_rundir.so" | sudo tee -a /etc/pam.d/system-login
fi
              
# fish as default shell
chsh -s /bin/fish

# not needed having binary package from xbps
# # rust installation (for helix)
# if ! type cargo > /dev/null; then
#     sudo xbps-install rustup
#     rustup-init
#     fish_add_path ~/.cargo/bin
#     . ~/.cargo/env
# fi

# # helix installation
# cd ~/Downloads
# git clone https://github.com/helix-editor/helix
# cd helix
# CARGO_PROFILE_RELEASE_LTO=true RUSTFLAGS="-C target-cpu=native" cargo install --path helix-term
# hx --grammar fetch
# hx --grammar build
# ln -s ~/Downloads/helix/runtime ~/.config/helix/runtime

# NTP (time syncing)
sudo xbps-install openntpd
sudo ln -s /etc/sv/ntpd /var/service/

# sudo reboot
