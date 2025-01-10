{ pkgs, ... }: {
  boot.kernelPackages = pkgs.linuxKernel.packages.linux_6_12;

  boot.kernelPatches = [
    {
      # https://github.com/NixOS/nixpkgs/issues/350679
      name = "rtl8125";
      patch = pkgs.fetchurl {
        url =
          "https://github.com/torvalds/linux/commit/f75d1fbe7809bc5ed134204b920fd9e2fc5db1df.patch";
        sha256 = "sha256-5E2TAGDLQnEvQv09Di/RcMM/wYosdjApOaDgUhIHtYM=";
      };
    }
    {
      # https://lore.kernel.org/netdev/d49e275f-7526-4eb4-aa9c-31975aecbfc6@gmail.com/#related
      name = "rtl8125-hack";
      patch = pkgs.fetchurl {
        url =
          "https://gist.githubusercontent.com/pshirshov/0896092630775b700c718e110662439a/raw/7d7dbbc52e63f4ee3beff5c6b23393ee07625287/rtl.patch";
        sha256 = "sha256-AFP3EtuYJt5NCzFYRPL/6ePS+O3aNtifZTS5y0ZSv1M=";
      };
    }
  ];

}
