" Esquema de cores Vim Default Escuro - Estruturado

" Limpar configurações anteriores
highlight clear
syntax reset
set background=dark

let g:colors_name = "vim_default_dark_structured"

" -----------------------------------------------------------
" Paleta de Cores Padrão do Vim (Escuro)
" -----------------------------------------------------------
let s:cyan_comment    = '#00ffff'  " Ciano para comentários
let s:magenta_const   = '#ff00ff'  " Magenta para constantes
let s:cyan_ident      = '#00ffff'  " Ciano para identificadores
let s:yellow_stmt     = '#ffff00'  " Amarelo para statements
let s:magenta_pre     = '#ff00ff'  " Magenta para pré-processador
let s:green_type      = '#00ff00'  " Verde para tipos
let s:yellow_todo_bg  = '#ffff00'  " Amarelo para TODO
let s:red_error       = '#ff0000'  " Vermelho para erros

" Cores base
let s:black_bg        = '#000000'  " Fundo preto
let s:gray_fg         = '#c0c0c0'  " Texto cinza claro
let s:dark_gray_bg    = '#1a1a1a'  " Cinza escuro
let s:yellow_line     = '#ffff00'  " Amarelo para números

" -----------------------------------------------------------
" Cores Base
" -----------------------------------------------------------
highlight Normal       guibg=#000000 guifg=#c0c0c0
highlight ColorColumn  guibg=#1a1a1a
highlight CursorLine   guibg=#1a1a1a guifg=NONE
highlight CursorLineNr guibg=#1a1a1a guifg=#ffff00 gui=bold
highlight LineNr       guibg=#0a0a0a guifg=#ffff00

" -----------------------------------------------------------
" Sintaxe (Cores Padrão do Vim Escuro)
" -----------------------------------------------------------
highlight Comment      guifg=#00ffff guibg=NONE
highlight Constant     guifg=#ff00ff guibg=NONE
highlight Identifier   guifg=#00ffff guibg=NONE
highlight Statement    guifg=#ffff00 gui=bold
highlight PreProc      guifg=#ff00ff guibg=NONE
highlight Type         guifg=#00ff00 gui=bold
highlight Special      guifg=#ff00ff guibg=NONE
highlight Underlined   guifg=#00ffff gui=underline
highlight Todo         guifg=#000000 guibg=#ffff00

" -----------------------------------------------------------
" Interface
" -----------------------------------------------------------
" Barra de status
highlight StatusLine   guibg=#101010 guifg=#c0c0c0 gui=bold
highlight StatusLineNC guibg=#404040 guifg=#c0c0c0

" Menu de autocompletar
highlight Pmenu        guibg=#1a1a1a guifg=#c0c0c0
highlight PmenuSel     guibg=#ffff00 guifg=#000000 gui=bold
highlight PmenuSbar    guibg=#2a2a2a
highlight PmenuThumb   guibg=#808080

" Divisores e bordas
highlight VertSplit    guifg=#404040 guibg=#404040
highlight WinSeparator guifg=#404040 guibg=NONE
highlight NonText      guifg=#404040  guibg=NONE
highlight SignColumn   guibg=#0a0a0a guifg=#c0c0c0

" -----------------------------------------------------------
" Destaques
" -----------------------------------------------------------
highlight Search       guibg=#0000ff guifg=#ffffff
highlight IncSearch    guibg=#ffff00 guifg=#000000
highlight Visual       guibg=#404040 guifg=#ffffff
highlight MatchParen   guibg=#008080 guifg=#ffffff

" -----------------------------------------------------------
" Abas (TabLine)
" -----------------------------------------------------------
highlight TabLine      guibg=#000000  guifg=#c0c0c0
highlight TabLineSel   guibg=#101010  guifg=#ffffff gui=bold
highlight TabLineFill  guibg=#101010  guifg=#404040

" -----------------------------------------------------------
" Outros Ajustes
" -----------------------------------------------------------
" Diffs
highlight DiffAdd      guibg=#004000 guifg=#c0c0c0
highlight DiffChange   guibg=#000040 guifg=#c0c0c0
highlight DiffDelete   guibg=#400000 guifg=#c0c0c0
highlight DiffText     guibg=#ff0000 guifg=#ffffff gui=bold

" Mensagens
highlight ErrorMsg     guibg=#ff0000 guifg=#ffffff gui=bold
highlight WarningMsg   guifg=#ff0000 gui=bold
highlight ModeMsg      guifg=#ffffff gui=bold
highlight MoreMsg      guifg=#00ff00 gui=bold
highlight EndOfBuffer  guifg=#000000 guibg=NONE
