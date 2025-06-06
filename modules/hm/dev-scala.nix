{ config, lib, pkgs, ... }:

{
  options = {
    smind.hm.dev.scala.enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "";
    };
  };

  config = lib.mkIf config.smind.hm.dev.scala.enable {
    home.sessionVariables = {
      COURSIER_PROGRESS = "false";
    };

    home.packages = with pkgs; [
      scalafmt
      ammonite

      # scala
      # sbt
      # mill
      # coursier
    ];

  };
}

