{ ... }:

{
  # Keyboard mapping
  system.keyboard = {
    enableKeyMapping = true;
    remapCapsLockToEscape = true;
  };

  # macOS System Defaults configuration
  system.defaults = {
    # Dock settings
    dock.autohide = true;
    dock.show-recents = false;
    dock.mru-spaces = false;

    # Finder settings
    finder.AppleShowAllExtensions = true;
    finder.FXPreferredViewStyle = "Nlsv";
    finder.ShowPathbar = true;
    finder.ShowStatusBar = true;

    # Trackpad settings
    trackpad.TrackpadThreeFingerDrag = true;
    trackpad.Clicking = true;

    # Keyboard / Vim-friendly settings
    NSGlobalDomain = {
      ApplePressAndHoldEnabled = false;
      KeyRepeat = 2;
      InitialKeyRepeat = 15;
    };
  };
}
