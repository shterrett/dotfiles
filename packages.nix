let
  pkgs = import /Users/stuart/src/portal-suite {};
in
  [ # These are required by nix itself
    pkgs.pkgs.cacert
    pkgs.pkgs.nix

    # Tools that we use; these will be pinned to the same versions as run in CI
    pkgs.pkgs.minio
    pkgs.pkgs.postgresqlWithPackages
    pkgs.pkgs.stack
    pkgs.pkgs.yarn
    pkgs.pkgs.nodejs-12_x

    # Any software pinned in this version of nixpkgs can be installed this way.
    # Here are a few examples.
    pkgs.pkgs.fd
    pkgs.pkgs.git
    pkgs.pkgs.neovim
    pkgs.pkgs.ripgrep
    pkgs.pkgs.tree
    pkgs.pkgs.vim
    pkgs.pkgs.zsh
    pkgs.pkgs.kubectl
    pkgs.pkgs.gitAndTools.delta
  ]
