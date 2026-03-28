# You will still need to install Brew this is the line on https://brew.sh
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
{ pkgs, ... }: {
  homebrew = {
    brewPrefix = "/opt/homebrew/bin";
    enable = true;
    caskArgs.no_quarantine = true;
    global = {
      brewfile = true;
    };
    casks = [
    ];
    taps = [
    ];
    brews = [
      "kubernetes-cli"
      "pgcli"
      "tmux"
    ];

    extraConfig = ''
    '';
  };
}

