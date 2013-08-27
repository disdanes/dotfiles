" =============================================================================
" Filename: autoload/lightline/colorscheme/Tomorrow.vim
" Version: 0.0
" Author: itchyny
" License: MIT License
" Last Change: 2013/08/27 00:49:07.
" =============================================================================
let s:base03 = '#fafafa'
let s:base023 = '#dfdfdf'
let s:base02 = '#c8c8c8'
let s:base01 = '#b4b4b4'
let s:base00 = '#808080'
let s:base0 = '#666666'
let s:base1 = '#555555'
let s:base2 = '#4f4f4f'
let s:base3 = '#4d4d4c'
let s:red = '#c82829'
let s:orange = '#f5871f'
let s:yellow = '#eab700'
let s:green = '#718c00'
let s:cyan = '#3e999f'
let s:blue = '#4271ae'
let s:magenta = '#8959a8'

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}}
let s:p.normal.left = [ [ s:base02, s:blue ], [ s:base3, s:base01 ] ]
let s:p.normal.right = [ [ s:base02, s:base0 ], [ s:base1, s:base01 ] ]
let s:p.inactive.right = [ [ s:base02, s:base00 ], [ s:base00, s:base02 ] ]
let s:p.inactive.left =  [ [ s:base0, s:base02 ], [ s:base00, s:base03 ] ]
let s:p.insert.left = [ [ s:base02, s:green ], [ s:base3, s:base01 ] ]
let s:p.replace.left = [ [ s:base02, s:orange ], [ s:base3, s:base01 ] ]
let s:p.visual.left = [ [ s:base02, s:magenta ], [ s:base3, s:base01 ] ]
let s:p.normal.middle = [ [ s:base0, s:base02 ] ]
let s:p.inactive.middle = [ [ s:base0, s:base02 ] ]

let g:lightline#colorscheme#Tomorrow#palette = lightline#colorscheme#fill(s:p)
