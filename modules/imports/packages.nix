{
  perSystem =
    {
      self',
      ...
    }:
    {
      packages.default = self'.packages.taguette;
    };
}
