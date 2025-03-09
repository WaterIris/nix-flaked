{config, lib, ...}:
{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings ={
      add_newline = false;
      directory = {
        truncation_length = 0;
        truncate_to_repo = false;
      };
      character = {
        success_symbol = "[](#89b4fa)";
        error_symbol = "[](#f38ba8)";
      };
      format = lib.concatStrings [
      "$hostname"
      "$directory"
      "$git_branch"
      "$git_commit"
      "$git_state"
      "$git_metrics"
      "$git_status"
      # "$nix_shell"
      "$line_break"
      "$character"];
      };
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      vi = "nvim";     
      ll = "ls -l";
      ls = "ls --color";
    };
    history = {
      size = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
    };
  };
}
