{ config, lib, pkgs, cfgmeta, cfgnix, ... }:

{
  options = {
    smind.fonts.apple.enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "";
    };
  };

  config = lib.mkIf config.smind.fonts.apple.enable {
    nixpkgs.overlays = [
      (self: super: {
        menlo = pkgs.callPackage "${cfgmeta.paths.pkg}/menlo/menlo.nix" { };

        nix-apple-fonts = (cfgnix.nix-apple-fonts.default.overrideAttrs (drv: {
          # override install script to put fonts into /share/fonts, not /usr/share/fonts - where they don't work.
          # FIXME: notify upstream / submit PR?
          installPhase = ''
            runHook preInstall
            mkdir -p $out/share/fonts/opentype
            for folder in $src/fonts/*; do
                install -Dm644 "$folder"/*.otf -t $out/share/fonts/opentype
            done
            mkfontdir "$out/share/fonts/opentype"
            runHook postInstall
          '';
        }));
      })
    ];

    fonts = {
      fontDir.enable = true;
      packages = with pkgs; [
        # original apple fonts
        #menlo
        nix-apple-fonts
      ];
    };
  };
}