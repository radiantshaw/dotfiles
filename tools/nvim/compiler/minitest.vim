if exists("current_compiler")
  finish
endif
let current_compiler = "minitest"

let s:cpo_save = &cpo
set cpo&vim

CompilerSet makeprg=bundle\ exec\ ruby\ -Itest

CompilerSet errorformat=
    \%E%.%#Failure:,
    \%C%m\ [%f:%l]:,
    \%C%m,
    \%Z,
    \%-G%.%#

let &cpo = s:cpo_save
unlet s:cpo_save
