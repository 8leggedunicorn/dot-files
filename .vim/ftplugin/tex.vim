let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'p2_analyze_the_NYC_sd.py -pdf'
let g:Tex_ViewRule_pdf='evince 2>/dev/null'
let g:Tex_IgnoredWarnings =
  \'Underfull'."\n".
  \'Overfull'."\n".
  \'specifier changed to'."\n".
  \'You have requested'."\n".
  \'Missing number, treated as zero.'."\n".
  \'There were undefined references'."\n".
  \'Citation %.%# undefined'."\n".
  \"Empty `thebibliography' environment"."\n".
  \"LaTeX Font Warning: Font shape `T1/5jr/m/it' undefined"."\n".
  \"LaTeX Font Warning: Font shape `T1/5jr/bx/n' undefined"."\n".
  \"LaTeX Font Warning: Font shape `T1/5jr/m/n' undefined"."\n".
  \"LaTeX Font Warning: Font shape ' undefined"."\n".
  \"Some font shapes were not available, defaults substituted."."\n".
  \"Float too large for page"
let g:Tex_IgnoreLevel = 30
let g:Tex_MultipleCompileFormats = 'pdf'
iab <expr> dts strftime("%a %b %d, %Y")
iab nge \newglossaryentry{<++>}{name={<++>},description={<++>}}
iab nae \newacronym[<++>]{<++>}{<++>}{<++>}
set textwidth=80
" not safe for most development work but for TeX files auto saving seems sane:
set autowriteall 

let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw
set timeout ttimeoutlen=8
