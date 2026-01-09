<h2 align="center">Simple nvim (0.12+) setup.</h2>
<div align="center">
    <img src="https://github.com/Murzchnvok/nvim/blob/main/screenshots/nvim.png?raw=true" />
</div>

> My old nvim setup was kinda of a mess, this time I'll try to keep things more simple and organized.
> Also this repo is a backup for myself, but if you wish to use it check the dependencies below.
> Gruvbox 🤍

#### ToDo
- [ ] setup debug things

## Dependencies
> [mini.nvim](https://nvim-mini.org/mini.nvim/) is probably one of my favorite plugin for nvim, I recommend you check it out if you never used it.

### Code Formatter
> Format code on save using [conform.nvim](https://github.com/stevearc/conform.nvim).
> Formatters can be installed with [mason.nvim](https://github.com/mason-org/mason.nvim) or with other package manager like pacman.

#### Lua [stylua](https://github.com/johnnymorganz/stylua)

```bash
:MasonInstall stylua
```

#### Python [black](https://github.com/psf/black) and [isort](https://pypi.org/project/isort/)

```bash
:MasonInstall black isort
```

#### Rust [rustfmt](https://github.com/rust-lang/rustfmt)

```bash
:MasonInstall rustfmt
```

### LSP Language Servers
> Language servers are enabled by default with [mason-lspconfig](https://github.com/mason-org/mason-lspconfig)

#### Lua [lua_ls](https://github.com/LuaLS/lua-language-server)

```bash
:LspInstall lua_ls
```

#### Python [pyright](https://github.com/microsoft/pyright)

```bash
:LspInstall pyright
```

#### Rust [rust_analyzer](https://github.com/rust-lang/rust-analyzer)

```bash
:LspInstall rust_analyzer
```
