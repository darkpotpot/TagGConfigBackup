syntax case match

syntax keyword apaStatement if then else endif ifcontinuous ifcutsheet ifempty endifcontinuous endifcutsheet 
syntax keyword apaRepeat while endwhile 
syntax keyword apaKeyword a39 alphanumeric and angle antialias area at back bar barcode barheight batinformation batquery bin black blue boldfont boldunderlinedfont book bordercolor box breakpoint brightness brown c128 camera cascade cat ceil chr clock cm cmyk color cols comp contrast curline dec def deltax digital dilation direction directory display down ean ean128 endoverlay erosion eval exit explode expr fall field file filecontrolsystem fillcolor fix floor font foreveryline formate from front gauge generatefile goto graph grayscale green halt i25 image imagedirectory imageibm imask inch include indent init input into invert italicfont jog jpeg jpeg300 jpeg600 justify kern labels lastline lead left legend_cote legend_graph line lineto list literal look low lrtrim ltrim lzw make makebar makecolor makefont makeimage makeoverlay manufacturer mask maxchar messagelog middle mm mon move moveto msi name narrowbarwidth narrowspacewidth nbocc nbpage noclearcode nocompress nocorner noline nosort nothing nowarning num numcmd numformat numlot numtrim oblique occurs odecsep off olen omask omitindex omsep on or oright ousep output pack page pantone paper pattern pels pie pink plus point pointsize prefix printcontroloff printerduplexmode putimage ratio raw readresequence rect recto rectobackground red regroup res resize resizebox resizeboxprop restore rgb right rotate round roundrect rtrim rule save secs sectioncolor send size sizeof smooth sort sscc stack start startangle startfirst startpie step stop suffix table text textformat thick title_over title_under to translate tray trigo trim turquoise type typecolor typeioca underlinedfont undpos undsize unit up userdefined value valuefont verso versobackground warning weight widebarwidth widespacewidth width xaddpel xresize yaddpel yellow beginpage endpage areabox pagetype newpage beginmedium endmedium
syntax keyword apaConstant PHYSICALRECNO FIRST_TIME RECNO CURRENT_X LAST_X CURRENT_Y LAST_Y DATE TIME NUMLEAF NUMAREA FILE

syn match apaIntegerDenot "[+-~]\=\<\(\d\+\|0[0-7]\+\|0x[0-9A-Fa-f]\+\)\>"
syn match apaRealDenot "[+-~]\=\<\d\+\.\d+\(E[+-~]\=\d+\)\="

" To do some Comment Highlighting
syn region apaComment start="/\*"  end="\*/" contains=cleanComment
syn match apaComment "//.*"

syn region  apaStringDenot start=+"+ end=+"+
syn region  apaStringDenot start=+'+ end=+'+
syn match apaCharDenot "'.'"


highlight link apaStatement Statement
highlight link apaRepeat Repeat
highlight link apaIntegerDenot Number
highlight link apaRealDenot    Float
highlight link apaKeyword Keyword
highlight link apaConstant Constant
highlight link apaComment Comment

highlight link apaCharsDenot   String
highlight link apaStringDenot  String

