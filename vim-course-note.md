--- Files and Navigations ---

- :Ex => replace current buffer with explore 

- :Vex => vertical open
- :Sex => horizontal open

- <C-w> => window mode
- in window mode you can use <C-w-v> <C-w-s> for vertical split too

- to close all window except current buffer? <C-w-o>


--- Remaps ---

nnoremap <leader>pv :Vex<CR>

breaking down above command to

n  " i, v, c, t => this stands for mode
nore => no recursion execution
map <leader>pv :Vex<CR> => left side is for key to remap and right side is for execution target

:so % => source file at current buffer
% is pointing the current file



-- Edit --
not that useful rather using fuzzy finder
:e <C-d>


-- marks --

- press <m> and <yourmarkletter>
- to go to mark press <'> and <yourmakrletter>
- <c-^> to your move between previous file


-- jumps --

- :jumps to see the list of movement => <c-o> <c-i> to jump back and forth


-- tip --
<D> delete everything from cursor to end of the line
<C-a> if you not using tmux vim will increase number by 1
_ goes to first non space letter in line
dt<and letter you wanna delete till> delete till the letter you put

cc delete the line and change to insert mode


-- plugin--

1. install plug manager  (vim-plug)
https://github.com/junegunn/vim-plug


2. install fzf
https://github.com/junegunn/fzf.vim

```
call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()
```

    nnoremap <leader>gf :GFiles<CR>
    nnoremap <leader>pf :Files<CR>



3. color scheme
https://github.com/ayu-theme/ayu-vim



-- QuickFix--

there is something callled Rgrep written in rust btw
you can search contents of the files
command is :Rg and you can use it inside of fzf


you can send the resulf of search to quickfix by pressing tab


- without Rgrep and fzf
:grep SOCKET **/*.c
:copen open quickfix list
:cnext
:cprev


-- Search & Replace --

/ -> seach
n, N -> move around

:set hls ic -> set incremental search


you can set the visual region with v and press : to search in that area
:<aboveVisualCommand>s/tokenToReplace/ReplacingWorkd

:%s/tokenToReplace/ReplacingWorkd -> for whole file

:s/tokenToReplace/ReplacingWord -> for the cursor line



:s/tokenToReplace/ReplacingWord/g -> if you put g at the back it replace everyword

:s/tokenToReplace/ReplacingWord/gc -> every replace asking yes or no promt


-- Macro --

q is put you to the macro mode and put the letter you want to use as macro key
record start
after record press q to end record

and press @ with macro key to repeat macro
you can also put number to do multiple time <2@a> like so


-- Registers -- 

it just key value store you can check by :reg
some of them automatically fill up for me
I can also put in it by pressing "

for example if you want to register at b pressing -> "by

you can paste value at register b like -> "bp


