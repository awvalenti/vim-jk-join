# vim-jk-join
Intuitive and repeatable line joining

## Features
- Down/upwards joining
- Preserves cursor
- Easy line counting
- Repeats actions (using [vim-repeat](https://github.com/tpope/vim-repeat))

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

### Default
- `[count]J` joins `count` lines downwards, changing spaces
- `[count]gJ` joins `count` lines downwards, preserving spaces
- `[count]K` joins `count` lines upwards, changing spaces
- `[count]gK` joins `count` lines upwards, preserving spaces
- `.` repeats last join

### Customized
```vim
" Prevents jk-join mapping any keys
let g:jk_join_manual_mapping = v:true
```

- I'd like to use only `K`
  ```vim
  nmap K <Plug>JkJoinK
  ```
- I'd like to use only `gJ` and `gK`
  ```vim
  nmap gJ <Plug>JkJoinGJ
  nmap gK <Plug>JkJoinGK
  ```
- I like the `K` feature, but I'd rather have it mapped to `gK`
  ```vim
  nmap gK <Plug>JkJoinK
  ```

## Rationale
Doesn't Vim already have `J` and `gJ`? Can't I simply add
`nnoremap K kJ` to my `vimrc` to have `K`?

You could, but you'd lose:
- `3K` to join current + three lines above (it would just go up three lines
  and join once)
- `3J` to join current + three lines below (it would join current + *two*
  lines below)
- Repetition using `.`
- Cursor preservation

## Appreciation
If you find this plugin useful, please [leave me a star up there ⭐](#top)!

