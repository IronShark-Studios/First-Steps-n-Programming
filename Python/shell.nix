{ pkgs ? import <nixpkgs> {} }: pkgs.mkShell {

  nativeBuildInputs = with pkgs.buildPackages; [ 
    python3Full
    cowsay
  ];

  shellHook =
    ''
      cowsay "Python Shell"
      sleep 5
    '';
}
