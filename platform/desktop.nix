{ config, pkgs, ... }:
{
	services.xserver = {
		enable = true;
		libinput.enable = true;
	};
	sound.enable = true;
	hardware.pulseaudio.enable = false;
	security.rtkit.enable = true;
	services.pipewire = {
		enable = true;
 		alsa.enable = true;
		alsa.support32Bit = true;
		pulse.enable = true;
		jack.enable = true;
	};
	users.users.anyuzu99 = {
		password = "password";
		isNormalUser = true;
		extraGroups = [ "wheel" "networkmanager" "docker" ];
	};
}
