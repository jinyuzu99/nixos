{ config, pkgs, ... }:
{
	networking = {
		firewall = {
			enable = true;
			allowedUDPPorts = [ 80 8080 ];
			allowedTCPPorts = [ 22 80 443 8080 ];
		}
	};
}
