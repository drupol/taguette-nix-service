{ inputs, ... }:

{
  perSystem =
    { system, ... }:
    {
      _module.args.pkgs = import inputs.nixpkgs {
        inherit system;
        overlays = [
          (final: prev: {
            master = import inputs.nixpkgs-master {
              inherit (final) config;
              inherit system;
            };
          })
          # To remove when the PR is merged
          # See https://github.com/NixOS/nixpkgs/pull/406742
          (final: prev: {
            pr406742 = import inputs.nixpkgs-pr-406742 {
              inherit (final) config;
              inherit system;
            };
          })
        ];
      };
    };
}
