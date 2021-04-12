{ config, pkgs, ... }:
{
	system = {
		stateVersion = "21.05";
		autoUpgrade = {
			enable = true;
			channel = https://nixos.org/channels/nixos-unstable;
		};
	};
	networking = {
		wireless.enable = true;
	};
	services.xserver = {
		enable = true;
		layout = "us";
		libinput.enable = true;
		videoDrivers = [ "modesetting" ];
		useGlamor = true;
	};
	sound.enable = true;
	users.users.user = {
		password = "password";
		isNormalUser = true;
		extraGroups = [ "wheel" "networkmanager" "docker" ];
	};
	nixpkgs.config.allowUnfree = true;
	environment.systemPackages = with pkgs; [
		fish mosh
		openssl curl git
		tmux micro xclip
	];

}
