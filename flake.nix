{
  description = "eloop.org conference website";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixpkgs-unstable/nixexprs.tar.zst";
  };

  outputs = inputs: {
    packages = builtins.mapAttrs (system: pkgs: {
      default = pkgs.stdenvNoCC.mkDerivation {
        name = "eloop.org";
        src = pkgs.lib.fileset.toSource {
          root = ./.;
          fileset = pkgs.lib.fileset.unions [
            ./config.toml
            ./content
            ./sass
            ./static
            ./templates
          ];
        };
        nativeBuildInputs = [ pkgs.zola ];
        # zola builds an http client at startup even when nothing is fetched
        SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
        buildPhase = ''
          runHook preBuild
          zola build --output-dir $out
          runHook postBuild
        '';
        dontInstall = true;
      };
    }) inputs.nixpkgs.legacyPackages;

    devShells = builtins.mapAttrs (system: pkgs: {
      default = pkgs.mkShellNoCC { packages = [ pkgs.zola ]; };
    }) inputs.nixpkgs.legacyPackages;
  };
}
