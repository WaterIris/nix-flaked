{...}:
{
  home.username = "iris";
  home.homeDirectory = "/home/iris";
  nixpkgs.config.allowUnfree = true;
  imports = [
    ../modules/home-manager/packages.nix
    ../modules/home-manager/hyprland.nix
    ../modules/home-manager/waybar.nix
    ../modules/home-manager/zsh.nix
    ../modules/home-manager/wezterm.nix
    ../modules/home-manager/rofi.nix
    ../modules/home-manager/hyprpaper.nix
    ../modules/home-manager/git.nix
    ../modules/home-manager/direnv.nix
    ../modules/home-manager/bg.nix
  ];
  programs.home-manager.enable = true;
  systemd.user.startServices = "sd-switch";
  home.stateVersion = "24.11";
}
