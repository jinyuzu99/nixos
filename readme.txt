# pull
git clone https://github.com/sayomelu/nixos ~/nixos
cp /etc/nixos/hardware-configuration.nix ~/nixos
sudo mv -rf ~/nixos /etc/nixos
cd /etc/nixos
sudo cp configuration-template.nix configuration.nix

# cleanup
nix-collect-garbage
nix-collect-garbage -d
