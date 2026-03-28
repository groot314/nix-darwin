{ pkgs, ... }: {
  # here go the darwin preferences and config items
  programs.zsh.enable = true;
  users.users.groot.home = "/Users/groot";
  users.users.groot.shell = pkgs.zsh;

  # Platform configuration
  nixpkgs.hostPlatform = "aarch64-darwin";

  imports = [
    ./packages.nix
    ./settings/homebrew.nix
    ./settings/environment.nix
    ./settings/system.nix
  ];
}

