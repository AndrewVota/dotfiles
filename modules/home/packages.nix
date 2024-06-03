{ inputs, pkgs, ... }: 
{
  home.packages = (with pkgs; [
    google-chrome
    eza                               # ls replacement
    entr                              # perform action when file change
    fd                                # find replacement
    file                              # Show file information 
    fzf                               # fuzzy finder
    gtt                               # google translate TUI
    gtrash                            # rm replacement, put deleted files in system trash
    jdk17                             # java
    lazygit
    cinnamon.nemo-with-extensions     # file manager
    nitch                             # systhem fetch util
    prismlauncher                     # minecraft launcher
    ripgrep                           # grep replacement
    toipe                             # typing test in the terminal
    yazi                              # terminal file manager
    gnome.zenity
    winetricks

    # C / C++
    gcc
    gnumake

    # Python
    python3

    bleachbit                         # cache cleaner
    cmatrix
    gparted                           # partition manager
    ffmpeg
    imv                               # image viewer
    killall
    libnotify
	man-pages					      # extra man pages
    mpv                               # video player
    ncdu                              # disk space
    openssl
    pamixer                           # pulseaudio command line mixer
    pavucontrol                       # pulseaudio volume controle (GUI)
    playerctl                         # controller for media players
    wl-clipboard                      # clipboard utils for wayland (wl-copy, wl-paste)
    cliphist                          # clipboard manager
    poweralertd
    qalculate-gtk                     # calculator
    unzip
    wget
    xdg-utils
    xxd
    inputs.alejandra.defaultPackage.${system}
  ]);
}
