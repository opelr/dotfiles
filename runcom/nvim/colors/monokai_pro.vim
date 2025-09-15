" Vim color file
" Author: Viet Phan
" Colorscheme Name: monokai pro
" Inspired by https://www.monokai.pro/

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "monokai_pro"

" Default group
hi Cursor ctermfg=236 ctermbg=231 cterm=NONE guifg=#2d2a2e guibg=#fcfcfa gui=NONE
hi SignColumn ctermfg=NONE ctermbg=237 cterm=NONE guibg=#3a3a3a guifg=NONE guisp=NONE gui=NONE
hi Visual ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#403e41 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#423f42 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#423f42 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#423f42 gui=NONE
hi LineNr ctermfg=246 ctermbg=59 cterm=NONE guifg=#959394 guibg=#423f42 gui=NONE
hi VertSplit ctermfg=59 ctermbg=59 cterm=NONE guifg=#696769 guibg=#696769 gui=NONE
hi MatchParen ctermfg=204 ctermbg=NONE cterm=underline guifg=#ff6188 guibg=NONE gui=underline
hi StatusLine ctermfg=231 ctermbg=59 cterm=bold guifg=#fcfcfa guibg=#696769 gui=bold
hi StatusLineNC ctermfg=231 ctermbg=59 cterm=NONE guifg=#fcfcfa guibg=#696769 gui=NONE
hi Pmenu ctermfg=150 ctermbg=NONE cterm=NONE guifg=#a9dc76 guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#403e41 gui=NONE
hi IncSearch ctermfg=236 ctermbg=221 cterm=NONE guifg=#2d2a2e guibg=#ffd866 gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=209 ctermbg=NONE cterm=NONE guifg=#fc9867 guibg=NONE gui=NONE
hi Folded ctermfg=189 ctermbg=60 cterm=NONE guifg=#d7d7ff guibg=#5f5f87 gui=NONE
hi Normal ctermfg=231 ctermbg=236 cterm=NONE guifg=#fcfcfa guibg=#2d2a2e gui=NONE
hi Boolean ctermfg=147 ctermbg=NONE cterm=NONE guifg=#ab9df2 guibg=NONE gui=NONE
hi Character ctermfg=147 ctermbg=NONE cterm=NONE guifg=#ab9df2 guibg=NONE gui=NONE
hi Comment ctermfg=59 ctermbg=NONE cterm=NONE guifg=#727072 guibg=NONE gui=italic
hi Conditional ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff6188 guibg=NONE gui=NONE
hi Constant ctermfg=147 ctermbg=NONE cterm=NONE guifg=#ab9df2 guibg=NONE gui=NONE
hi Define ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff6188 guibg=NONE gui=NONE
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=#fcfcfa guibg=#47840e gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8c0809 guibg=NONE gui=NONE
hi DiffChange ctermfg=231 ctermbg=23 cterm=NONE guifg=#fcfcfa guibg=#273a5b gui=NONE
hi DiffText ctermfg=231 ctermbg=24 cterm=bold guifg=#fcfcfa guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Float ctermfg=147 ctermbg=NONE cterm=NONE guifg=#ab9df2 guibg=NONE gui=NONE
hi Function ctermfg=150 ctermbg=NONE cterm=NONE guifg=#a9dc76 guibg=NONE gui=NONE
hi Identifier ctermfg=116 ctermbg=NONE cterm=NONE guifg=#78dce8 guibg=NONE gui=italic
hi Keyword ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff6188 guibg=NONE gui=NONE
hi Label ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff6188 guibg=NONE gui=NONE
hi NonText ctermfg=240 ctermbg=236 cterm=NONE guifg=#5b595c guibg=#2d2a2e gui=NONE
hi Number ctermfg=147 ctermbg=NONE cterm=NONE guifg=#ab9df2 guibg=NONE gui=NONE
hi Special ctermfg=147 ctermbg=NONE cterm=NONE guifg=#ab9df2 guibg=NONE gui=NONE
hi Operator ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff6188 guibg=NONE gui=NONE
hi PreProc ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff6188 guibg=NONE gui=NONE
hi SpecialKey ctermfg=240 ctermbg=59 cterm=NONE guifg=#5b595c guibg=#423f42 gui=NONE
hi Statement ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff6188 guibg=NONE gui=NONE
hi StorageClass ctermfg=116 ctermbg=NONE cterm=NONE guifg=#78dce8 guibg=NONE gui=italic
hi String ctermfg=221 ctermbg=NONE cterm=NONE guifg=#ffd866 guibg=NONE gui=NONE
hi Tag ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff6188 guibg=NONE gui=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#fcfcfa guibg=NONE gui=bold
hi Todo ctermfg=231 ctermbg=NONE cterm=inverse,bold guifg=#fcfcfa guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=116 ctermbg=NONE cterm=NONE guifg=#78dce8 guibg=NONE gui=italic
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline

" Color for custom group
" hi EndColons ctermfg=246 ctermbg=NONE cterm=NONE guifg=#939293 guibg=NONE gui=NONE
" hi link Braces EndColons
" hi link Parens EndColons
" hi link Brackets EndColons
" hi link Arrow EndColons

" Custom group
" syn match EndColons /[;,]/
" syn match Braces /[\[\]]/
" syn match Parens /[()]/
" syn match Brackets /[{}]/
" syn match Arrow /->/

" HTML
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=147 ctermbg=NONE cterm=NONE guifg=#ab9df2 guibg=NONE gui=NONE


" XML
hi XmlTagName ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff6188 guibg=NONE gui=NONE
hi XmlTag ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff6188 guibg=NONE gui=NONE
hi XmlEndTag ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff6188 guibg=NONE gui=NONE

" YAML
hi yamlKey ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff6188 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=231 ctermbg=NONE cterm=NONE guifg=#fcfcfa guibg=NONE gui=NONE
hi yamlAlias ctermfg=231 ctermbg=NONE cterm=NONE guifg=#fcfcfa guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=221 ctermbg=NONE cterm=NONE guifg=#ffd866 guibg=NONE gui=NONE
