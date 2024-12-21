{ pkgs ? import <nixpkgs> {} }: pkgs.mkShell {

  nativeBuildInputs = with pkgs.buildPackages; [ 
    hy
    python3Full
    python312Packages.hyrule
    python312Packages.toolz
  ];

  shellHook =
    ''
      ns
    '';
}
