{...}:
{
  home.username = "iris";
  home.homeDirectory = "/home/iris";
  nixpkgs.config.allowUnfree = true;
  imports = [
    ../modules/packages.nix
    ../modules/hyprland/hyprland.nix
    ../modules/hyprland/hyprpaper.nix
    ../modules/waybar.nix
    ../modules/zsh.nix
    ../modules/wezterm.nix
    ../modules/rofi.nix
    ../modules/git.nix
    ../modules/direnv.nix
    ../modules/bg.nix
    ../modules/dunst_min.nix
    ../modules/bash.nix
    ../modules/tmux.nix
  ];

  programs.home-manager.enable = true;
  systemd.user.startServices = "sd-switch";
  home.stateVersion = "24.11";
}
