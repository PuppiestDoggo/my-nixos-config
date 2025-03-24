{ config, pkgs, ... }:

{
systemd = {
    services.tailord = {
      enable = true;
      description = "Tuxedo Tailor hardware control service";
      after = [ "systemd-logind.service" ];
      wantedBy = [ "multi-user.target" ];

      serviceConfig = {
        Type = "dbus";
        BusName = "com.tux.Tailor";
        ExecStart = "${pkgs.tuxedo-rs}/bin/tailord";
        Environment = "RUST_BACKTRACE=1";
        Restart = "on-failure";
      };
    };
  };	
}
