{...}:
{
  programs.wezterm = {
    enable = true;
    extraConfig = /* lua */ ''
      local wezterm = require 'wezterm'
      local config = {}
      config.font = wezterm.font ('JetBrainsMono Nerd Font', {weight = "Bold", italic = false})
      config.font_size = 14
      colors, metadata = wezterm.color.load_base16_scheme(".config/wezterm/rose.yaml")
      config.colors = colors
      config.enable_tab_bar = false
      config.window_padding = {bottom = 0, top = 0}
      config.default_prog = { "zsh" }
      return config
    '';
  };

  home.file.".config/wezterm/rose.yaml" = {
    source = ./rose.yaml;
  };
}
