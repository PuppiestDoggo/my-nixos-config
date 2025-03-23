{ config, pkgs, ... }:
{
  # Enable virt-manager
  programs.virt-manager.enable = true;

  # Add the user 'arnaud' to the libvirtd group for virtualization permissions
  users.groups.libvirtd.members = [ "arnaud" ];

  # Enable the libvirtd service for virtualization support
  virtualisation.libvirtd.enable = true;

  # Enable SPICE USB redirection for virtual machines
  virtualisation.spiceUSBRedirection.enable = true;

  # Enable VMware host support
  virtualisation.vmware.host.enable = true;
}
