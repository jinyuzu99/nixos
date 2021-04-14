{ config, pkgs, ... }:
{
	networking = {
		hostName = "nixos";
		networkmanager.enable = true;
	};
	environment.systemPackages = with pkgs; [
	];
	services = {
		openssh.enable = true;
	};
	imports = [
			./hardware-configuration.nix
			# ./platform/desktop.nix
			# ./platform/server.nix
			# ./platform/nas.nix
			# ./driver/amd.nix
			# ./driver/intel.nix
			# ./driver/nvidia.nix
			# ./module/proxy.nix
			# ./module/tuna-mirror.nix
			# ./module/develop.nix
			# ./module/vmware.nix
			# ./module/gnome.nix
			# ./module/pantheon.nix
	];
	boot.loader = {
		systemd-boot.enable = true;
		efi.canTouchEfiVariables = true;
	};
	i18n.defaultLocale = "en_US.UTF-8";
}
