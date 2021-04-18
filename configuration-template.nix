{ config, pkgs, ... }:
{
	environment.systemPackages = with pkgs; [
		fish mosh
		openssl wget git
		tmux micro xsel
	];
	services = {
		openssh.enable = true;
	};
	imports = [
			./hardware-configuration.nix
			# ./platform/desktop.nix
			# ./platform/server.nix
			# ./driver/amd.nix
			# ./driver/intel.nix
			# ./driver/nvidia.nix
			# ./driver/vmware.nix
			# ./desktop/gnome.nix
			# ./desktop/pantheon.nix
			# ./module/proxy.nix
			# ./module/tuna-mirror.nix
			# ./module/develop.nix
			# ./module/docker.nix
	];
	system.stateVersion = "20.09";
	boot.loader = {
		systemd-boot.enable = true;
		efi.canTouchEfiVariables = true;
	};
	i18n.defaultLocale = "en_US.UTF-8";
	networking = {
		hostName = "nixos";
		networkmanager.enable = true;
	};
}
