scriptversion 4

if exists('g:jk_join_loaded') || &compatible
  finish
endif
let g:jk_join_loaded = v:true

function! s:JkJoin(plug_mapping_name, command)
  let l:count1 = v:count1
  exe 'norm! m`'
  exe a:command
  exe 'norm! ``'
  silent! call repeat#set(a:plug_mapping_name, l:count1)
endfunction

function! s:JkJoinDownwards(plug_name, join_variation)
  call s:JkJoin("\<Plug>" .. a:plug_name, a:join_variation .. (v:count1 + 1))
endfunction

function! s:JkJoinUpwards(plug_name, join_variation)
  call s:JkJoin("\<Plug>" .. a:plug_name, max([1, line('.') - v:count1]) .. ',.' .. a:join_variation)
endfunction

function! <SID>JkJoinJ()
  call s:JkJoinDownwards("JkJoinJ", 'j')
endfunction

function! <SID>JkJoinGJ()
  call s:JkJoinDownwards("JkJoinGJ", 'j!')
endfunction

function! <SID>JkJoinK()
  call s:JkJoinUpwards("JkJoinK", 'j')
endfunction

function! <SID>JkJoinGK()
  call s:JkJoinUpwards("JkJoinGK", 'j!')
endfunction

nnoremap <silent> <Plug>JkJoinJ  :<C-u>call <SID>JkJoinJ()<CR>
nnoremap <silent> <Plug>JkJoinGJ :<C-u>call <SID>JkJoinGJ()<CR>
nnoremap <silent> <Plug>JkJoinK  :<C-u>call <SID>JkJoinK()<CR>
nnoremap <silent> <Plug>JkJoinGK :<C-u>call <SID>JkJoinGK()<CR>

if !get(g:, 'jk_join_manual_mapping', v:false)
  nmap J  <Plug>JkJoinJ
  nmap gJ <Plug>JkJoinGJ
  nmap K  <Plug>JkJoinK
  nmap gK <Plug>JkJoinGK
endif

