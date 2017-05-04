# dotfiles
TMUX & VIM

Tmux:  
**set** is alias for *set-option*  
**setw** is alias for *set-window-option*  
	If -g is given, the global session or window option is set


Defaults:  
Tmux split window (into panes):  
Horizontally: PREFIX “  
Vertically:     PREFIX %  
Tmux switch pane: PREFIX plus navigation keys  
  
Vim split window (into panes):  
Horizontally: :sp (file_name)  
Vertically:      :vsp (file_name)  
Vim switch pane: ctrl-c + one of the directional keys  


Goal is to redefine keys for switching panes for both, tmux and vim, in order to use same key combination:  
Ctrl+directional_key  
In that way, if there are multiple panes in tmux window, and one tmux pane contains vim splitted into multiple panes, all panes are equal regardless their origin is from tmux or vim.  

To achieve this, we can use [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) to set up these vim key bindings, but also to set up similar key bindings for tmux pane navigation.  
Reference:  
https://blog.bugsnag.com/tmux-and-vim/  

As it is suggested, vim-tmux-navigator is installed using [Vundle](https://github.com/VundleVim/Vundle.vim) for vim, and Tmux Plugin Manager ([TPM](https://github.com/tmux-plugins/tpm)) for tmux.  


Vim opens new split panes to the up and left by default.  
In order to change this to down and right, which feels more naturally, add following lines to the .vimrc, below the plugins:  
set splitbelow  
set splitright  

If NERDtree displays some odd characters and cannot enter dir with enter, add this to ~/.bashrc:  
export LC_CTYPE=en_US.UTF-8  
export LC_ALL=en_US.UTF-8

- git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
- tmux, ctrl-a + I
- git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
- git clone https://github.com/tomasr/molokai
- ~/.vim/colors/ && cp molokai/colors/molokai.vim ~/.vim/colors/
- git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
- vim, :PluginInstall
