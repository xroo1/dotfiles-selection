" ================================================================
" Tema "Gruvbox Light++" - Fundo mais claro, paleta Gruvbox
" Mistura de Gruvbox light com fundo bege claro (#fbf1c7)
" ================================================================

highlight clear
syntax reset
set background=light

let g:colors_name = "gruvbox_light_white"

" -----------------------------------------------------------
" Links padrão
" -----------------------------------------------------------
hi! link CurSearch Search
hi! link CursorColumn CursorLine
hi! link CursorLineFold FoldColumn
hi! link CursorLineSign SignColumn
hi! link LineNrAbove LineNr
hi! link LineNrBelow LineNr
hi! link PmenuMatch Pmenu
hi! link PmenuMatchSel PmenuSel
hi! link PopupNotification WarningMsg
hi! link PopupSelected PmenuSel
hi! link QuickFixLine Search
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link TabPanel TabLine
hi! link TabPanelFill TabLineFill
hi! link TabPanelSel TabLineSel
hi! link Tag Special
hi! link TermCursor Cursor
hi! link VisualNOS Visual
hi! link debugBreakpoint SignColumn
hi! link debugPC SignColumn
hi! link iCursor Cursor
hi! link lCursor Cursor
hi! link vCursor Cursor

" -----------------------------------------------------------
" Paleta Gruvbox light (com fundo mais claro #fbf1c7)
" -----------------------------------------------------------
" Fundo principal: #fbf1c7 (mais claro que #f2e5bc)
" Fundo secundário: #f2e5bc (para destaques)
" Texto principal: #3c3836 (marrom escuro)
" Comentários: #928374 (cinza médio)
" Vermelho: #9d0006
" Verde: #79740e
" Amarelo: #b57614
" Azul: #076678
" Magenta: #8f3f71
" Laranja: #af3a03
" Ciano: #427b58

