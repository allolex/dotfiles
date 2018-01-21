" https://raw.githubusercontent.com/godlygeek/tabular/master/doc/Tabular.txt
if !exists(':Tabularize')
  finish
endif

let s:save_cpo = &cpo
set cpo&vim

AddTabularPattern! on_comma /^[^,]*,[ ]/l1l1l1

let &cpo = s:save_cpo
unlet s:save_cpo
