if exists("current_compiler")
  finish
endif
let current_compiler = "minitest"

let s:cpo_save = &cpo
set cpo&vim

CompilerSet makeprg=ruby

CompilerSet errorformat=
    \%E\ \ %n)\ Error:,
    \%Z\ \ \ \ %f:%l%.%#,
    \%C%.%#:,
    \%C%m,
    \%-G%.%#

let &cpo = s:cpo_save
unlet s:cpo_save