highlight Normal       guifg=#3c3836 guibg=#fbf1c7 gui=NONE
highlight Added        guifg=#79740e guibg=NONE gui=NONE
highlight Boolean      guifg=#8f3f71 guibg=NONE gui=NONE
highlight Changed      guifg=#79740e guibg=NONE gui=bold,italic
highlight Character    guifg=#8f3f71 guibg=NONE gui=NONE
highlight ColorColumn  guibg=#f2e5bc guifg=NONE
highlight CommandMode  guifg=#8f3f71 guibg=#fbf1c7 gui=reverse
highlight Comment      guifg=#928374 guibg=NONE gui=italic
highlight Conceal      guifg=#076678 guibg=NONE gui=NONE
highlight Conditional  guifg=#9d0006 guibg=NONE gui=NONE
highlight Constant     guifg=#8f3f71 guibg=NONE gui=NONE
highlight Cursor       gui=reverse
highlight CursorIM     gui=reverse
highlight CursorLine   guibg=#f2e5bc guifg=NONE
highlight CursorLineNr guifg=#b57614 guibg=#f2e5bc gui=NONE
highlight Debug        guifg=#9d0006 guibg=NONE gui=NONE
highlight Define       guifg=#427b58 guibg=NONE gui=NONE
highlight Delimiter    guifg=#af3a03 guibg=NONE gui=NONE
highlight DiffAdd      guifg=#79740e guibg=#fbf1c7 gui=reverse
highlight DiffChange   guifg=#427b58 guibg=#fbf1c7 gui=reverse
highlight DiffDelete   guifg=#9d0006 guibg=#fbf1c7 gui=reverse
highlight DiffText     guifg=#b57614 guibg=#fbf1c7 gui=reverse
highlight Directory    guifg=#076678 guibg=NONE gui=bold
highlight EndOfBuffer  guifg=#fbf1c7 guibg=NONE gui=NONE
highlight Error        guifg=#9d0006 guibg=#fbf1c7 gui=bold,reverse
highlight ErrorMsg     guifg=#fbf1c7 guibg=#9d0006 gui=bold
highlight Exception    guifg=#9d0006 guibg=NONE gui=NONE
highlight Float        guifg=#8f3f71 guibg=NONE gui=NONE
highlight FoldColumn   guifg=#928374 guibg=#f2e5bc gui=NONE
highlight Folded       guifg=#928374 guibg=#f2e5bc gui=italic
highlight Function     guifg=#79740e guibg=NONE gui=bold
highlight Identifier   guifg=#076678 guibg=NONE gui=NONE
highlight Ignore       guifg=fg guibg=NONE gui=NONE
highlight IncSearch    guifg=#af3a03 guibg=#fbf1c7 gui=reverse
highlight Include      guifg=#427b58 guibg=NONE gui=NONE
highlight InsertMode   guifg=#076678 guibg=#fbf1c7 gui=reverse
highlight Keyword      guifg=#9d0006 guibg=NONE gui=NONE
highlight Label        guifg=#9d0006 guibg=NONE gui=NONE
highlight LineNr       guifg=#a89984 guibg=NONE gui=NONE
highlight Macro        guifg=#427b58 guibg=NONE gui=NONE
highlight MatchParen   guibg=#ebdbb2 guifg=#b57614 gui=bold,underline
highlight ModeMsg      guifg=#b57614 guibg=NONE gui=bold
highlight MoreMsg      guifg=#b57614 guibg=NONE gui=bold
highlight NonText      guifg=#ebdbb2 guibg=NONE gui=NONE
highlight NormalMode   guifg=#665c54 guibg=#fbf1c7 gui=reverse
highlight Number       guifg=#8f3f71 guibg=NONE gui=NONE
highlight Operator     guifg=#427b58 guibg=NONE gui=NONE
highlight Pmenu        guifg=#3c3836 guibg=#f2e5bc gui=NONE
highlight PmenuSbar    guibg=#f2e5bc guifg=NONE
highlight PmenuSel     guifg=#fbf1c7 guibg=#076678 gui=bold
highlight PmenuThumb   guibg=#a89984 guifg=NONE
highlight PreCondit    guifg=#427b58 guibg=NONE gui=NONE
highlight PreProc      guifg=#af3a03 guibg=NONE gui=NONE
highlight Question     guifg=#af3a03 guibg=NONE gui=bold
highlight Removed      guifg=#9d0006 guibg=NONE gui=NONE
highlight Repeat       guifg=#9d0006 guibg=NONE gui=NONE
highlight ReplaceMode  guifg=#427b58 guibg=#fbf1c7 gui=reverse
highlight Search       guifg=#b57614 guibg=#fbf1c7 gui=reverse
highlight SignColumn   guifg=#3c3836 guibg=#f2e5bc gui=NONE
highlight Special      guifg=#af3a03 guibg=NONE gui=italic
highlight SpecialChar  guifg=#9d0006 guibg=NONE gui=NONE
highlight SpecialComment guifg=#9d0006 guibg=NONE gui=NONE
highlight SpecialKey   guifg=#928374 guibg=NONE gui=NONE
highlight SpellBad     guifg=#9d0006 guibg=NONE gui=italic,undercurl guisp=#9d0006
highlight SpellCap     guifg=#076678 guibg=NONE gui=italic,undercurl guisp=#076678
highlight SpellLocal   guifg=#427b58 guibg=NONE gui=italic,undercurl guisp=#427b58
highlight SpellRare    guifg=#8f3f71 guibg=NONE gui=italic,undercurl guisp=#8f3f71
highlight Statement    guifg=#9d0006 guibg=NONE gui=NONE
highlight StatusLine   guifg=#f2e5bc guibg=#3c3836 gui=reverse
highlight StatusLineNC guifg=#fbf1c7 guibg=#7c6f64 gui=reverse
highlight StorageClass guifg=#af3a03 guibg=NONE gui=NONE
highlight String       guifg=#79740e guibg=NONE gui=italic
highlight Structure    guifg=#427b58 guibg=NONE gui=NONE
highlight TabLine      guifg=#a89984 guibg=#f2e5bc gui=NONE
highlight TabLineFill  guifg=#a89984 guibg=#f2e5bc gui=NONE
highlight TabLineSel   guifg=#79740e guibg=#f2e5bc gui=NONE
highlight TermCursorNC guifg=#fbf1c7 guibg=#3c3836 gui=NONE
highlight Terminal     guifg=#3c3836 guibg=#fbf1c7 gui=NONE
highlight Title        guifg=#79740e guibg=NONE gui=bold
highlight Todo         guifg=fg guibg=#fbf1c7 gui=bold,italic
highlight ToolbarButton guifg=#1d2021 guibg=#bdae93 gui=bold
highlight ToolbarLine  guibg=#bdae93 guifg=NONE
highlight Type         guifg=#b57614 guibg=NONE gui=NONE
highlight Typedef      guifg=#b57614 guibg=NONE gui=NONE
highlight Underlined   guifg=#076678 guibg=NONE gui=underline guisp=#076678
highlight VertSplit    guifg=#ebdbb2 guibg=#fbf1c7 gui=NONE
highlight Visual       guibg=#ebdbb2 guifg=NONE
highlight VisualMode   guifg=#af3a03 guibg=#fbf1c7 gui=reverse
highlight WarningMsg   guifg=#9d0006 guibg=NONE gui=bold
highlight Warnings     guifg=#af3a03 guibg=#fbf1c7 gui=reverse
highlight WildMenu     guifg=#076678 guibg=#f2e5bc gui=bold

