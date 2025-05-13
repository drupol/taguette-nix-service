# Taguette

A [Nix flake] to locally spawn the following services:

- [Taguette]

The services are spawned using [`process-compose`].

The data are kept in the current directory (`./data`) where you run the command.

To run it:

```shell
nix run github:drupol/taguette-nix-service
```

The following services will be available at the following addresses:

- [Taguette]: http://localhost:7465

[`process-compose`]: https://github.com/F1bonacc1/process-compose
[Taguette]: https://www.taguette.org/
