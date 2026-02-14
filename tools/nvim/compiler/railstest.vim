if exists("current_compiler")
  finish
endif
let current_compiler = "railstest"

let s:cpo_save = &cpo
set cpo&vim

CompilerSet makeprg=bundle\ exec\ rails\ test

CompilerSet errorformat=
    \%EFailure:,
    \%EError:,
    \%Z\ \ \ \ %f:%l%.%#,
    \%C%*[^[]\ [%f:%l]:,
    \%+CExpected:\ %m,
    \%+Z\ \ Actual:\ %m,
    \%C%*[^\ ]:,
    \%C%m,
    \%-G%.%#

let &cpo = s:cpo_save
unlet s:cpo_save
