" Esquema de cores Frost Cyber - Day (Claro)
" Cores frias e relaxantes com tons suaves e graduais de azul
" Versão adaptada do tema claro (day)

" Limpar configurações anteriores
highlight clear
syntax reset
set background=light

" Configuração básica
let g:colors_name = "frost-cyber-day"

" -----------------------------------------------------------
" Cores Principais - Paleta Clara (Frost Cyber Day)
" -----------------------------------------------------------
" Fundos claros e suaves
let s:bg_main = "#F5F7FA"      " Fundo principal claro
let s:bg_soft = "#EBEEF2"      " Fundo secundário suave
let s:bg_metal = "#E0E4E8"     " Fundo metálico claro
let s:bg_glow = "#D5DAE0"      " Fundo brilho sutil

" Tons de cinza (base do texto no claro)
let s:gray_bright = "#2D3338"   " Cinza muito escuro (texto principal)
let s:gray_main = "#3B4147"     " Cinza escuro principal
let s:gray_soft = "#5C646B"     " Cinza médio suave
let s:gray_muted = "#8B939A"    " Cinza apagado (comentários)
let s:gray_dark = "#A9B0B7"     " Cinza claro (bordas)

" Tons de azul mais claros e harmoniosos (adaptados para fundo claro)
let s:blue_light = "#4A90C4"    " Azul claro principal
let s:blue_soft = "#6BA5D1"     " Azul suave (destaque médio)
let s:blue_pale = "#8DB9DE"     " Azul pálido (destaque suave)
let s:blue_ice = "#B0CFEA"      " Azul gelo bem claro
let s:blue_deep = "#2C6A9B"     " Azul profundo
let s:accent_blue = "#5A9FD1"   " Azul de acento

" Toques frios adicionais
let s:cyan_cold = "#6B9EBF"     " Ciano frio suave
let s:teal_cold = "#5A9A8A"     " Teal frio
let s:purple_cold = "#8A8ABF"   " Roxo acinzentado frio

" -----------------------------------------------------------
" Elementos Base da Interface
" -----------------------------------------------------------
highlight Normal       guibg=#F5F7FA guifg=#3B4147
highlight ColorColumn  guibg=#EBEEF2
highlight CursorLine   guibg=#EBEEF2 guifg=NONE
highlight CursorLineNr guibg=#E0E4E8 guifg=#8DB9DE gui=bold
highlight Cursor       guibg=#4A90C4 guifg=#F5F7FA

" Coluna de números
highlight LineNr       guibg=#EBEEF2 guifg=#8B939A
highlight LineNrAbove  guibg=#EBEEF2 guifg=#9BA3AB
highlight LineNrBelow  guibg=#EBEEF2 guifg=#9BA3AB

" -----------------------------------------------------------
" Sintaxe (tons frios com azul mais claro - versão claro)
" -----------------------------------------------------------
highlight Comment      guifg=#8B939A guibg=NONE gui=italic
highlight Constant     guifg=#5A9A8A guibg=NONE
highlight Identifier   guifg=#3B4147 guibg=NONE
highlight Statement    guifg=#5A9FD1 guibg=NONE gui=bold
highlight PreProc      guifg=#4A90C4 guibg=NONE
highlight Type         guifg=#5A9A8A guibg=NONE
highlight Special      guifg=#8A8ABF guibg=NONE
highlight Underlined   gui=underline guifg=#8DB9DE
highlight Todo         guifg=#F5F7FA guibg=#8DB9DE gui=bold

" Elementos específicos da sintaxe
highlight String       guifg=#5A9A8A guibg=NONE
highlight Number       guifg=#8A8ABF guibg=NONE
highlight Boolean      guifg=#8DB9DE guibg=NONE
highlight Function     guifg=#4A90C4 guibg=NONE
highlight Conditional  guifg=#5A9FD1 guibg=NONE gui=bold
highlight Repeat       guifg=#5A9FD1 guibg=NONE gui=bold
highlight Operator     guifg=#5C646B guibg=NONE
highlight Keyword      guifg=#5A9FD1 guibg=NONE gui=bold

