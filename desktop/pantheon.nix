{ config, pkgs, ... }:
{
	services.xserver.desktopManager.pantheon.enable = true;
	environment.pantheon.excludePackages = with pkgs; [
		pantheon.elementary-calculator
		pantheon.elementary-calendar
		pantheon.elementary-camera
		gnome3.geary
	];
}
