{ config, pkgs, ... }:
{
	system.autoUpgrade.channel = https://mirrors.tuna.tsinghua.edu.cn/nix-channels/nixpkgs-unstable;
    nix.binaryCaches = [ "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store" ];
}
