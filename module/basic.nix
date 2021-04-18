{ config, pkgs, ... }:
{
	environment.systemPackages = with pkgs; [
		openssl wget git
		micro xsel
	];
	programs = {
		fish.enable = true;
        tmux.enable = true;
		mosh.enable = true;
	};
    environment = {
		shellAliases = {
			up =  sudo nixos-rebuild switch --upgrade;
		};
	};
    users.defaultUserShell = "pkgs.fish";
}
