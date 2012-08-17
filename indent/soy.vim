" Vim indent file
" Google Closure templates indent file.
" Language:	Soy
" Maintainer:	Munkhbaatar (https://github.com/gmunkhbaatarmn)
" Last Change:	2011 Aug 26

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
  finish
endif

runtime! indent/html.vim

let b:did_indent = 1

func! SoyIndent()
  " Indent comments correctly. Since Soy uses C-style comments, delegate to the
  " C indentation algorithm when in the middle of a multiline comment.
  if getline(v:lnum) =~ '^\s*\*'
    return cindent(getline(v:lnum))
  endif

  return HtmlIndent()
endfunc

setlocal indentexpr=SoyIndent()
