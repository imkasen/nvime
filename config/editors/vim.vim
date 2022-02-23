"" 恢复光标形状
" https://vim.fandom.com/wiki/Change_cursor_shape_in_different_modes
if has('unix')
  " for Gnome-Terminal (version >= 3.16)
  if has("autocmd")
    au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
    au InsertEnter,InsertChange *
      \ if v:insertmode == 'i' | 
      \   silent execute '!echo -ne "\e[5 q"' | redraw! |
      \ elseif v:insertmode == 'r' |
      \   silent execute '!echo -ne "\e[3 q"' | redraw! |
      \ endif
    au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!  " works well for Gnome-Terminal
    " au VimLeave * silent execute '!echo -ne "\e[5 q"' | redraw!  " works well for Hyper and Gnome-Terminal
  endif
endif
