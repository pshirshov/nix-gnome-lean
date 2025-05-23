{ pkgs, config, smind-hm, lib, extended_pkg, cfg-meta, inputs, outerConfig, import_if_exists, ... }:

{
  imports = smind-hm.imports ++ [
    "${cfg-meta.paths.users}/pavel/hm/git.nix"
    "${cfg-meta.paths.secrets}/pavel/age-rekey.nix"
    (import_if_exists "${cfg-meta.paths.private}/modules/hm/pavel/cfg-hm.nix")
  ];

  smind.hm = {
    roles.desktop = true;
    firefox.sync-username = "pshirshov@gmail.com";
  };

  programs.direnv = {
    config = {
      whitelist.prefix = [ "~/work" ];
    };
  };

  home.packages = with pkgs; [
  ];

  age.rekey.hostPubkey = outerConfig.age.rekey.hostPubkey;

  programs.zsh.shellAliases = {
    rmj = "find . -depth -type d \\( -name target -or -name .bloop -or -name .bsp -or -name .metals \\) -exec rm -rf {} \\;";
  };

  home.activation.createSymlinks = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    mkdir -p .ssh/
    ln -sfn ${outerConfig.age.secrets.id_ed25519.path} ~/.ssh/id_ed25519
    ln -sfn ${outerConfig.age.secrets."id_ed25519.pub".path} ~/.ssh/id_ed25519.pub
    mkdir -p .sbt/secrets/
    ln -sfn ${outerConfig.age.secrets.nexus-oss-sonatype.path} ~/.sbt/secrets/credentials.sonatype-nexus.properties
  '';

  /* programs.zed-editor =
    {
      userSettings = {
        base_keymap = "None";
      };
      userKeymaps = import ./zed-keymap/zed-keymap-linux.nix;
    };

    programs.vscode.profiles.default.keybindings =
    if cfg-meta.isLinux then
      (builtins.fromJSON (builtins.readFile "${cfg-meta.paths.users}/pavel/hm/keymap-vscode-linux.json"))
    else
      [ ];
  */

  # home.activation.jetbrains-keymaps = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
  #   ${pkgs.findutils}/bin/find ${config.home.homeDirectory}/.config/JetBrains \
  #     -type d \
  #     -wholename '*/JetBrains/*/keymaps' '!' -path '*/settingsSync/*' \
  #     -exec cp -f "${cfg-meta.paths.users}/pavel/hm/keymap-idea-linux.xml" {}/Magen.xml \;
  # '';
}

