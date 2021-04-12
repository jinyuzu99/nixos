{ config, pkgs, ... }:
{
	system = {
		stateVersion = "20.09";
		autoUpgrade.enable = true;
	}
	networking = {
		firewall = {
			enable = true;
			allowedUDPPorts = [ 80 8080 ];
			allowedTCPPorts = [ 22 80 443 8080 ];
		}
	};
	environment.systemPackages = with pkgs; [
		fish mosh
		openssl curl git
		tmux micro
		docker-compose
	];
	services = {
		samba.enable = true;
	};
}
