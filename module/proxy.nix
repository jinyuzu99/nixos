{ config, ... }:
{
	networking = {
		proxy = {
			default = "http://127.0.0.1:1080";
			noProxy = "127.0.0.1, localhost, *.local";
		};
	};
}
