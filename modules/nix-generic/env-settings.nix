{ config, lib, pkgs, cfg-meta, ... }:

{
  options = {
    smind.environment.sane-defaults.enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "";
    };

    smind.environment.all-docs.enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "";
    };
  };

  config = lib.mkIf config.smind.environment.sane-defaults.enable {

    documentation = lib.mkIf config.smind.environment.all-docs.enable
      {
        man.enable = true;
        info.enable = true;
        doc.enable = true;
      } // (if cfg-meta.isLinux then {
      nixos.enable = true;
      dev.enable = true;
    } else { });

    environment.systemPackages = with pkgs; [
      # file managers
      far2l
      mc
      nnn

      # editors
      nano

      # networking
      wget
      curl
      rsync
      ipcalc
      nmap
      bind.dnsutils
      tcpdump
      whois
      wakelan
      miniupnpc
      ookla-speedtest
      iperf
      wireguard-tools
      rsync

      # disk tools
      file
      ncdu
      du-dust
      tree
      lsd
      rename
      ripgrep
      fd # TODO:

      # monitoring
      htop
      bandwhich

      # terminal
      tmux
      zellij
      lsix # show thumbnails in the terminal
      spacer
      viddy
      tealdeer

      # arc
      unar
      zip
      unzip
      p7zip

      # system tools
      killall
      coreutils

      # pipe tools
      pv
      gnused
      sd # TODO
      mdcat
      bat

      # security
      age
      gnupg
      #inputs.agenix.packages."${system}".default

      # benchmark
      stress
      hyperfine
    ] ++ (if cfg-meta.isLinux then with pkgs; [
      # system tools
      d-spy
    ] else [ ]);
  };
}
