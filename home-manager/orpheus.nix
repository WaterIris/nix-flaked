{...}:
{
  home.username = "iris";
  home.homeDirectory = "/home/iris";
  nixpkgs.config.allowUnfree = true;
  imports = [
    ./modules/default.nix
    ./modules/hyprland.nix
    ./modules/waybar.nix
    ./modules/zsh.nix
    ./modules/wezterm.nix
    ./modules/rofi.nix
    ./modules/hyprpaper.nix
    ./modules/git.nix
    ./modules/direnv.nix
  ];
  programs.home-manager.enable = true;
  systemd.user.startServices = "sd-switch";
  home.stateVersion = "24.11";
}
