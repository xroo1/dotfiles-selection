" Tema: MonoChromatico
" Baseado nas cores: #1E2020 (fundo), #646F78 e #C0C7CA (texto)
" Esquema verdadeiramente monocromático com tons de cinza

" Limpar configurações anteriores
highlight clear
syntax reset
set background=dark

" Configuração básica
let g:colors_name = "monochromatico"

" -----------------------------------------------------------
" Cores Principais (Paleta monocromática - APENAS CINZAS)
" -----------------------------------------------------------
let s:bg_main = "#1E2020"      " Fundo principal
let s:bg_soft = "#262828"      " Fundo secundário
let s:bg_metal = "#2D3030"     " Fundo metálico
let s:bg_glow = "#343737"      " Fundo brilho sutil

" Tons de cinza (base do texto) - SEM AZUL
let s:gray_bright = "#D4D8DB"   " Cinza muito claro
let s:gray_main = "#C0C7CA"     " Cinza principal (texto)
let s:gray_soft = "#8D959A"     " Cinza suave
let s:gray_muted = "#646F78"    " Cinza apagado (comentários)
let s:gray_dark = "#4A5258"     " Cinza escuro
let s:gray_darker = "#3A4045"   " Cinza mais escuro

" -----------------------------------------------------------
" Elementos Base da Interface
" -----------------------------------------------------------
highlight Normal       guibg=#1E2020 guifg=#C0C7CA
highlight ColorColumn  guibg=#262828
highlight CursorLine   guibg=#262828 guifg=NONE
highlight CursorLineNr guibg=#2D3030 guifg=#C0C7CA gui=bold
highlight Cursor       guibg=#C0C7CA guifg=#1E2020

" Coluna de números
highlight LineNr       guibg=#262828 guifg=#646F78
highlight LineNrAbove  guibg=#262828 guifg=#8D959A
highlight LineNrBelow  guibg=#262828 guifg=#8D959A

" -----------------------------------------------------------
" Sintaxe (tons monocromáticos - SEM AZUL)
" -----------------------------------------------------------
highlight Comment      guifg=#646F78 guibg=NONE gui=italic
highlight Constant     guifg=#8D959A guibg=NONE
highlight Identifier   guifg=#C0C7CA guibg=NONE
highlight Statement    guifg=#C0C7CA guibg=NONE gui=bold
highlight PreProc      guifg=#8D959A guibg=NONE
highlight Type         guifg=#8D959A guibg=NONE
highlight Special      guifg=#D4D8DB guibg=NONE
highlight Underlined   gui=underline guifg=#C0C7CA
highlight Todo         guifg=#1E2020 guibg=#C0C7CA gui=bold

" Elementos específicos
highlight String       guifg=#8D959A guibg=NONE
highlight Number       guifg=#D4D8DB guibg=NONE
highlight Boolean      guifg=#C0C7CA guibg=NONE
highlight Function     guifg=#C0C7CA guibg=NONE
highlight Conditional  guifg=#C0C7CA guibg=NONE gui=bold
highlight Repeat       guifg=#C0C7CA guibg=NONE gui=bold
highlight Operator     guifg=#8D959A guibg=NONE
highlight Keyword      guifg=#C0C7CA guibg=NONE gui=bold

" -----------------------------------------------------------
" Componentes de Interface
" -----------------------------------------------------------
" Barra de status - conforme solicitado: bg #C0C7CA, fg #1E2020
highlight StatusLine   guibg=#C0C7CA guifg=#1E2020 gui=bold
highlight StatusLineNC guibg=#2D3030 guifg=#646F78

highlight Pmenu        guibg=#2D3030 guifg=#C0C7CA
highlight PmenuSel     guibg=#8D959A guifg=#1E2020
highlight PmenuSbar    guibg=#1E2020
highlight PmenuThumb   guibg=#646F78

highlight VertSplit    guifg=#1E2020 guibg=#1E2020
highlight WinSeparator guifg=#2D3030 guibg=#1E2020
highlight NonText      guifg=#4A5258 guibg=#1E2020
highlight SignColumn   guibg=#1E2020 guifg=#C0C7CA

highlight TabLine      guibg=#262828 guifg=#646F78
highlight TabLineSel   guibg=#1E2020 guifg=#C0C7CA gui=bold
highlight TabLineFill  guibg=#1E2020

" -----------------------------------------------------------
" Destaques e Interação
" -----------------------------------------------------------
highlight Search       guibg=#646F78 guifg=#1E2020
highlight IncSearch    guibg=#C0C7CA guifg=#1E2020
highlight Visual       guibg=#2D3030 guifg=#C0C7CA
highlight MatchParen   guibg=#3A4045 guifg=#C0C7CA gui=bold

highlight DiffAdd      guibg=#1E2A24 guifg=#8D959A
highlight DiffChange   guibg=#1E2A32 guifg=#C0C7CA
highlight DiffDelete   guibg=#2A2024 guifg=#646F78
highlight DiffText     guibg=#646F78 guifg=#1E2020

" -----------------------------------------------------------
" Outros Elementos
" -----------------------------------------------------------
highlight Folded       guibg=#262828 guifg=#646F78
highlight FoldColumn   guibg=#1E2020 guifg=#8D959A
highlight EndOfBuffer  guifg=#1E2020 guibg=#1E2020

highlight ErrorMsg     guibg=#646F78 guifg=#1E2020
highlight WarningMsg   guibg=#8D959A guifg=#1E2020
highlight ModeMsg      guifg=#C0C7CA guibg=NONE gui=bold
highlight MoreMsg      guifg=#C0C7CA guibg=NONE

" -----------------------------------------------------------
" Git e versionamento
" -----------------------------------------------------------
highlight GitGutterAdd    guifg=#8D959A guibg=#1E2020
highlight GitGutterChange guifg=#C0C7CA guibg=#1E2020
highlight GitGutterDelete guifg=#646F78 guibg=#1E2020

" -----------------------------------------------------------
" File explorers
" -----------------------------------------------------------
highlight Directory    guifg=#C0C7CA guibg=#1E2020

" -----------------------------------------------------------
" Verificação ortográfica
" -----------------------------------------------------------
highlight SpellBad     gui=undercurl guisp=#646F78
highlight SpellCap     gui=undercurl guisp=#C0C7CA
highlight SpellRare    gui=undercurl guisp=#8D959A
highlight SpellLocal   gui=undercurl guisp=#8D959A

" -----------------------------------------------------------
" Destaques específicos
" -----------------------------------------------------------
highlight Title        guifg=#C0C7CA guibg=NONE gui=bold
highlight Question     guifg=#C0C7CA guibg=NONE
highlight SpecialKey   guifg=#4A5258 guibg=NONE
highlight Whitespace   guifg=#262828 guibg=NONE

" -----------------------------------------------------------
" Áreas flutuantes
" -----------------------------------------------------------
highlight NormalFloat  guibg=#2D3030 guifg=#C0C7CA
highlight FloatBorder  guibg=#1E2020 guifg=#8D959A

" -----------------------------------------------------------
" Links para consistência
" -----------------------------------------------------------
highlight! link NERDTreeOpenable Directory
highlight! link NERDTreeClosable Directory
highlight! link NERDTreeExecFile String

" Garantir que o tema seja aplicado completamente
set termguicolors

