" Esquema de cores Frost Cyber - Azul mais claro e harmonioso
" Cores frias e relaxantes com tons suaves e graduais

" Limpar configurações anteriores
highlight clear
syntax reset
set background=dark

" Configuração básica
let g:colors_name = "frost_cyber"

" -----------------------------------------------------------
" Cores Principais (Paleta fria com azul mais claro)
" -----------------------------------------------------------
let s:bg_main = "#1E2020"      " Fundo principal
let s:bg_soft = "#262828"      " Fundo secundário (+8)
let s:bg_metal = "#2D3030"     " Fundo metálico (+15)
let s:bg_glow = "#343737"      " Fundo brilho sutil (+22)

" Tons de cinza (base do texto)
let s:gray_bright = "#D4D8DB"   " Cinza muito claro
let s:gray_main = "#C0C7CA"     " Cinza principal
let s:gray_soft = "#8D959A"     " Cinza suave
let s:gray_muted = "#646F78"    " Cinza apagado (comentários)
let s:gray_dark = "#4A5258"     " Cinza escuro

" Tons de azul mais claros e harmoniosos
let s:blue_light = "#5D9BD5"    " Azul claro principal (mais harmonioso)
let s:blue_soft = "#3D7BB5"     " Azul suave (destaque médio)
let s:blue_pale = "#8DB5D9"     " Azul pálido (destaque suave)
let s:blue_ice = "#B0CCE6"      " Azul gelo bem claro
let s:blue_deep = "#2A5A8A"     " Azul profundo (fundos)
let s:accent_blue = "#4A8EC7"   " Azul de acento (mais claro que 165398)

" Toques frios adicionais
let s:cyan_cold = "#7BA5BF"     " Ciano frio suave
let s:teal_cold = "#6B9A9A"     " Teal frio
let s:purple_cold = "#8A8ABF"   " Roxo acinzentado frio

" -----------------------------------------------------------
" Elementos Base da Interface (com gradiente suave)
" -----------------------------------------------------------
highlight Normal       guibg=#1E2020 guifg=#C0C7CA
highlight ColorColumn  guibg=#262828
highlight CursorLine   guibg=#262828 guifg=NONE
highlight CursorLineNr guibg=#2D3030 guifg=#8DB5D9 gui=bold
highlight Cursor       guibg=#5D9BD5 guifg=#1E2020

" Coluna de números com gradiente de tons (mais claro progressivo)
highlight LineNr       guibg=#262828 guifg=#646F78
highlight LineNrAbove  guibg=#262828 guifg=#7A8590
highlight LineNrBelow  guibg=#262828 guifg=#7A8590

" -----------------------------------------------------------
" Sintaxe (tons frios com azul mais claro)
" -----------------------------------------------------------
highlight Comment      guifg=#646F78 guibg=NONE gui=italic
highlight Constant     guifg=#6B9A9A guibg=NONE
highlight Identifier   guifg=#C0C7CA guibg=NONE
highlight Statement    guifg=#4A8EC7 guibg=NONE gui=bold
highlight PreProc      guifg=#5D9BD5 guibg=NONE
highlight Type         guifg=#6B9A9A guibg=NONE
highlight Special      guifg=#8A8ABF guibg=NONE
highlight Underlined   gui=underline guifg=#8DB5D9
highlight Todo         guifg=#1E2020 guibg=#8DB5D9 gui=bold

" Elementos específicos da sintaxe
highlight String       guifg=#6B9A9A guibg=NONE
highlight Number       guifg=#8A8ABF guibg=NONE
highlight Boolean      guifg=#8DB5D9 guibg=NONE
highlight Function     guifg=#5D9BD5 guibg=NONE
highlight Conditional  guifg=#4A8EC7 guibg=NONE gui=bold
highlight Repeat       guifg=#4A8EC7 guibg=NONE gui=bold
highlight Operator     guifg=#8D959A guibg=NONE
highlight Keyword      guifg=#4A8EC7 guibg=NONE gui=bold

" -----------------------------------------------------------
" Componentes de Interface (tons variados e harmoniosos)
" -----------------------------------------------------------
" Barra de status
highlight StatusLine   guibg=#3D7BB5 guifg=#D4D8DB gui=bold
highlight StatusLineNC guibg=#2D3030 guifg=#646F78

