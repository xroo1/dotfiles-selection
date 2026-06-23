" ================================================================
" Tema Crisp Gruvbox Dark - Estrutura Frost Cyber
" Paleta Gruvbox escura com fundo cinza e cores terrosas
" ================================================================

" Limpar configurações anteriores
highlight clear
syntax reset
set background=dark

" Configuração básica
let g:colors_name = "crisp_gruvbox_frost"

" -----------------------------------------------------------
" Cores Principais (Paleta Gruvbox adaptada)
" -----------------------------------------------------------
let s:bg_main = "#1e1e1e"      " cinza bem escuro (fundo principal)
let s:bg_soft = "#2a2a2a"      " cinza médio-escuro (fundo secundário)
let s:bg_metal = "#3a3a3a"     " cinza para destaques (cursor, seleção)
let s:bg_glow = "#323232"      " cinza para elementos como abas inativas

" Tons de cinza (base do texto)
let s:gray_bright = "#ebdbb2"  " bege claro (texto principal)
let s:gray_main = "#ebdbb2"    " bege claro (texto principal)
let s:gray_soft = "#928374"    " cinza médio (comentários, discretos)
let s:gray_muted = "#928374"   " cinza médio (comentários)
let s:gray_dark = "#4a5258"    " cinza escuro

" Cores Gruvbox
let s:red = "#fb4934"          " vermelho (palavras-chave, erros)
let s:green = "#b8bb26"        " verde (strings, constantes)
let s:yellow = "#fabd2f"       " amarelo (preprocessamento, avisos)
let s:blue = "#83a598"         " azul suave (funções, tipos)
let s:purple = "#d3869b"       " rosa/magenta (números, especiais)
let s:aqua = "#8ec07c"         " aqua (operadores, escapes)
let s:orange = "#fe8019"       " laranja (booleans, destaques)
let s:teal = "#8ec07c"         " teal (usando aqua)
let s:cyan = "#83a598"         " ciano (usando azul)

" -----------------------------------------------------------
" Elementos Base da Interface (com gradiente suave)
" -----------------------------------------------------------
execute "highlight Normal       guibg=" . s:bg_main . " guifg=" . s:gray_main
execute "highlight ColorColumn  guibg=" . s:bg_soft
execute "highlight CursorLine   guibg=" . s:bg_soft . " guifg=NONE"
execute "highlight CursorLineNr guibg=" . s:bg_metal . " guifg=" . s:blue . " gui=bold"
execute "highlight Cursor       guibg=" . s:blue . " guifg=" . s:bg_main

" Coluna de números com gradiente de tons
execute "highlight LineNr       guibg=" . s:bg_soft . " guifg=" . s:gray_soft
execute "highlight LineNrAbove  guibg=" . s:bg_soft . " guifg=" . s:gray_soft
execute "highlight LineNrBelow  guibg=" . s:bg_soft . " guifg=" . s:gray_soft

" -----------------------------------------------------------
" Sintaxe (tons Gruvbox)
" -----------------------------------------------------------
execute "highlight Comment      guifg=" . s:gray_soft . " guibg=NONE gui=italic"
execute "highlight Constant     guifg=" . s:purple . " guibg=NONE"
execute "highlight Identifier   guifg=" . s:blue . " guibg=NONE"
execute "highlight Statement    guifg=" . s:red . " guibg=NONE gui=bold"
execute "highlight PreProc      guifg=" . s:yellow . " guibg=NONE"
execute "highlight Type         guifg=" . s:green . " guibg=NONE"
execute "highlight Special      guifg=" . s:aqua . " guibg=NONE"
execute "highlight Underlined   gui=underline guifg=" . s:blue
execute "highlight Todo         guifg=" . s:bg_main . " guibg=" . s:yellow . " gui=bold"

execute "highlight String       guifg=" . s:green . " guibg=NONE"
execute "highlight Number       guifg=" . s:purple . " guibg=NONE"
execute "highlight Boolean      guifg=" . s:orange . " guibg=NONE"
execute "highlight Function     guifg=" . s:blue . " guibg=NONE"
execute "highlight Conditional  guifg=" . s:red . " guibg=NONE gui=bold"
execute "highlight Repeat       guifg=" . s:red . " guibg=NONE gui=bold"
execute "highlight Operator     guifg=" . s:gray_soft . " guibg=NONE"
execute "highlight Keyword      guifg=" . s:red . " guibg=NONE gui=bold"

