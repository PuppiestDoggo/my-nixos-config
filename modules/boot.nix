{ config, lib, pkgs, ... }:

{
  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelParams = ["quiet"];



  boot.initrd.systemd.enable = true;
  boot.tmp.cleanOnBoot = true;
  boot.kernel.sysctl = { "vm.swappiness" = 5; };
  boot.plymouth.enable = true;
  boot.plymouth.theme="breeze";


  services.udev.packages = [pkgs.libmtp.out];

}
