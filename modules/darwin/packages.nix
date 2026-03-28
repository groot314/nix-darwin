{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    vim
    neovim
    opencode
    go
    nodejs_22
    gh
    direnv
    rustup
  ];
}
