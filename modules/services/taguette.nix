{
  inputs,
  config,
  ...
}:
{
  imports = [ inputs.process-compose-flake.flakeModule ];

  perSystem =
    {
      pkgs,
      ...
    }:
    {
      process-compose.taguette = {
        imports = [
          inputs.services-flake.processComposeModules.default
          config.flake.processComposeModules.taguette
        ];

        services.taguette ={
          enable = true;
          package = pkgs.pr406742.taguette;
        };
      };
    };
}
