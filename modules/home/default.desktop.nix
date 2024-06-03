{inputs, username, host, ...}: {
  imports =
       [(import ./default.nix)]
    ++ [(import ./rider.nix)];
}
