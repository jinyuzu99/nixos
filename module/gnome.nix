{ config, pkgs, ... }:
{
	services = {
		xserver.desktopManager.gnome3.enable = true;
		gnome3.core-utilities.enable = false;
	};
}
