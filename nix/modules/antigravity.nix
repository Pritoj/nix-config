{ pkgs, ... }:

{

  home.packages = with pkgs; [
    antigravity-cli
  ];

  programs.antigravity-cli = {
    enable = true;
    settings = {
      altScreenMode = "default";
      artifactReviewPolicy = "asks-for-review";
      colorScheme = "terminal";
      toolPermission = "proceed-in-sandbox";
      showTips = true;
      showFeedbackSurvey = false;
      enableTelemetry = false;
    };
  };

}
