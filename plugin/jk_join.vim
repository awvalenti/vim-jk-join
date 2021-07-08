scriptversion 4

if exists('g:loaded_jk_join') || &compatible
  finish
endif
let g:loaded_jk_join = v:true

nnoremap <SID>JkJoinJ <Cmd>let count1 = v:count1 \| exe 'norm! m`' \| exe 'j' .. (count1 + 1) \| exe 'norm! ``' \| silent! call repeat#set("\<SID>JkJoinJ", count1) \| unlet count1<CR>
nmap J <SID>JkJoinJ

nnoremap <SID>JkJoinK <Cmd>let count1 = v:count1 \| exe 'norm! m`' \| exe max([1, line('.') - count1]) .. ',.j' \| exe 'norm! ``' \| silent! call repeat#set("\<SID>JkJoinK", count1) \| unlet count1<CR>
nmap K <SID>JkJoinK

