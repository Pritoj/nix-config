{

  # Declarative Homebrew configuration for macOS GUI applications
  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "none"; # Changed to "none" to allow slow/manual migration of packages without auto-uninstalling
    };
    casks = [
      "alacritty"
      "android-platform-tools"
      "keepingyouawake"
      "ollama-app"
      "openmtp"
      "rectangle"
      "macfuse"
    ];
  };

}
