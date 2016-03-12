let s:save_cpo = &cpo
set cpo&vim



function! operator#ruby_rescue#do(_) abort
  let start_l = getpos("'[")[1]
  let end_l   = getpos("']")[1]
  let line = start_l

  call append(start_l-1, 'begin')
  let end_l   += 1

  call append(end_l, "end")
  call append(end_l, "")
  call append(end_l, "rescue => ex")
  let end_l   += 3
  execute string(start_l)
  execute 'normal =' . string(end_l - start_l) . 'j'
  execute string(end_l - 1)
endfunction




let &cpo = s:save_cpo
unlet s:save_cpo
