{ config, lib, pkgs, cfg-const, cfg-meta, ... }:

{
  imports = [
    ./hardware-configuration.nix
    "${cfg-meta.paths.secrets}/pavel/age-rekey.nix"
    "${cfg-meta.paths.private}/github-agent.nix"
  ];

  boot.kernelParams = [
    "console=ttyS0"
    "console=tty1"
    "nvme.shutdown_timeout=10"
    "libiscsi.debug_libiscsi_eh=1"
  ];

  networking = {
    hostName = "o1";
    domain = "7mind.io";
    hostId = "aabb0001";
    useDHCP = false;
    interfaces.enp0s6.useDHCP = true;
    firewall.enable = true;
  };

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  users = {
    users = {
      root = {
        openssh.authorizedKeys.keys = cfg-const.ssh-keys-pavel ++ cfg-const.ssh-keys-nix-builder;
      };
    };
  };

  age.rekey = {
    hostPubkey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMrnWmWxAkng1zx6KcQuGaJgCRVaLch9xMvkVzSe+6zI";
  };

  environment.systemPackages = with pkgs; [
  ];

  # Copy the NixOS configuration file and link it from the resulting system
  # (/run/current-system/configuration.nix). This is useful in case you
  # accidentally delete configuration.nix.
  # system.copySystemConfiguration = true;

  home-manager.users.root = import ./home-root.nix;

  smind = {
    roles.desktop.generic-gnome = false;

    locale.ie.enable = true;

    host.email.to = "team@7mind.io";
    host.email.sender = "${config.networking.hostName}@home.7mind.io";

    net.main-interface = "enp0s6";
    net.tailscale.enable = true;

    ssh.permissive = false;
    ssh.safe = true;

    isDesktop = false;
    systemd-boot.enable = true;

    hw.cpu.isArm = true;
    router.enable = true;

    home-manager.enable = true;
  };
}

