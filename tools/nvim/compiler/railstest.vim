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
    \%C%*[^[]\ [%f:%l]:,
    \%+CExpected:\ %m,
    \%+C\ \ Actual:\ %m,
    \%C\ \ \ \ %f:%l:in\ %.%#,
    \%C%.%#:\ %m,
    \%C%.%#,
    \%Z,
    \%-G%.%#

let &cpo = s:cpo_save
unlet s:cpo_save