" -----------------------------------------------------------
" Componentes de Interface (versão claro)
" -----------------------------------------------------------
" Barra de status
highlight StatusLine   guibg=#5A9FD1 guifg=#F5F7FA gui=bold
highlight StatusLineNC guibg=#E0E4E8 guifg=#8B939A

" Menu suspenso
highlight Pmenu        guibg=#E0E4E8 guifg=#3B4147
highlight PmenuSel     guibg=#4A90C4 guifg=#F5F7FA
highlight PmenuSbar    guibg=#F5F7FA
highlight PmenuThumb   guibg=#6BA5D1

" Divisórias
highlight VertSplit    guifg=#F5F7FA guibg=#F5F7FA
highlight WinSeparator guifg=#E0E4E8 guibg=#F5F7FA
highlight NonText      guifg=#A9B0B7 guibg=#F5F7FA
highlight SignColumn   guibg=#F5F7FA guifg=#3B4147

" Abas
highlight TabLine      guibg=#EBEEF2 guifg=#8B939A
highlight TabLineSel   guibg=#F5F7FA guifg=#8DB9DE gui=bold
highlight TabLineFill  guibg=#F5F7FA

" -----------------------------------------------------------
" Destaques e Interação
" -----------------------------------------------------------
" Busca e seleção
highlight Search       guibg=#6BA5D1 guifg=#F5F7FA
highlight IncSearch    guibg=#8DB9DE guifg=#3B4147
highlight Visual       guibg=#E0E4E8 guifg=#3B4147
highlight MatchParen   guibg=#D0DCE8 guifg=#8DB9DE gui=bold

" Diff
highlight DiffAdd      guibg=#E8F0EC guifg=#5A9A8A
highlight DiffChange   guibg=#E8EEF5 guifg=#4A90C4
highlight DiffDelete   guibg=#F0E8EC guifg=#8A8ABF
highlight DiffText     guibg=#5A9FD1 guifg=#F5F7FA

" -----------------------------------------------------------
" Outros Elementos
" -----------------------------------------------------------
highlight Folded       guibg=#EBEEF2 guifg=#8B939A
highlight FoldColumn   guibg=#F5F7FA guifg=#9BA3AB
highlight EndOfBuffer  guifg=#F5F7FA guibg=#F5F7FA

" Mensagens
highlight ErrorMsg     guibg=#8A8ABF guifg=#F5F7FA
highlight WarningMsg   guibg=#4A90C4 guifg=#F5F7FA
highlight ModeMsg      guifg=#8DB9DE guibg=NONE gui=bold
highlight MoreMsg      guifg=#4A90C4 guibg=NONE

" -----------------------------------------------------------
" Git e versionamento
" -----------------------------------------------------------
highlight GitGutterAdd    guifg=#5A9A8A guibg=#F5F7FA
highlight GitGutterChange guifg=#4A90C4 guibg=#F5F7FA
highlight GitGutterDelete guifg=#8A8ABF guibg=#F5F7FA

" -----------------------------------------------------------
" Exploradores de arquivos
" -----------------------------------------------------------
highlight Directory    guifg=#8DB9DE guibg=#F5F7FA

" -----------------------------------------------------------
" Verificação ortográfica
" -----------------------------------------------------------
highlight SpellBad     gui=undercurl guisp=#8A8ABF
highlight SpellCap     gui=undercurl guisp=#8DB9DE
highlight SpellRare    gui=undercurl guisp=#4A90C4
highlight SpellLocal   gui=undercurl guisp=#5A9A8A