" -----------------------------------------------------------
" Plugins (com fundos ajustados)
" -----------------------------------------------------------
highlight! link EasyMotionShade Comment
highlight! link EasyMotionTarget Search

highlight ALEError        gui=undercurl guisp=#9d0006
highlight ALEErrorSign    guifg=#9d0006 guibg=#f2e5bc
highlight ALEInfo         gui=undercurl guisp=#076678
highlight ALEInfoSign     guifg=#076678 guibg=#f2e5bc
highlight ALEWarning      gui=undercurl guisp=#9d0006
highlight ALEWarningSign  guifg=#b57614 guibg=#f2e5bc

highlight BufTabLineActive  guifg=#7c6f64 guibg=#f2e5bc
highlight BufTabLineCurrent guifg=#fbf1c7 guibg=#7c6f64
highlight BufTabLineFill    guifg=#fbf1c7 guibg=#fbf1c7
highlight BufTabLineHidden  guifg=#a89984 guibg=#f2e5bc

highlight CocErrorFloat   guifg=#9d0006
highlight CocErrorSign    guifg=#9d0006 guibg=#f2e5bc
highlight CocHintFloat    guifg=#076678
highlight CocHintSign     guifg=#076678 guibg=#f2e5bc
highlight CocInfoFloat    guifg=#b57614
highlight CocInfoSign     guifg=#b57614 guibg=#f2e5bc
highlight CocWarningFloat guifg=#af3a03
highlight CocWarningSign  guifg=#af3a03 guibg=#f2e5bc

highlight CtrlPLinePre   guifg=#f2e5bc
highlight CtrlPMatch     guifg=#b57614
highlight CtrlPNoEntries guifg=#9d0006
highlight CtrlPPrtBase   guifg=#f2e5bc
highlight CtrlPPrtCursor guifg=#076678

highlight DirvishArg      guifg=#b57614
highlight DirvishPathTail guifg=#427b58

highlight GitGutterChangeDelete guifg=#427b58 guibg=#f2e5bc
highlight GitGutterAdd          guifg=#79740e guibg=#f2e5bc
highlight GitGutterChange       guifg=#427b58 guibg=#f2e5bc
highlight GitGutterDelete       guifg=#9d0006 guibg=#f2e5bc

highlight LangaugeClientInfo      guifg=#076678
highlight LanguageClientCodeLens  guifg=#076678
highlight LanguageClientError     guifg=#9d0006
highlight LanguageClientErrorSign guifg=#9d0006 guibg=#fbf1c7
highlight LanguageClientInfoSign  guifg=#076678 guibg=#f2e5bc
highlight LanguageClientWarning   guifg=#b57614
highlight LanguageClientWarningSign guifg=#b57614 guibg=#f2e5bc

