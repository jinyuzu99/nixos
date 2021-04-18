# pull
git clone https://github.com/sayomelu/nixos ~/nixos
cp /etc/nixos/hardware-configuration.nix ~/nixos
sudo cp -rf ~/nixos /etc/nixos
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

nix-channel --add https://nixos.org/channels/nixos-unstable nixos
nix-channel --add https://mirrors.tuna.tsinghua.edu.cn/nix-channels/nixos-unstable nixos
nix-channel --update
