# NeoVim Configuration
🖋 My nvim configuration

# Prerequisites

- NeoVim >= 0.3.x
- Git >= v2.20.1
- Node >= v12.12
- Ripgrep >= v0.10.0
- Python >= v3.7.3
- pynvim >= 0.4.2

# Installation

Create the `.config` folder if it does not exist and enter it.

```sh
cd ~/.config
```

Clone the project

```sh
git clone https://github.com/luisalcarasr/nvim.git
```

Install the plugins

```
:PlugInstall
```

Install Language Server (Autocomplete support)

```
:CocInstall coc-json coc-tsserver coc-html coc-css
```
