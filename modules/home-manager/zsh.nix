{ pkgs, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;

    # Source our custom zshrc file
    initContent = builtins.readFile ./config/zshrc;
  };
}
