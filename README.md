# NeoVim Configuration
🖋 My nvim configuration

# Prerequisites

- nvim >= 0.6.x
- git >= 2.35.x
- node >= 14.19.x
- npm >= 8.4.x
- xclip >= 0.13.x
- ripgrep >= 13.0.x

# Installation

Create the `.config` folder if it does not exist and enter it.

```sh
cd ~/.config
```

Clone the project

```sh
git clone https://github.com/luisalcarasr/nvim.git
```

Install TypeScript Language Servers (Autocomplete support)

```
sudo npm i -g vscode-langservers-extracted typescript typescript-language-server eslint-language-server
```

Install the plugins

```
:PackerSync
```
