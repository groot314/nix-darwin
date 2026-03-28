{ pkgs, ... }: {
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "groot314";
        email = "1497989+groot314@users.noreply.github.com";
        # signingkey = "~/.ssh/id_ed25519.pub";
      };

      init.defaultBranch = "main";
      pull.rebase = true;

      # Uncomment to enable commit signing:
      # commit.gpgsign = true;
      # gpg.format = "ssh";  # or "openpgp" for GPG
    };

    ignores = [
      ".DS_Store"
      "*.swp"
      "*.swo"
      "*~"
      ".direnv"
      ".envrc"
    ];
  };

  programs.delta = {
    enable = true;
    enableGitIntegration = true;
    options = {
      navigate = true;
      light = false;
      line-numbers = true;
    };
  };
}
