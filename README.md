# Taguette

A Nix flake to locally spawn the following services:

- [Taguette]

The service is spawned using [`process-compose`] thanks to [`services-flakes`].

The data are kept in the current directory (`./data`) where you run the command.

To run it:

```shell
nix run github:drupol/taguette-nix-service
```

The following services will be available at the following addresses:

- Taguette: http://localhost:7465

[`process-compose`]: https://github.com/F1bonacc1/process-compose
[`services-flakes`]: https://github.com/juspay/services-flake/
[Taguette]: https://www.taguette.org/
