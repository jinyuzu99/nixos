{ config, pkgs, ... }:
{
	nix.settings.substituters = [ "https://mirrors.cernet.edu.cn/nix-channels/store" ];
}