" -----------------------------------------------------------
" Componentes de Interface (tons variados)
" -----------------------------------------------------------
execute "highlight StatusLine   guibg=" . s:blue . " guifg=" . s:bg_main . " gui=bold"
execute "highlight StatusLineNC guibg=" . s:bg_soft . " guifg=" . s:gray_soft

execute "highlight Pmenu        guibg=" . s:bg_soft . " guifg=" . s:gray_main
execute "highlight PmenuSel     guibg=" . s:blue . " guifg=" . s:bg_main
execute "highlight PmenuSbar    guibg=" . s:bg_main
execute "highlight PmenuThumb   guibg=" . s:blue

execute "highlight VertSplit    guifg=" . s:bg_main . " guibg=" . s:bg_main
execute "highlight WinSeparator guifg=" . s:bg_soft . " guibg=" . s:bg_main
execute "highlight NonText      guifg=" . s:gray_soft . " guibg=" . s:bg_main
execute "highlight SignColumn   guibg=" . s:bg_main . " guifg=" . s:gray_main

execute "highlight TabLine      guibg=" . s:bg_soft . " guifg=" . s:gray_soft
execute "highlight TabLineSel   guibg=" . s:bg_main . " guifg=" . s:blue . " gui=bold"
execute "highlight TabLineFill  guibg=" . s:bg_main

" -----------------------------------------------------------
" Destaques e Interação
" -----------------------------------------------------------
execute "highlight Search       guibg=" . s:yellow . " guifg=" . s:bg_main
execute "highlight IncSearch    guibg=" . s:orange . " guifg=" . s:bg_main
execute "highlight Visual       guibg=" . s:bg_metal . " guifg=" . s:gray_main
execute "highlight MatchParen   guibg=" . s:bg_metal . " guifg=" . s:yellow . " gui=bold"

execute "highlight DiffAdd      guibg=#1e2a24 guifg=" . s:green
execute "highlight DiffChange   guibg=#1e2a32 guifg=" . s:blue
execute "highlight DiffDelete   guibg=#2a2024 guifg=" . s:purple
execute "highlight DiffText     guibg=" . s:blue . " guifg=" . s:bg_main

" -----------------------------------------------------------
" Outros Elementos
" -----------------------------------------------------------
execute "highlight Folded       guibg=" . s:bg_soft . " guifg=" . s:gray_soft
execute "highlight FoldColumn   guibg=" . s:bg_main . " guifg=" . s:gray_soft
execute "highlight EndOfBuffer  guifg=" . s:bg_main . " guibg=" . s:bg_main

execute "highlight ErrorMsg     guibg=" . s:purple . " guifg=" . s:gray_main
execute "highlight WarningMsg   guibg=" . s:yellow . " guifg=" . s:bg_main
execute "highlight ModeMsg      guifg=" . s:blue . " guibg=NONE gui=bold"
execute "highlight MoreMsg      guifg=" . s:blue . " guibg=NONE"

" -----------------------------------------------------------
" Git e versionamento
" -----------------------------------------------------------
execute "highlight GitGutterAdd    guifg=" . s:green . " guibg=" . s:bg_main
execute "highlight GitGutterChange guifg=" . s:blue . " guibg=" . s:bg_main
execute "highlight GitGutterDelete guifg=" . s:red . " guibg=" . s:bg_main

" -----------------------------------------------------------
" NERDTree e exploradores
" -----------------------------------------------------------
execute "highlight Directory    guifg=" . s:blue . " guibg=" . s:bg_main

" -----------------------------------------------------------
" Verificação ortográfica
" -----------------------------------------------------------
execute "highlight SpellBad     gui=undercurl guisp=" . s:red
execute "highlight SpellCap     gui=undercurl guisp=" . s:blue
execute "highlight SpellRare    gui=undercurl guisp=" . s:yellow
execute "highlight SpellLocal   gui=undercurl guisp=" . s:green

