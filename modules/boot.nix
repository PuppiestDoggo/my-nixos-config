{ config, lib, pkgs, ... }:

{
  boot.initrd.luks.devices."luks-7904b37e-71fb-46e2-b627-6eb76a487bc2".device = "/dev/disk/by-uuid/7904b37e-71fb-46e2-b627-6eb76a487bc2";
  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.tmp.cleanOnBoot = true;
  boot.kernel.sysctl = { "vm.swappiness" = 5; };
}
