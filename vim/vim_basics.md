# Useful vim commands 

`q:` to list the past commands

Enter command mode while in insert mode `Esc` key

---------
Scrolling
---------
use C-e or C-y for moving the screen up or down by one line.
use C-d or C-u for moving half screen.
use C-f or C-B for moving full screen. 

Bring current line to middle, top and bottom - zz, zt and zb 

----------
Traversing
----------
- up - k, down -j, left -h, right -l
- go to a sepecific line use `<n>gg`
- can also be used like `<n>k`, `<n>j`
- top of the screen H, middle M, lower L  
- start of a document is gg
- end of a document is G

- word is delimited with `-!@#$%^&*()`
- Word is delimited with only white space

- w move to the start of next word
- W moves to the start of next WORD

- b goes to start of previous word, similarly for B
- e goes to the end of current word, similarly for E

- start of a line is 0, use ^ for non white character start
- end of a line is $ 


- `f<c>` takes the cursor to the first occurence of character `c` in the same line after the current position of cursor.
- `F<c>` does the same thing as f but take the cursor to closest occurence before the current position of the cursor.
- `t<c>` take the cursor to one character before the first occurence of character `c` in the same line after the current position of cursor. similarly for `T<c>`

-----------
Visual mode
-----------
- press v for visual mode
- use V for line Visual mode
- Use jk to select different number of lines, can also be used with <n>j , <n>k
- can also be used with `w,e,b, <n>w, <n>e, <n>b`


------
Buffer
------
- `:e` `#<n>` opens the <n> file in the buffer
- `:b#` opens the next file in the buffer

------
Delete
------
- x to delete a character 
- dw to delete a word, C-w can used in insert mode to delete character 
- 7dw to delete 7 words
- dd to delete a line
- 5dd to delete 5 lines
- use `"<n>d` for delete and keep the copy to a specific register `n`.

----
Copy
----
- Use y to yank(copy) the selected region
- yy copies the current line
- use "<n>y to use a specific register for copying

-----
Paste
-----
> Register
- Use `p` for pasting the yanked content. `P` to paste before the current location.
- use `"<n>p` for pasting from specific register

-----------
Insert Mode
-----------
- `i` to insert before the cursor, `I` would help adding text to the start of the line
- `a` to insert after the cursor, `A` would help to add text at the end of the line
- `o` to insert in a new line after the current line
- `O` to insert in a new line before the current line

- `u` to undo the last action
- `C-r` for redo the previous undo-ed action

-----------------
Buffers and files
-----------------

- `:bro` old shows a browser of all the old files opened in vim
- `:ls` gives the list of files currently in the buffer
- `:b#` opens the next file in the buffer


- gt for moving between tabs
- :tabe for creating new tab
- :close for closing the current tab

- `:q` closes the current vim buffer
- `:e` to open a new vi window for new file
- `:w` to write the current version to disk
- `:e #<n>` opens the <n> file in the buffer
- `:bw` wipe out the current window
- `:b#` to switch to the next window

-----------
Left Column
-----------
For setting the left column, we have two options
`:set numberwidth=12`
or
`:set foldcolumn=12`

---------------
Spliting window
---------------
- `:sp` filename for a horizontal split
- `:vsp` filename or `:vs` filename for a vertical split

----------
Formatting
----------

`N<<` or `N>>` to move N number of line down below to add or reduce
indendation.

------------------------------
Other application key bindings
------------------------------

bash shortcuts http://teohm.com/blog/shortcuts-to-move-faster-in-bash-command-line/

------------
Command mode 
------------
Use . repeated the previous command in the current cursor position

`:h <command>` to understand the mapping of the command

-----------------
working with tmux 
-----------------
- my prefix `<C-a>`
- use `<C-j|k|h|l>` to nativigate between the planes
- use prefix `+z` to reset the zoom of all the planes
- tmux runner default shortcuts https://github.com/christoomey/vim-tmux-runner/blob/master/doc/vim-tmux-runner.txt
- prefix `:resize-p -U <2>` for adjusting the pane sizes in tmux
- prefix `C-o` for cycling the panes
- prefix `<space>` for changing the layout - horizontal to vertical

        Mapping      |   Command
        -----------------------------
        <leader>va   |   VtrAttachToPane<cr>
        <leader>ror  |   VtrReorientRunner<cr>
        <leader>sc   |   VtrSendCommandToRunner<cr>
        <leader>sf   |   VtrSendFile<cr>
        <leader>sl   |   VtrSendLinesToRunner<cr>
        <leader>or   |   VtrOpenRunner<cr>
        <leader>kr   |   VtrKillRunner<cr>
        <leader>fr   |   VtrFocusRunner<cr>
        <leader>dr   |   VtrDetachRunner<cr>
        <leader>cr   |   VtrClearRunner<cr>
        <leader>fc   |   VtrFlushCommand<cr>

------------------------
Installing YouCompleteMe
------------------------

- command `/usr/local/bin/python3 install.py --clang-completer --go-completer --js-completer`
- reference `https://github.com/ycm-core/YouCompleteMe/issues/914`

------
netrw
------
- https://gist.github.com/t-mart/610795fcf7998559ea80

----------------
Jupyter notebook
----------------
- `<C-c>` to exit the insert mode and enter into normal mode