" -----------------------------------------------------------
" Destaques específicos
" -----------------------------------------------------------
execute "highlight Title        guifg=" . s:yellow . " guibg=NONE gui=bold"
execute "highlight Question     guifg=" . s:blue . " guibg=NONE"
execute "highlight SpecialKey   guifg=" . s:gray_soft . " guibg=NONE"
execute "highlight Whitespace   guifg=" . s:bg_soft . " guibg=NONE"

" -----------------------------------------------------------
" Áreas flutuantes
" -----------------------------------------------------------
execute "highlight NormalFloat  guibg=" . s:bg_soft . " guifg=" . s:gray_main
execute "highlight FloatBorder  guibg=" . s:bg_main . " guifg=" . s:blue

" -----------------------------------------------------------
" Links para consistência
" -----------------------------------------------------------
highlight! link NERDTreeOpenable Directory
highlight! link NERDTreeClosable Directory
highlight! link NERDTreeExecFile String
highlight! link NERDTreeLinkTarget Type

" -----------------------------------------------------------
" Neo-tree (explorador) - fundo secundário
" -----------------------------------------------------------
execute "highlight NeoTreeNormal       guibg=" . s:bg_soft . " guifg=" . s:gray_main
execute "highlight NeoTreeNormalNC     guibg=" . s:bg_soft . " guifg=" . s:gray_soft
execute "highlight NeoTreeFloatNormal  guibg=" . s:bg_soft . " guifg=" . s:gray_soft
execute "highlight NeoTreeWinSeparator guibg=" . s:bg_soft . " guifg=" . s:bg_soft

execute "highlight NeoTreeTitleBar     guibg=" . s:bg_metal . " guifg=" . s:blue
execute "highlight NeoTreeHeader       guibg=" . s:bg_metal . " guifg=" . s:blue
execute "highlight NeoTreeHeaderTitle  guibg=" . s:bg_metal . " guifg=" . s:blue

execute "highlight NeoTreeFooter       guibg=" . s:bg_soft . " guifg=" . s:gray_soft
execute "highlight NeoTreeStatusLine   guibg=" . s:bg_soft . " guifg=" . s:gray_soft
execute "highlight NeoTreeEndOfBuffer  guibg=" . s:bg_soft . " guifg=" . s:bg_soft

execute "highlight NeoTreeScrollbar    guibg=" . s:bg_metal . " guifg=" . s:gray_soft
execute "highlight NeoTreeScrollbarThumb guibg=" . s:gray_soft

execute "highlight NeoTreeCursorLine   guibg=" . s:bg_metal

execute "highlight NeoTreeDirIcon      guifg=" . s:blue . " guibg=NONE"
execute "highlight NeoTreeDirectoryName guifg=" . s:blue . " guibg=NONE gui=bold"
execute "highlight NeoTreeFileName     guifg=" . s:gray_main . " guibg=NONE"
execute "highlight NeoTreeFileNameOpened guifg=" . s:blue . " guibg=NONE gui=bold"

execute "highlight NeoTreeGitAdded     guifg=" . s:green . " guibg=NONE"
execute "highlight NeoTreeGitModified  guifg=" . s:blue . " guibg=NONE"
execute "highlight NeoTreeGitDeleted   guifg=" . s:red . " guibg=NONE"
execute "highlight NeoTreeGitIgnored   guifg=" . s:gray_soft . " guibg=NONE"

execute "highlight NeoTreeIndentMarker guifg=" . s:gray_soft . " guibg=NONE"

execute "highlight NeoTreeMessage      guifg=" . s:blue . " guibg=NONE"
execute "highlight NeoTreeInfo         guifg=" . s:green . " guibg=NONE"
execute "highlight NeoTreeWarn         guifg=" . s:yellow . " guibg=NONE"
execute "highlight NeoTreeError        guifg=" . s:red . " guibg=NONE"

execute "highlight NeoTreePopup        guibg=" . s:bg_metal . " guifg=" . s:gray_main
execute "highlight NeoTreePopupBorder  guibg=" . s:bg_metal . " guifg=" . s:blue

" Garantir que o tema seja aplicado
set termguicolors

