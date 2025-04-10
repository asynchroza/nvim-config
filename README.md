# Notes 

## Git

`:Git blame` - if you want to check difference between different commits 
`:GBrowse` - if you want to open blamed line in Github 
`<leader>df` - if you want to check difference between current file and the last commit 

## Tabs - `:help tabpage`  

Instead of opening multiple instances of vim in different terminal tabs when using dadbod for querying databases, use vim tabs.  

open new tab - `:tabnew`   
go to next tab - `gt`  

## Windows - `:help window`  

Move to a window - `ctrl-w <direction - hjkl>`  
Move to the next window - `alt-w`  
Increase height of window - `ctrl-w <n>+` - `ctrl-w 10+`  

# Misc  

## Tmux  

`ctrl-b %` - split veritally  
`ctrl-b "` - split horizontally  
`ctrl-b <direction>` - move to direction  
`exit or ctrl-d` - close pane  
`ctrl-b c` - create new window  
`ctrl-b n` - move to next window  
`ctrl-b <number>` - move to window number  

[Tmux Guide](https://hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/)  
[Fix For Propagating Keys Through Tmux
](https://gist.github.com/asynchroza/a4b52e2c00427e70731def4401a42570)

# VIM Motions

- `ci<symbol>` - delete between the pattern starting with the symbol and closing symbol - `ci(` will delete the arguments in the brackets - `function(arg1, arg2, arg3)`
