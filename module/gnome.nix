{ config, pkgs, ... }:
{
	services.xserver.desktopManager.gnome3.enable = true;
	environment.gnome3.excludePackages = with pkgs; [
		gnome3.gnome-contacts
		gnome3.gnome-clocks
		gnome3.gnome-maps
		gnome3.gnome-weather
		gnome3.cheese
		gnome3.geary
		gnome3.simple-scan
		gnome-photos
	];
}
