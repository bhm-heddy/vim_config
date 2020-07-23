" Set compatibility to Vim only.
set nocompatible

" Initialisation de pathogen
call pathogen#infect()
call pathogen#helptags()

"highlight LineNr ctermfg=green

runtime! config/**/*.vim

""""ln -s ~/.vim/vimrc ~/.vimrc
