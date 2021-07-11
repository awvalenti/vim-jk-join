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
Usual mappings are:
```vim
nmap J  <Plug>JkJoinJ
nmap gJ <Plug>JkJoinGJ
nmap K  <Plug>JkJoinK
nmap gK <Plug>JkJoinGK
```

You can skip them to do custom mappings (samples below):
```vim
let g:jk_join_manual_mapping = v:true
```
Only `K`:
```vim
nmap K <Plug>JkJoinK
```
Only `gJ` and `gK`:
```vim
nmap gJ <Plug>JkJoinGJ
nmap gK <Plug>JkJoinGK
```
The `K` feature, but mapped to `gK`
```vim
nmap gK <Plug>JkJoinK
```

Note that `k` in `JkJoin` is lowercase!

## Rationale
- Doesn't Vim already have `J` and `gJ`?
- Couldn't I simply `nnoremap K kJ` to have `K`?

Yep, but you'd lose:
- `5J` == 5 times `J` (would act as *4* times `JJ`)
- `5K` == 5 times `K` (would move 5 lines above and join *once*)
- `.` to repeat
- Cursor retaining

## Appreciation
If you find this plugin useful, please [leave me a star up there ⭐](#top)!