" -----------------------------------------------------------
" Destaques específicos
" -----------------------------------------------------------
highlight Title        guifg=#8DB9DE guibg=NONE gui=bold
highlight Question     guifg=#4A90C4 guibg=NONE
highlight SpecialKey   guifg=#A9B0B7 guibg=NONE
highlight Whitespace   guifg=#EBEEF2 guibg=NONE

" -----------------------------------------------------------
" Áreas flutuantes
" -----------------------------------------------------------
highlight NormalFloat  guibg=#E0E4E8 guifg=#3B4147
highlight FloatBorder  guibg=#F5F7FA guifg=#4A90C4

" -----------------------------------------------------------
" Links para consistência
" -----------------------------------------------------------
highlight! link NERDTreeOpenable Directory
highlight! link NERDTreeClosable Directory
highlight! link NERDTreeExecFile String
highlight! link NERDTreeLinkTarget Type

" -----------------------------------------------------------
" Neo-tree (explorador do AstroNvim) - Versão harmoniosa clara
" -----------------------------------------------------------
" Fundo principal do explorador (tom mais escuro que o main, porém claro)
highlight NeoTreeNormal       guibg=#D5DAE0 guifg=#3B4147
highlight NeoTreeNormalNC     guibg=#D5DAE0 guifg=#5C646B
highlight NeoTreeFloatNormal  guibg=#D5DAE0 guifg=#3B4147
highlight NeoTreeWinSeparator guibg=#D5DAE0 guifg=#BCC1C8

" Fundo do título e cabeçalho (um pouco mais escuro para contraste)
highlight NeoTreeTitleBar     guibg=#C8CDD4 guifg=#4A90C4
highlight NeoTreeHeader       guibg=#C8CDD4 guifg=#4A90C4
highlight NeoTreeHeaderTitle  guibg=#C8CDD4 guifg=#4A90C4

" Fundo do rodapé
highlight NeoTreeFooter       guibg=#C8CDD4 guifg=#8B939A
highlight NeoTreeStatusLine   guibg=#C8CDD4 guifg=#5C646B
highlight NeoTreeEndOfBuffer  guibg=#D5DAE0 guifg=#D5DAE0

" Scrollbar
highlight NeoTreeScrollbar    guibg=#C8CDD4 guifg=#A9B0B7
highlight NeoTreeScrollbarThumb guibg=#8B939A

" Linha do cursor (mais clara para destaque)
highlight NeoTreeCursorLine   guibg=#C8CDD4

" Ícones e nomes de diretórios (cores do tema)
highlight NeoTreeDirIcon      guifg=#4A90C4 guibg=NONE
highlight NeoTreeDirectoryName guifg=#4A90C4 guibg=NONE gui=bold
highlight NeoTreeFileName     guifg=#3B4147 guibg=NONE
highlight NeoTreeFileNameOpened guifg=#4A90C4 guibg=NONE gui=bold

" Git status (cores suaves do tema)
highlight NeoTreeGitAdded     guifg=#5A9A8A guibg=NONE
highlight NeoTreeGitModified  guifg=#4A90C4 guibg=NONE
highlight NeoTreeGitDeleted   guifg=#8A8ABF guibg=NONE
highlight NeoTreeGitIgnored   guifg=#8B939A guibg=NONE

" Marcadores de indentação (sutis)
highlight NeoTreeIndentMarker guifg=#A9B0B7 guibg=NONE

" Mensagens e avisos
highlight NeoTreeMessage      guifg=#4A90C4 guibg=NONE
highlight NeoTreeInfo         guifg=#5A9A8A guibg=NONE
highlight NeoTreeWarn         guifg=#6BA5D1 guibg=NONE
highlight NeoTreeError        guifg=#8A8ABF guibg=NONE

" Popups e menus
highlight NeoTreePopup        guibg=#C8CDD4 guifg=#3B4147
highlight NeoTreePopupBorder  guibg=#C8CDD4 guifg=#4A90C4

" Garantir que o tema seja aplicado completamente
set termguicolors
