{inputs, username, host, ...}: {
  imports =
    [(import ./packages.nix)]                     # other packages
    ++ [(import ./scripts)]                       # personal scripts
    ++ [(import ./bat.nix)]                       # better cat command
    ++ [(import ./btop.nix)]                      # resouces monitor 
    ++ [(import ./neovim)]                        # neovim editor
    ++ [(import ./git.nix)]                       # version control
    ++ [(import ./gtk.nix)]                       # gtk theme
    ++ [(import ./hyprland)]                      # window manager
    ++ [(import ./kitty.nix)]                     # terminal
    ++ [(import ./mako.nix)]                      # notification deamon
    ++ [(import ./starship.nix)]                  # shell prompt
    ++ [(import ./swaylock.nix)]                  # lock screen
    ++ [(import ./waybar)]                        # status bar
    ++ [(import ./wofi.nix)]                      # launcher
    ++ [(import ./zsh.nix)];                      # shell
    # ++ [(import ./micro.nix)]                   # nano replacement
    # ++ [(import ./rider.nix)]                   # C# JetBrain editor
}
