{
  programs.nixvim.plugins.treesitter = {
    enable = true;
    settings.ensure_installed = [
      "bash"
      "lua"
      "html"
      "css"
      "javascript"
      "typescript"
      "tsx"
      "yaml"
      "toml"
      "json"
      "json5"
      "jq"
      "ruby"
      "go"
      "dockerfile"
      "c"
      "markdown"
      "markdown_inline"
      "nix"
      "smithy"
    ];
    settings.highlight.enable = true;
    settings.indent.enable = true;
  };
}
