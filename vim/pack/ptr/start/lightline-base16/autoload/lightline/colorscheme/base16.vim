" Base16 color pairs
let s:base00 = [ '#' . g:base16_gui00, g:base16_cterm00 ]
let s:base01 = [ '#' . g:base16_gui01, g:base16_cterm01 ]
let s:base02 = [ '#' . g:base16_gui02, g:base16_cterm02 ]
let s:base03 = [ '#' . g:base16_gui03, g:base16_cterm03 ]
let s:base04 = [ '#' . g:base16_gui04, g:base16_cterm04 ]
let s:base05 = [ '#' . g:base16_gui05, g:base16_cterm05 ]
let s:base06 = [ '#' . g:base16_gui06, g:base16_cterm06 ]
let s:base07 = [ '#' . g:base16_gui07, g:base16_cterm07 ]
let s:base08 = [ '#' . g:base16_gui08, g:base16_cterm08 ]
let s:base09 = [ '#' . g:base16_gui09, g:base16_cterm09 ]
let s:base0A = [ '#' . g:base16_gui0A, g:base16_cterm0A ]
let s:base0B = [ '#' . g:base16_gui0B, g:base16_cterm0B ]
let s:base0C = [ '#' . g:base16_gui0C, g:base16_cterm0C ]
let s:base0D = [ '#' . g:base16_gui0D, g:base16_cterm0D ]
let s:base0E = [ '#' . g:base16_gui0E, g:base16_cterm0E ]
let s:base0F = [ '#' . g:base16_gui0F, g:base16_cterm0F ]

" Lightline theme
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left     = [ [ s:base01, s:base0D, 'bold' ], [ s:base04, s:base02 ] ]
let s:p.insert.left     = [ [ s:base01, s:base0B, 'bold' ], [ s:base04, s:base02 ] ]
let s:p.visual.left     = [ [ s:base01, s:base0E, 'bold' ], [ s:base04, s:base02 ] ]
let s:p.replace.left    = [ [ s:base01, s:base08, 'bold' ], [ s:base04, s:base02 ] ]
let s:p.inactive.left   = [ [ s:base03, s:base01 ] ]
let s:p.normal.middle   = [ [ s:base03, s:base01 ] ]
let s:p.inactive.middle = [ [ s:base03, s:base01 ] ]
let s:p.normal.right    = [ [ s:base01, s:base0D ], [ s:base04, s:base02 ] ]
let s:p.insert.right    = [ [ s:base01, s:base0B ], [ s:base04, s:base02 ] ]
let s:p.visual.right    = [ [ s:base01, s:base0E ], [ s:base04, s:base02 ] ]
let s:p.replace.right   = [ [ s:base01, s:base08 ], [ s:base04, s:base02 ] ]
let s:p.inactive.right  = [ [ s:base03, s:base01 ] ]
let s:p.normal.error    = [ [ s:base0A, s:base08 ] ]
let s:p.normal.warning  = [ [ s:base08, s:base0A ] ]
let s:p.tabline.left    = [ [ s:base05, s:base02 ] ]
let s:p.tabline.middle  = [ [ s:base05, s:base01 ] ]
let s:p.tabline.right   = [ [ s:base05, s:base02 ] ]
let s:p.tabline.tabsel  = [ [ s:base02, s:base0A ] ]

let g:lightline#colorscheme#base16#palette = lightline#colorscheme#flatten(s:p)
