{ config, lib, pkgs, ... }:

{
  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.tmp.cleanOnBoot = true;
  boot.kernel.sysctl = { "vm.swappiness" = 5; };
}
