{pkgs, ...}: let
  wallpaper-change = pkgs.writeShellScriptBin "wallpaper-change" (builtins.readFile ./scripts/wallpaper-change.sh);
  wallpaper-picker = pkgs.writeShellScriptBin "wallpaper-picker" (builtins.readFile ./scripts/wallpaper-picker.sh);
  
  runbg = pkgs.writeShellScriptBin "runbg" (builtins.readFile ./scripts/runbg.sh);
  
  toggle_blur = pkgs.writeScriptBin "toggle_blur" (builtins.readFile ./scripts/toggle_blur.sh);
  toggle_opacity = pkgs.writeScriptBin "toggle_opacity" (builtins.readFile ./scripts/toggle_opacity.sh);
  
  maxfetch = pkgs.writeScriptBin "maxfetch" (builtins.readFile ./scripts/maxfetch.sh);
  
  compress = pkgs.writeScriptBin "compress" (builtins.readFile ./scripts/compress.sh);
  extract = pkgs.writeScriptBin "extract" (builtins.readFile ./scripts/extract.sh);
  
  shutdown-script = pkgs.writeScriptBin "shutdown-script" (builtins.readFile ./scripts/shutdown-script.sh);
  
  vm-start = pkgs.writeScriptBin "vm-start" (builtins.readFile ./scripts/vm-start.sh);

  ascii = pkgs.writeScriptBin "ascii" (builtins.readFile ./scripts/ascii.sh);
in {
  home.packages = with pkgs; [
    wallpaper-change
    wallpaper-picker
    
    runbg
  
    toggle_blur
    toggle_opacity

    maxfetch

    compress
    extract

    shutdown-script
    
    vm-start

    ascii
  ];
}
