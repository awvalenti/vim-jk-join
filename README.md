# vim-jk-join
Intuitive and repeatable line joining

## Features
- Downwards/upwards joining
- Cursor retaining
- Easy line counting
- Repeating actions (using [vim-repeat](https://github.com/tpope/vim-repeat))

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
Default mappings are:
```vim
nmap J  <Plug>JkJoinJ
nmap gJ <Plug>JkJoinGJ
nmap K  <Plug>JkJoinK
nmap gK <Plug>JkJoinGK
```

To skip them and map as you prefer:
```vim
let g:jk_join_manual_mapping = v:true
```

Samples:
- Only `K`:
  ```vim
  nmap K <Plug>JkJoinK
  ```
- Only `gJ` and `gK`:
  ```vim
  nmap gJ <Plug>JkJoinGJ
  nmap gK <Plug>JkJoinGK
  ```
- `K` mapped to `gK`
  ```vim
  nmap gK <Plug>JkJoinK
  ```

Note that `k` in `JkJoin` is lowercase!

## Rationale
- Doesn't Vim already have `J` and `gJ`?
- Couldn't I simply `nnoremap K kJ` to have `K`?

Yep, but you'd lose:
- `3J` == `JJJ` (would act as `JJ`)
- `3K` == `KKK` (would move three lines above and join once)
- `.` to repeat joins
- Cursor retaining

## Appreciation
If you find this plugin useful, please [leave me a star up there ⭐](#top)!

