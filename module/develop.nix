{ config, pkgs, ... }:
{
	environment.systemPackages = with pkgs; [
		clang go deno
		vscode
	];
}
