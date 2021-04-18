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
			up = "nixos-rebuild switch --upgrade";
            cg = "nix-collect-garbage";
            e = "micro";
		};
	};
    users.defaultUserShell = pkgs.fish;
}
