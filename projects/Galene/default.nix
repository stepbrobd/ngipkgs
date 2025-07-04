{
  lib,
  pkgs,
  sources,
  ...
}@args:
{
  metadata = {
    summary = "Galene is a self-hosted video conferencing server. It features advanced networking and video algorithms and automatic subtitling.";
    subgrants = [
      "Galene"
    ];
  };

  nixos.modules.services = {
    galene = {
      name = "galene";
      module = lib.moduleLocFromOptionString "services.galene";
      examples.galene = {
        module = ./example.nix;
        description = "";
        tests.basic.module = import ./test.nix args;
      };
      links = {
        build = {
          text = "Galene Installation";
          url = "https://galene.org/INSTALL.html";
        };
        test = {
          text = "Usage Instructions";
          url = "https://galene.org/README.html";
        };
      };
    };
  };
}