" Menu suspenso
highlight Pmenu        guibg=#2D3030 guifg=#C0C7CA
highlight PmenuSel     guibg=#5D9BD5 guifg=#1E2020
highlight PmenuSbar    guibg=#1E2020
highlight PmenuThumb   guibg=#3D7BB5

" Divisórias
highlight VertSplit    guifg=#1E2020 guibg=#1E2020
highlight WinSeparator guifg=#2D3030 guibg=#1E2020
highlight NonText      guifg=#4A5258 guibg=#1E2020
highlight SignColumn   guibg=#1E2020 guifg=#C0C7CA

" Abas (com gradiente)
highlight TabLine      guibg=#262828 guifg=#646F78
highlight TabLineSel   guibg=#1E2020 guifg=#8DB5D9 gui=bold
highlight TabLineFill  guibg=#1E2020

" -----------------------------------------------------------
" Destaques e Interação (com azul mais claro)
" -----------------------------------------------------------
" Busca e seleção
highlight Search       guibg=#3D7BB5 guifg=#D4D8DB
highlight IncSearch    guibg=#8DB5D9 guifg=#1E2020
highlight Visual       guibg=#2D3030 guifg=#C0C7CA
highlight MatchParen   guibg=#2A4A66 guifg=#8DB5D9 gui=bold

" Diff
highlight DiffAdd      guibg=#1E2A24 guifg=#6B9A9A
highlight DiffChange   guibg=#1E2A32 guifg=#5D9BD5
highlight DiffDelete   guibg=#2A2024 guifg=#8A8ABF
highlight DiffText     guibg=#4A8EC7 guifg=#D4D8DB

" -----------------------------------------------------------
" Outros Elementos
" -----------------------------------------------------------
highlight Folded       guibg=#262828 guifg=#646F78
highlight FoldColumn   guibg=#1E2020 guifg=#7A8590
highlight EndOfBuffer  guifg=#1E2020 guibg=#1E2020

" Mensagens
highlight ErrorMsg     guibg=#8A8ABF guifg=#D4D8DB
highlight WarningMsg   guibg=#5D9BD5 guifg=#1E2020
highlight ModeMsg      guifg=#8DB5D9 guibg=NONE gui=bold
highlight MoreMsg      guifg=#5D9BD5 guibg=NONE

" -----------------------------------------------------------
" Git e versionamento
" -----------------------------------------------------------
highlight GitGutterAdd    guifg=#6B9A9A guibg=#1E2020
highlight GitGutterChange guifg=#5D9BD5 guibg=#1E2020
highlight GitGutterDelete guifg=#8A8ABF guibg=#1E2020

" -----------------------------------------------------------
" NERDTree e file explorers
" -----------------------------------------------------------
highlight Directory    guifg=#8DB5D9 guibg=#1E2020

" -----------------------------------------------------------
" Verificação ortográfica
" -----------------------------------------------------------
highlight SpellBad     gui=undercurl guisp=#8A8ABF
highlight SpellCap     gui=undercurl guisp=#8DB5D9
highlight SpellRare    gui=undercurl guisp=#5D9BD5
highlight SpellLocal   gui=undercurl guisp=#6B9A9A

" -----------------------------------------------------------
" Destaques específicos
" -----------------------------------------------------------
highlight Title        guifg=#8DB5D9 guibg=NONE gui=bold
highlight Question     guifg=#5D9BD5 guibg=NONE
highlight SpecialKey   guifg=#4A5258 guibg=NONE
highlight Whitespace   guifg=#262828 guibg=NONE

" -----------------------------------------------------------
" Áreas flutuantes
" -----------------------------------------------------------
highlight NormalFloat  guibg=#2D3030 guifg=#C0C7CA
highlight FloatBorder  guibg=#1E2020 guifg=#5D9BD5

" -----------------------------------------------------------
" Links para consistência
" -----------------------------------------------------------
highlight! link NERDTreeOpenable Directory
highlight! link NERDTreeClosable Directory
highlight! link NERDTreeExecFile String
highlight! link NERDTreeLinkTarget Type

" Garantir que o tema seja aplicado completamente
set termguicolors