highlight LspDiagnosticsDefaultError       guifg=#9d0006
highlight LspDiagnosticsDefaultHint        guifg=#076678
highlight LspDiagnosticsDefaultInformation guifg=#b57614
highlight LspDiagnosticsDefaultWarning     guifg=#af3a03
highlight LspDiagnosticsSignError          guifg=#9d0006 guibg=#f2e5bc
highlight LspDiagnosticsSignHint           guifg=#076678 guibg=#f2e5bc
highlight LspDiagnosticsSignInformation    guifg=#b57614 guibg=#f2e5bc
highlight LspDiagnosticsSignWarning        guifg=#af3a03 guibg=#f2e5bc
highlight LspDiagnosticsUnderlineError     gui=NONE
highlight LspDiagnosticsUnderlineHint      gui=NONE
highlight LspDiagnosticsUnderlineInformation gui=NONE
highlight LspDiagnosticsUnderlineWarning   gui=NONE

highlight NERDTreeCWD        guifg=#79740e
highlight NERDTreeClosable   guifg=#af3a03
highlight NERDTreeDir        guifg=#427b58
highlight NERDTreeDirSlash   guifg=#427b58
highlight NERDTreeExecFile   guifg=#b57614
highlight NERDTreeFile       guifg=#3c3836
highlight NERDTreeHelp       guifg=#3c3836
highlight NERDTreeOpenable   guifg=#af3a03
highlight NERDTreeToggleOff  guifg=#9d0006
highlight NERDTreeToggleOn   guifg=#79740e
highlight NERDTreeUp         guifg=#928374

highlight ShowMarksHLl guifg=#076678 guibg=#f2e5bc
highlight ShowMarksHLm guifg=#076678 guibg=#f2e5bc
highlight ShowMarksHLo guifg=#076678 guibg=#f2e5bc
highlight ShowMarksHLu guifg=#076678 guibg=#f2e5bc

highlight SignatureMarkText   guifg=#076678 guibg=#f2e5bc
highlight SignatureMarkerText guifg=#8f3f71 guibg=#f2e5bc

highlight SignifySignAdd    guifg=#79740e guibg=#f2e5bc
highlight SignifySignChange guifg=#427b58 guibg=#f2e5bc
highlight SignifySignDelete guifg=#9d0006 guibg=#f2e5bc

highlight StartifyBracket  guifg=#665c54
highlight StartifyFile     guifg=#3c3836
highlight StartifyFooter   guifg=#f2e5bc
highlight StartifyHeader   guifg=#af3a03
highlight StartifyNumber   guifg=#076678
highlight StartifyPath     guifg=#928374
highlight StartifySection  guifg=#b57614
highlight StartifySlash    guifg=#928374
highlight StartifySpecial  guifg=#f2e5bc

highlight SyntasticError      gui=undercurl guisp=#9d0006
highlight SyntasticErrorSign  guifg=#9d0006 guibg=#f2e5bc
highlight SyntasticWarning    gui=undercurl guisp=#b57614
highlight SyntasticWarningSign guifg=#b57614 guibg=#f2e5bc

highlight gitcommitDiscardedFile guifg=#9d0006
highlight gitcommitSelectedFile  guifg=#79740e

highlight multiple_cursors_cursor gui=reverse
highlight multiple_cursors_visual guibg=#f2e5bc

highlight netrwClassify guifg=#427b58
highlight netrwCmdSep   guifg=#665c54
highlight netrwComment  guifg=#928374
highlight netrwDir      guifg=#427b58
highlight netrwExe      guifg=#b57614
highlight netrwHelpCmd  guifg=#427b58
highlight netrwLink     guifg=#928374
highlight netrwList     guifg=#076678
highlight netrwSymLink  guifg=#3c3836
highlight netrwVersion  guifg=#79740e

set termguicolors
