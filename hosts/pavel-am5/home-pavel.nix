{ pkgs, smind-hm, lib, extended_pkg, cfg-meta, ... }:

{
  imports = smind-hm.imports ++ [
    "${cfg-meta.paths.users}/pavel/hm/git.nix"
  ];

  smind.hm = {
    roles.desktop = true;
    firefox.sync-username = "pshirshov@gmail.com";
    autostart.programs = with pkgs; [
      {
        name = "element";
        exec = "${element-desktop}/bin/element-desktop --hidden";
      }
      {
        name = "slack";
        exec = "${slack}/bin/slack -u";
      }
      {
        name = "telegram-desktop";
        exec = "${pkgs.telegram-desktop}/bin/telegram-desktop -startintray";
      }
    ];
  };

  programs.direnv = {
    config = {
      whitelist.prefix = [ "~/work" ];
    };
  };

  services.megasync.enable = true;
  services.megasync.package = (pkgs.megasync.overrideAttrs (drv:
    {
      buildInputs = drv.buildInputs ++ [ pkgs.makeWrapper ];
      preFixup = ''
        ${drv.preFixup}
         qtWrapperArgs+=(--set "QT_STYLE_OVERRIDE" "adwaita")
         qtWrapperArgs+=(--set "DO_NOT_UNSET_XDG_SESSION_TYPE" "1")
         qtWrapperArgs+=(--set "QT_SCALE_FACTOR" "1")
         qtWrapperArgs+=(--set "QT_QPA_PLATFORM" "xcb")
      '';
    }));

  home.packages = with pkgs; [
    element-desktop
    bitwarden-desktop

    visualvm

    vlc
    telegram-desktop


    (extended_pkg {
      pkg = jetbrains.idea-ultimate;
      path = "bin/idea-ultimate";
      ld-libs = [
        libmediainfo
        xorg.libX11
        xorg.libX11.dev
        xorg.libICE
        xorg.libSM

        libGL
        icu
        fontconfig
        gccStdenv.cc.cc.lib
      ];
      #defs = { TEST = "1"; };
    })

    (extended_pkg {
      pkg = jetbrains.rider;
      path = "bin/rider";
      paths = [
        dotnet-sdk_9
      ];
      ld-libs = [
        libmediainfo
        xorg.libX11
        xorg.libX11.dev
        xorg.libICE
        xorg.libSM

        libGL
        icu
        fontconfig
      ];
    })

    (extended_pkg rec {
      pkg = jetbrains.clion;
      path = "bin/clion";
      ld-libs = [
        libGL
        libglvnd
        libGLU
        qt6.full
        vulkan-headers
        boost

        libxkbcommon

        libmediainfo
        xorg.libX11
        xorg.libX11.dev
        xorg.libICE
        xorg.libSM

        icu
        fontconfig
      ];
      defs = {
        CMAKE_LIBRARY_PATH = lib.makeLibraryPath ld-libs;
        CMAKE_INCLUDE_PATH = lib.makeIncludePath ld-libs;
        CMAKE_PREFIX_PATH = "${qt6.full}";
      };
    })
  ];

}

