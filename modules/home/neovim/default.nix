{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
  };

  home.file."./.config/nvim/" = {
    source = ./nvim;
    recursive = true;
  };

}

# { pkgs, ... }:
# let
#
#   treesitterWithGrammars = (pkgs.vimPlugins.nvim-treesitter.withPlugins (p: [
#     p.bash
#     p.go
#     p.lua
#     p.nix
#   ]));
#
#   treesitter-parsers = pkgs.symlinkJoin {
#     name = "treesitter-parsers";
#     paths = treesitterWithGrammars.dependencies;
#   };
# in
# {
#   # home.packages = with pkgs; [
#   #   ripgrep
#   #   fd
#   #   lua-language-server
#   # ];
#
#   programs.neovim = {
#     enable = true;
#     package = pkgs.neovim;
#
#     plugins = [
#       treesitterWithGrammars
#     ];
#   };
#
#   home.file."./.config/nvim/" = {
#     source = ./nvim;
#     recursive = true;
#   };
#
#   # home.file."./.config/nvim/lua/kidsan/init.lua".text = ''
#   #   require("kidsan.set")
#   #   require("kidsan.remap")
#   #   vim.opt.runtimepath:append("${treesitter-parsers}")
#   # '';
#
#   # Treesitter is configured as a locally developed module in lazy.nvim
#   # we hardcode a symlink here so that we can refer to it in our lazy config
#   # home.file."./.local/share/nvim/nix/nvim-treesitter/" = {
#   #   recursive = true;
#   #   source = treesitterWithGrammars;
#   # };
#
# }
