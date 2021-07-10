scriptversion 4

if exists('g:jk_join_loaded') || &compatible
  finish
endif
let g:jk_join_loaded = v:true

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

function! <SID>JkJoinGJ()
  call s:JkJoin("\<Plug>JkJoinGJ", 'j!' .. (v:count1 + 1))
endfunction

function! <SID>JkJoinK()
  call s:JkJoin("\<Plug>JkJoinK", max([1, line('.') - v:count1]) .. ',.j')
endfunction

function! <SID>JkJoinGK()
  call s:JkJoin("\<Plug>JkJoinGK", max([1, line('.') - v:count1]) .. ',.j!')
endfunction

nnoremap <Plug>JkJoinJ  :<C-u>call <SID>JkJoinJ()<CR>
nnoremap <Plug>JkJoinGJ :<C-u>call <SID>JkJoinGJ()<CR>
nnoremap <Plug>JkJoinK  :<C-u>call <SID>JkJoinK()<CR>
nnoremap <Plug>JkJoinGK :<C-u>call <SID>JkJoinGK()<CR>

if !get(g:, 'jk_join_manual_mapping', v:false)
  nmap J  <Plug>JkJoinJ
  nmap gJ <Plug>JkJoinGJ
  nmap K  <Plug>JkJoinK
  nmap gK <Plug>JkJoinGK
endif

