#!/bin/sh

mkdir -p ~/Pictures/Screenshots
mkdir ~/Downloads

# packages installation
sudo xbps-install -S \
    sway mesa mesa-dri seatd pam_rundir \
    kitty \
    font-firacode font-fira-otf \
    firefox xdg-desktop-portal-wlr \
    pipewire alsa-pipewire pulseaudio-utils ffmpeg \
    imv mpv \
    fish-shell \
    exa ripgrep \
    i3status-rust font-awesome5 \
    grim slurp swappy \
    wl-clipboard

# allows running sway
sudo ln -s /etc/sv/seatd /var/service/
sudo usermod -aG _seatd $USER
if ! grep -q pam_rundir.so /etc/pam.d/system-login; then
    echo "-session   optional   pam_rundir.so" | sudo tee -a /etc/pam.d/system-login
fi
              
# fish as default shell
chsh -s /bin/fish

# rust installatin (for helix)
sudo xbps-install rustup
rustup install stable

# helix installation
cd ~/Downloads
git clone https://github.com/helix-editor/helix
cd helix
CARGO_PROFILE_RELEASE_LTO=true RUSTFLAGS="-C target-cpu=native" cargo install --path helix-term
hx --grammar fetch
hx --grammar build
ln -s ~/Downloads/helix/runtime ~/.config/helix/runtime

# NTP (time syncing)
sudo xbps-install openntpd
sudo ln -s /etc/sv/ntpd /var/service/

sudo reboot
