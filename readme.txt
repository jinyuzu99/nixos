# pull
git clone https://github.com/sayomelu/nixos ~/.config/nixos
cp /etc/nixos/hardware-configuration.nix ~/.config/nixos
rm -rf /etc/nixos
sudo ln -sF ~/.config/nixos /etc/nixos
sudo cp -rf ~/.config/nixos /etc/nixos
cd /etc/nixos
sudo cp configuration-template.nix configuration.nix

# cleanup
nix-collect-garbage
nix-collect-garbage -d

# setup
sudo parted
print
select </dev/sda>
mklabel gpt
mkpart ESP fat32 1MB 512MB
mkpart primary <xfs> 512MB 100%
set 1 esp on

mkfs.xfs /dev/sda1
mkfs.fat -F 32 /dev/sda3

nix search
nix-env -i git

nixos-generate-config --root /mnt
nano /mnt/etc/nixos/configuration.nix
nixos-install

nix-channel --add https://mirrors.cernet.edu.cn/nix-channels/nixos-23.05 nixos
nix-channel --update
nixos-rebuild switch --upgrade
