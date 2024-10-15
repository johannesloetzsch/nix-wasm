# NixFlake + [wasm-pack](https://github.com/rustwasm/wasm-pack) Hello World

## Usage

```sh
nix develop
```

…it should open a browser and print hello world to the console…


## About

It is based on the [wasm-pack tutorial](https://rustwasm.github.io/docs/wasm-pack/tutorials/hybrid-applications-with-webpack/using-your-library.html)

```sh
npm init rust-webpack my-app
```

and the flake from [https://jordankaye.dev/posts/rust-wasm-nix/](https://jordankaye.dev/posts/rust-wasm-nix/)


## Alternatives

### [wasm-bindgen](https://rustwasm.github.io/docs/wasm-bindgen/)
[Example + flake.nix](https://github.com/tomhoule/rust-nix-wasm32-unknown-unknown-example?tab=readme-ov-file) + [Tutorial](https://www.tomhoule.com/2021/building-rust-wasm-with-nix-flakes/)

### [wabt](https://github.com/WebAssembly/wabt) + [wasmtime](https://docs.wasmtime.dev/) + [wasmedge](https://wasmedge.org/)

[Example + flake.nix](https://github.com/DeterminateSystems/nix-wasm-example) + [Post](https://determinate.systems/posts/nix-wasm/)

```sh
nix run github:DeterminateSystems/nix-wasm-example#hello-wasmtime-exec
nix run github:DeterminateSystems/nix-wasm-example#hello-wasmedge-exec
```

### [cargo-web](https://github.com/koute/cargo-web) + [emscripten](https://emscripten.org/docs/compiling/WebAssembly.html)
[Example + shell.nix](https://gitlab.com/ThibaultLemaire/rust-sdl-canvas-wasm) + [Demo](https://thibaultlemaire.gitlab.io/rust-sdl-canvas-wasm/)
