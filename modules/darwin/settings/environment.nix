{pkgs, ...}: {
  users.users.groot = {
    name = "groot";
    home = "/Users/groot";
  };
  environment = {
    variables = {
      XDG_DATA_HOME = "$HOME";
      EDITOR = "nvim";
      TERMINAL = "ghostty";
    };
    shells = with pkgs; [bash zsh];
    systemPath = ["/usr/local/bin"];
  };
}
