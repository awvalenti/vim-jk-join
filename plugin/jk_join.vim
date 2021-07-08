scriptversion 4

if exists('g:loaded_jk_join') || &compatible
  finish
endif
let g:loaded_jk_join = v:true

function! s:JkJoin(plug_map_name, join_cmd)
  let l:count1 = v:count1
  exe 'norm! m`'
  exe a:join_cmd
  exe 'norm! ``'
  silent! call repeat#set(a:plug_map_name, l:count1)
endfunction

function! <SID>JkJoinJ()
  call s:JkJoin("\<Plug>JkJoinJ", 'j' .. (v:count1 + 1))
endfunction

function! <SID>JkJoinK()
  call s:JkJoin("\<Plug>JkJoinK", max([1, line('.') - v:count1]) .. ',.j')
endfunction

nnoremap <Plug>JkJoinJ <Cmd>call <SID>JkJoinJ()<CR>
nnoremap <Plug>JkJoinK <Cmd>call <SID>JkJoinK()<CR>

nmap K <Plug>JkJoinK
nmap J <Plug>JkJoinJ

