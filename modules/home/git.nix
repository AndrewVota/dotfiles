{ pkgs, ... }: 
{
  programs.git = {
    enable = true;
    
    userName = "AndrewVota";
    userEmail = "andrew@vota.cc";
    
    extraConfig = { 
      init.defaultBranch = "main";
      credential.helper = "store";
    };
  };

  # home.packages = [ pkgs.gh pkgs.git-lfs ];
}
