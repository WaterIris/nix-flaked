{pkgs, inputs, ...}:
{
  home.packages = with pkgs; [
    # monitoring
    inputs.nixvim.packages.${system}.default
    pavucontrol
    neofetch
    nvtopPackages.nvidia
    htop
    firefox
  ];
}
