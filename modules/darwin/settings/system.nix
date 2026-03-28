{ pkgs, self, ... }: {

  # Nix settings
  # Determinate Nix manages the daemon and nix.conf
  nix.enable = false;

  # Necessary for using flakes on this system.
  nix.settings.experimental-features = "nix-command flakes";

  system = {
    primaryUser = "groot";
    # Set Git commit hash for darwin-version.
    configurationRevision = self.rev or self.dirtyRev or null;
    # backwards compat; don't change
    stateVersion = 5;
  };
}
