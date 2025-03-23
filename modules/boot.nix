{ config, pkgs, ... }:

{
  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.initrd.luks.devices."luks-d365a782-4769-4b81-a32b-ceaacb8f76de".device = "/dev/disk/by-uuid/d365a782-4769-4b81-a32b-ceaacb8f76de";
}
