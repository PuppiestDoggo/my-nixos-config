{ config, pkgs, ... }:

{
  hardware.tuxedo-drivers.enable = true;
  hardware.tuxedo-rs.enable = true;
  hardware.tuxedo-rs.tailor-gui.enable = true;
  powerManagement.powertop.enable = true;
}
