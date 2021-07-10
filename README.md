# vim-jk-join
Intuitive and repeatable line joining

## Features
- Upwards joining
- Remember cursor
- Easy line numbering
- Repeat action (using [vim-repeat](https://github.com/tpope/vim-repeat))

## Installation
If using [vim-plug](https://github.com/junegunn/vim-plug), add the following to `vimrc`:
```vim
call plug#begin()
" ...
Plug 'tpope/vim-repeat' " Optional dependency, enables repetition with '.'
Plug 'awvalenti/vim-jk-join'
" ...
call plug#end()
```

For other plugin managers, please check their documentation,
or take a look at
[native plugin system](https://duckduckgo.com/?t=ffab&q=vim+native+plugin+management&ia=web).

## Usage
- `[count]J` joins `count` lines downwards changing spaces
- `[count]K` joins `count` lines upwards changing spaces
- `[count]gJ` joins `count` lines downwards keeping spaces
- `[count]gK` joins `count` lines upwards keeping spaces
- `.` repeats last join

## Appreciation
If you find this plugin useful, please [leave me a star up there ⭐](#top)!

## TODO
- Make mappings configurable

