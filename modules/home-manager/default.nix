{ pkgs, ... }: {
  imports = [
    ./zsh.nix
    ./git.nix
  ];

  home = {
    username = "groot";
    homeDirectory = "/Users/groot";
    stateVersion = "25.11";

    file.".p10k.zsh".source = ./config/p10k.zsh;
  };
}

