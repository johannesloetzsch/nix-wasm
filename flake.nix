{
  description = "Rust with WebAssembly";

  inputs = {
    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixpkgs.url = "nixpkgs/nixos-23.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, fenix, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
          f = with fenix.packages.${system}; combine [
            stable.toolchain
            targets.wasm32-unknown-unknown.stable.rust-std
          ];
        in
          {
            devShells.default =
              pkgs.mkShell {
                name = "rust-wasm-final-attempt";

                packages = with pkgs; [
                  f
                  llvmPackages.bintools # <-- change here
                  nodejs_21
                  wasm-pack
                ];

                CARGO_TARGET_WASM32_UNKNOWN_UNKNOWN_LINKER = "lld"; # <-- change here

                shellHook = ''
                  npm i
                  npm start
                '';
              };
          }
      );
}
