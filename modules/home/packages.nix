{ inputs, pkgs, ... }: 
{
  home.packages = (with pkgs; [
    # Programs
    google-chrome
    cinnamon.nemo-with-extensions     # file manager
    lazygit                           # git tui
    nitch                             # systhem fetch util
    toipe                             # typing test in the terminal
    obsidian
    yazi                              # terminal file manager

    # Utilities
    eza                               # ls replacement
    entr                              # perform action when file change
    fd                                # find replacement
    file                              # Show file information 
    fzf                               # fuzzy finder
    ripgrep                           # grep replacement
	man-pages					      # extra man pages
    openssl
    pamixer                           # pulseaudio command line mixer
    pavucontrol                       # pulseaudio volume control (GUI)
    playerctl                         # controller for media players
    wl-clipboard                      # clipboard utils for wayland (wl-copy, wl-paste)
    cliphist                          # clipboard manager
    unzip
    wget
    xdg-utils
    inputs.alejandra.defaultPackage.${system}

    # Languages
    gcc
    gnumake
    luajit
    lua-language-server
    stylua



    # == OLD ==
    # gtt                               # google translate TUI
    # gtrash                            # rm replacement, put deleted files in system trash
    # jdk17                             # java
    # prismlauncher                     # minecraft launcher
    # python3
    # gnome.zenity
    # winetricks
    # bleachbit                         # cache cleaner
    # cmatrix
    # gparted                           # partition manager
    # ffmpeg
    # imv                               # image viewer
    # killall
    # libnotify
    # mpv                               # video player
    # ncdu                              # disk space
    # poweralertd
    # qalculate-gtk                     # calculator
    # xxd
  ]);
}
