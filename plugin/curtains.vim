if !exists("g:curtains_lightscheme")
  let g:curtains_lightscheme="morning"
endif

if !exists("g:curtains_darkscheme")
  let g:curtains_darkscheme="default"
endif

if !exists("g:curtains_defaultscheme")
  let g:curtains_defaultscheme="light"
endif

" Toggle between colorschemes
command! LightScheme :exec "colorscheme ".g:curtains_lightscheme | :set background=light
command! DarkScheme :exec "colorscheme ".g:curtains_darkscheme | :set background=dark

function s:getSystemTheme()
  if has('mac')
    let theme_output = system('defaults read -g AppleInterfaceStyle')

    if theme_output =~ "^Dark"
      return "DarkScheme"
    else
      return "LightScheme"
    endif
  endif

  echo "System theme detection not available on this system, defaulting to dark"
  return "DarkScheme"
endfunction

function! CurtainsSetToDefault()
  if g:curtains_defaultscheme == "light"
    execute "LightScheme"
  elseif g:curtains_defaultscheme == "dark"
    execute "DarkScheme"
  elseif g:curtains_defaultscheme == "system"
    let sys_scheme = s:getSystemTheme()

    execute sys_scheme
  endif
endfunction

execute CurtainsSetToDefault()
