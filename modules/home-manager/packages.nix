{pkgs, inputs, ...}:
{
  home.packages = with pkgs; [
    lazydocker
    obsidian
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
    acpi
    spotify
    zip
    unzip
  ];
}
