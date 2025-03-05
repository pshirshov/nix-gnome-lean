rec {
  const = import ./config.nix;

  smind-nixos-imports = builtins.concatLists [
    (import ./lib/_imports.nix)
    (import ./modules/nixos/_imports.nix)
    (import ./roles/nixos/_imports.nix)
  ];

  smind-darwin-imports = builtins.concatLists [
    (import ./lib/_imports.nix)
    (import ./modules/darwin/_imports.nix)
    (import ./roles/darwin/_imports.nix)
  ];

  cfg-const = const.const;

  smind-hm = {
    state-version-hm = cfg-const.state-version-hm;

    imports = builtins.concatLists [
      (import ./lib/_imports.nix)
      (import ./modules/hm/_imports.nix)
      (import ./roles/hm/_imports.nix)
    ];
  };

  make = { self, inputs, arch }: hostname:
    let
      pkgs = inputs.nixpkgs.legacyPackages."${arch}";

      paths = {
        root = "${self}";
        pkg = "${self}/pkg";
        private = "${self}/private";
        secrets = "${self}/private/secrets";
        lib = "${self}/lib";
        modules = "${self}/modules";
        modules-hm = "${self}/modules/hm";
        modules-nix = "${self}/modules/nix";
        users = "${self}/users";
      };


      cfg-packages = const.cfg-packages {
        inherit inputs;
        inherit pkgs;
        inherit arch;
      };

      cfg-meta = {
        inherit arch;
        inherit paths;
        inherit inputs;
        isLinux = pkgs.lib.hasSuffix "-linux" arch;
        isDarwin = pkgs.lib.hasSuffix "-darwin" arch;
        hostname = hostname;
        state-version-nixpkgs = cfg-const.state-version-nixpkgs;
      };


      cfg-platform =
        if cfg-meta.isLinux then {
          generator = inputs.nixpkgs.lib.nixosSystem;
          flake-modules = smind-nixos-imports ++ [
            inputs.lanzaboote.nixosModules.lanzaboote
            inputs.nix-apple-fonts.nixosModules
          ];
        } else {
          generator = inputs.nixpkgs.lib.nixosSystem;
          flake-modules = smind-darwin-imports ++ [

          ];
        };

      cfg-flakes = {
        pkgs7mind = inputs.smind.legacyPackages."${arch}";
        nix-apple-fonts = inputs.nix-apple-fonts.packages."${arch}";
      };

      cfg-hm-modules = [
        inputs.agenix.homeManagerModules.default
      ];

      specialArgs = pkgs.lib.fix (self: {
        inherit smind-hm;
        inherit cfg-meta;
        inherit cfg-flakes;
        inherit cfg-packages;
        inherit cfg-hm-modules;
        inherit inputs;
        inherit cfg-const;
        specialArgsSelfRef = self;
        import_if_exists = path: if builtins.pathExists path then import path else { }; # for some reason I can't add this into lib
      });
    in
    {
      name = "${hostname}";
      value = cfg-platform.generator
        {
          inherit specialArgs;
          system = "${arch}";
          modules = cfg-platform.flake-modules ++ [
            inputs.home-manager.nixosModules.home-manager

            inputs.agenix.nixosModules.default
            inputs.agenix-rekey.nixosModules.default

            ./hosts/${hostname}/cfg-${hostname}.nix
          ];
        };
    };


  # make-nixos = { self, inputs, arch }: hostname:
  #   let
  #     pkgs = inputs.nixpkgs.legacyPackages."${arch}";

  #     paths = {
  #       root = "${self}";
  #       pkg = "${self}/pkg";
  #       private = "${self}/private";
  #       secrets = "${self}/private/secrets";
  #       lib = "${self}/lib";
  #       modules = "${self}/modules";
  #       modules-hm = "${self}/modules/hm";
  #       modules-nix = "${self}/modules/nix";
  #       users = "${self}/users";
  #     };


  #     cfg-packages = const.cfg-packages {
  #       inherit inputs;
  #       inherit pkgs;
  #       inherit arch;
  #     };

  #     cfg-meta = {
  #       inherit arch;
  #       inherit paths;
  #       inherit inputs;
  #       isLinux = true;
  #       isDarwin = false;
  #       hostname = hostname;
  #       state-version-nixpkgs = cfg-const.state-version-nixpkgs;
  #     };

  #     cfg-flakes = {
  #       pkgs7mind = inputs.smind.legacyPackages."${arch}";
  #       nix-apple-fonts = inputs.nix-apple-fonts.packages."${arch}";
  #     };

  #     cfg-hm-modules = [
  #       inputs.agenix.homeManagerModules.default
  #     ];


  #     specialArgs = pkgs.lib.fix (self: {
  #       inherit smind-hm;
  #       inherit cfg-meta;
  #       inherit cfg-flakes;
  #       inherit cfg-packages;
  #       inherit cfg-hm-modules;
  #       inherit inputs;
  #       inherit cfg-const;
  #       specialArgsSelfRef = self;
  #       import_if_exists = path: if builtins.pathExists path then import path else { }; # for some reason I can't add this into lib
  #     });
  #   in
  #   {
  #     name = "${hostname}";
  #     value = inputs.nixpkgs.lib.nixosSystem
  #       {
  #         inherit specialArgs;
  #         system = "${arch}";
  #         modules = smind-nixos-imports ++ [
  #           inputs.lanzaboote.nixosModules.lanzaboote
  #           inputs.nix-apple-fonts.nixosModules
  #           inputs.home-manager.nixosModules.home-manager

  #           inputs.agenix.nixosModules.default
  #           inputs.agenix-rekey.nixosModules.default

  #           ./hosts/${hostname}/cfg-${hostname}.nix
  #         ];
  #       };
  #   };

  make-nixos-x86_64 = { inputs, self }: (make {
    inherit inputs;
    inherit self;
    arch = "x86_64-linux";
  });

}
