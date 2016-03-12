let s:save_cpo = &cpo
set cpo&vim







call operator#user#define('ruby-rescue', 'operator#ruby_rescue#do')




let &cpo = s:save_cpo
unlet s:save_cpo
