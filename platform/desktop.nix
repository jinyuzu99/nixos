{ config, pkgs, ... }:
{
	services.xserver = {
		enable = true;
		layout = "us";
		libinput.enable = true;
	};
	sound.enable = true;
	users.users.user = {
		password = "password";
		isNormalUser = true;
		extraGroups = [ "wheel" "networkmanager" "docker" ];
	};
	nixpkgs.config.allowUnfree = true;
}
