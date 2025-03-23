{ config, pkgs, ... }:

{
  boot.kernel.sysctl = { "vm.swappiness" = 5;};
  # Bootloader configuration
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Clean temporary directories on boot
  boot.tmp.cleanOnBoot = true;
  environment.etc.crypttab.text = ''
    HDD UUID=abd2098c-29c7-41b1-9b16-0ed2e347e5b6 none luks
  '';


  # Filesystem configuration for HDD
  fileSystems."/mnt/HDD" = {
    device = "/dev/mapper/HDD";
    fsType = "xfs";
    options = [
      "defaults"
      "noatime"
      "x-systemd.automount"
      "x-systemd.device-timeout=5"
    ];
  };
}
