{ lib, ... }:

{
  imports = [
    ./modules/homebrew.nix
    ./modules/system.nix
  ];
  # Nix configuration
  nix.enable = true;
  nix.settings.experimental-features = "nix-command flakes";

  # Platform configuration
  nixpkgs.hostPlatform = "aarch64-darwin";
  nixpkgs.config.allowUnfreePredicate =
    pkg:
    builtins.elem (lib.getName pkg) [
      "antigravity-cli"
    ];

  # Define user account details for nix-darwin
  users.users.pritojs = {
    name = "pritojs";
    home = "/Users/pritojs";
  };

  # Configure primary user for system defaults migration
  system.primaryUser = "pritojs";

  # Used for backwards compatibility
  system.stateVersion = 6;
}
