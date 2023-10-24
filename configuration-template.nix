{ config, pkgs, ... }:
{
	imports = [
			./hardware-configuration.nix
			./platform/desktop.nix
			# ./platform/server.nix
			# ./driver/amd.nix
			./driver/intel.nix
			# ./driver/nvidia.nix
			# ./driver/vmware.nix
			./desktop/gnome.nix
			# ./desktop/lumina.nix
			# ./desktop/pantheon.nix
			./module/basic.nix
			# ./module/proxy.nix
			# ./module/tuna-mirror.nix
			# ./module/develop.nix
			# ./module/docker.nix
	];
	services = {
		openssh.enable = true;
	};
	system.stateVersion = "23.05";
	boot.loader = {
		systemd-boot.enable = true;
		efi.canTouchEfiVariables = true;
	};
	
	i18n.defaultLocale = "en_US.UTF-8";
	time.timeZone = "Asia/Taipei";
	
	networking = {
		hostName = "nixos";
		networkmanager.enable = true;
	};
	nixpkgs.config.allowUnfree = true;
}
