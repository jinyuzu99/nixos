{ config, pkgs, ... }:
{
	services.xserver.displayManager.gdm.enable = true;
	services.xserver.desktopManager.gnome.enable = true;
	environment.gnome.excludePackages = with pkgs; [
		gnome.gnome-calendar
		gnome.gnome-contacts
		gnome.gnome-weather
		gnome.cheese
		gnome.simple-scan
		gnome.yelp
	];
}
