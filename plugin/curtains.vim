if !exists("g:curtains_lightscheme")
  let g:curtains_lightscheme="morning"
endif

if !exists("g:curtains_darkscheme")
  let g:curtains_darkscheme="molokai"
endif

if !exists("g:curtains_defaultscheme")
  let g:curtains_defaultscheme="light"
endif

" Toggle between colorschemes
command! LightScheme :exec "colorscheme ".g:curtains_lightscheme | :set background=light
command! DarkScheme :exec "colorscheme ".g:curtains_darkscheme | :set background=dark

function! CurtainsSetToDefault()
  if g:curtains_defaultscheme == "light"
    execute "LightScheme"
  elseif g:curtains_defaultscheme == "dark"
    execute "DarkScheme"
  endif
endfunction

execute CurtainsSetToDefault()
