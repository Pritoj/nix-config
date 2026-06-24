{ ... }:

{
  # Nix configuration
  nix.enable = true;
  nix.settings.experimental-features = "nix-command flakes";

  # Platform configuration
  nixpkgs.hostPlatform = "aarch64-darwin";

  # Define user account details for nix-darwin
  users.users.pritojs = {
    name = "pritojs";
    home = "/Users/pritojs";
  };

  # Configure primary user for system defaults migration
  system.primaryUser = "pritojs";

  # Example system settings (adjust as preferred)
  system.defaults = {
    dock.autohide = true;
    finder.AppleShowAllExtensions = true;
  };

  # Used for backwards compatibility
  system.stateVersion = 6;
}
