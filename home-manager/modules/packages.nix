{pkgs, inputs, ...}:
{
  home.packages = with pkgs; [
    # monitoring
    tree
    inputs.nixvim.packages.${system}.default
    pavucontrol
    neofetch
    nvtopPackages.nvidia
    htop
    firefox
    ripgrep
    imagemagick
    usbutils
  ];
}
