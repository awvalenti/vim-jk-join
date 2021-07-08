# vim-jk-join
Intuitive and repeatable line joining with J and K

## Features
- Upwards joining using `K`
- Keep cursor position
- Repeat action using `.` (if `vim-repeat` is available)

## Installation
If using [vim-plug](https://github.com/junegunn/vim-plug), add the following to your `vimrc` or `gvimrc`:
```vim
call plug#begin()
" ...
Plug 'awvalenti/vim-jk-join'
" ...
call plug#end()
```

For other plugin managers, please check their documentation,
or take a look at
[Vim 8's native plugin system](https://duckduckgo.com/?t=ffab&q=vim+native+plugin+management&ia=web).

## Usage
- `J` joins downwards (originally, it'd lost cursor position)
- `K` joins upwards
- `3J` joins up to 3 lines below (originally, 2 lines below)
- `.` to repeat last join

## Appreciation
If you find this plugin useful, please [leave me a star up there ⭐](#top)!

## TODO Make mappings configurable
