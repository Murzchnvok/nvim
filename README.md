<h2 align="center">My simple nvim config.</h2>
<div align="center">
    <img src="https://github.com/Murzchnvok/nvim/blob/main/screenshots/nvim.png?raw=true" />
    <img src="https://github.com/Murzchnvok/nvim/blob/main/screenshots/golang.png?raw=true" />
    <img src="https://github.com/Murzchnvok/nvim/blob/main/screenshots/python.png?raw=true" />
    <img src="https://github.com/Murzchnvok/nvim/blob/main/screenshots/rust.png?raw=true" />
</div>

## Dependencies

> Maybe I'm missing something!

- [Black](https://github.com/psf/black) the best Python code formatter.
- [iSort](https://pypi.org/project/isort/) to sort imports in Python.
- [Debugpy](https://github.com/microsoft/debugpy/) Python debugger.
- [Pyright](https://www.npmjs.com/package/pyright) do some Python stuff.
- [Clang Format](https://pypi.org/project/clang-format/) C code formatter.
- [Delve](https://github.com/go-delve/delve) Golang debugger.
- [Rust Analyzer](https://rust-analyzer.github.io/manual.html#rust-analyzer-language-server-binary) provides great features for Rust code.
- [Stylua](https://github.com/johnnymorganz/stylua) Lua code formatter.
- [Prettier](https://prettier.io/) code formatter with support for JavaScript, TypeScript, Json, HTML, CSS, ...
- [Emmet-ls](https://github.com/aca/emmet-ls) emmet support based on LSP.
- [TypeScript Language Server](https://github.com/typescript-language-server/typescript-language-server) TypeScript & JavaScript Language Server.
- [VSCode Language Servers Extracted](https://www.npmjs.com/package/vscode-langservers-extracted) HTML/CSS/JSON language servers extracted from vscode.
- [Tailwind CSS IntelliSense](https://github.com/tailwindlabs/tailwindcss-intellisense) autocomplete, syntax highlighting, and linting.

### Cargo

```bash
cargo install stylua
```

### Go 

```bash
go install github.com/go-delve/delve/cmd/dlv@latest
```

```bash
go install golang.org/x/tools/gopls@latest
```

```bash
go install golang.org/x/tools/cmd/goimports@latest
```

### NPM

```bash
npm install -g cssmodules-language-server emmet-ls pyright prettier typescript typescript-language-server vscode-langservers-extracted @tailwindcss/language-server
```

### PIP

```bash
pip3 install -U black isort debugpy clang-format
```

Check how to install [Rust Analyzer](https://rust-analyzer.github.io/manual.html#rust-analyzer-language-server-binary).
