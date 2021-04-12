{ config, pkgs, ... }:
{
	services.xserver = {
		videoDrivers = [ "modesetting" ];
		useGlamor = true;
	};
	hardware.opengl.extraPackages = [ intel-compute-runtime ];
}
