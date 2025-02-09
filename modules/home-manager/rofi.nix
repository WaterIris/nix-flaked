{
  pkgs,
  ...
}: {
  programs.rofi = {
    enable = true;
    theme = "${pkgs.catppuccin}/rofi/catppuccin-macchiato.rasi";
    package = pkgs.rofi-wayland;
    plugins = [ 
      pkgs.rofi-power-menu
    ];
    extraConfig = {
      modes = "power-menu:${pkgs.rofi-power-menu}/bin/rofi-power-menu --choices=shutdown/reboot/suspend";
    };
    pass.enable = true;
  };
}
