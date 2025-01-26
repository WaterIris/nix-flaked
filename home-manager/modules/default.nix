{pkgs, inputs, ...}:
{
  home.packages = with pkgs; [
    # monitoring
    inputs.nixvim.packages.${system}.default
    neofetch
    nvtopPackages.nvidia
    htop
    firefox
  ];
}
