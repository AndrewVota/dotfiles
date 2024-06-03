{inputs, username, host, ...}: {
  imports =
    [(import ./bat.nix)]                       # better cat command
    ++ [(import ./btop.nix)]                      # resouces monitor 
    ++ [(import ./floorp/floorp.nix)]             # firefox based browser
    ++ [(import ./git.nix)]                       # version control
    ++ [(import ./gtk.nix)]                       # gtk theme
    ++ [(import ./hyprland)]                      # window manager
    ++ [(import ./kitty.nix)]                     # terminal
    ++ [(import ./mako.nix)]                      # notification deamon
    ++ [(import ./micro.nix)]                     # nano replacement
    ++ [(import ./nvim.nix)]                      # neovim editor
    ++ [(import ./packages.nix)]                  # other packages
    ++ [(import ./retroarch.nix)]
    ++ [(import ./rider.nix)]                     # C# JetBrain editor
    ++ [(import ./scripts/scripts.nix)]           # personal scripts
    ++ [(import ./starship.nix)]                  # shell prompt
    ++ [(import ./swaylock.nix)]                  # lock screen
    ++ [(import ./waybar)]                        # status bar
    ++ [(import ./wofi.nix)]                      # launcher
    ++ [(import ./zsh.nix)];                      # shell
}
