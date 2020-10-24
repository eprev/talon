app: vim
-

settings():
    user.vim_debug = 1

insert (mode | here)$:
    user.vim_set_mode("i")
# insert <user.text>:
#     insert("i{text}")
#     key(escape)
# insert <user.unmodified_key>:
#     insert("i{unmodified_key}")
#     key(escape)
# append <user.text>:
#     insert("i{text}")
#     key(escape)
# append <user.unmodified_key>:
#     insert("i{unmodified_key}")
#     key(escape)

command$:
    user.vim_set_mode_np("c")

command <user.text>:
    user.vim_set_mode_np("c")
    insert("{text}")

normal mode$: key(esc)
undo:
    user.vim_set_mode("n")
    key(u)
redo: key(ctrl-r)
bat new: 
    user.vim_set_mode("n")
    insert(":tabe\n")
bat (next | neck):
    user.vim_set_mode("n")
    key(g)
    key(t)
bat (previous | prev | last):
    user.vim_set_mode("n")
    key(g)
    key(T)

<number> <user.vim_arrows>$:
  insert("{number}")
  key(vim_arrows)

<user.vim_commands> (<user.vim_positions>) <user.vim_text_objects>$:
    key(vim_commands)
    insert("{vim_positions}" or "")
  key(vim_text_objects)

action(edit.find):
    user.vim_set_mode_np("n")
    key(/)
action(edit.find_next):
    user.vim_set_mode_np("n")
    key(n)
action(edit.word_left):
    user.vim_set_mode("n")
    key(b)
action(edit.word_right):
    user.vim_set_mode("n")
    key(w)
action(edit.line_start):
    user.vim_set_mode("n")
    key(^)
action(edit.line_end):
    user.vim_set_mode("n")
    key($)
action(edit.file_end):
    user.vim_set_mode("n")
    key(G)
action(edit.file_start):
    user.vim_set_mode("n")
    insert("gg")
action(edit.page_down):
    user.vim_set_mode("n")
    key(ctrl-f)
action(edit.page_up):
    user.vim_set_mode("n")
    key(ctrl-b)

action(edit.indent_more):
    user.vim_set_mode("n")
    insert(">>")
action(edit.indent_less):
    user.vim_set_mode("n")
    insert("<<")
action(edit.delete_line):
    user.vim_set_mode("n")
    insert("dd")

(move | indent) right:
    user.vim_set_mode("n")
    insert(">>")
(move | indent) left:
    user.vim_set_mode("n")
    insert("<<")

action(edit.redo):
    key(ctrl-r)
action(edit.undo):
    user.vim_set_mode("n")
    insert("<<")

action(edit.save):
    user.vim_set_mode("n")
    insert(":w\n")
sage:
    insert(":w\n")
file save as:
    insert(":w ")
file save all:
    insert(":wa\n")
(file save and (quit|close)|squeak):
    insert(":wq\n")
file (close|quite):
    insert(":q\n")
force [file] (close|quit):
    insert(":q!\n")

(close|quit) all:
    insert(":qa\n")

force (close|quit) all:
    insert(":qa!\n")

file refresh:
    insert(":e!\n")
edit [file|new]:
    insert(":e ")

matching: key(%)
matching <user.symbol_key>: insert("f{symbol_key}%")

[go] (row|line) <number>:
    insert(":{number}\n")


show jump list: insert(":jumps\n")
clear jump list: insert(":clearjumps\n")
go (last|prev|previous) jump [entry]: key(ctrl-o)
go (next|newer) jump [entry]: key(ctrl-i)
(go|jump) [to] last change: insert("g;")
(go|jump) [to] next change: user.vim_normal_mode("g,")

scroll top: insert("zt")
scroll (center|middle): insert("zz")
scroll bottom: insert("zb")

wipe line: insert("0d$")
delete line: insert("dd")
(dup|duplicate) line: insert("Yp")
append line: key(A)
prepend line: key(I)

sort (selected | visual | highlighted):
    insert(":")
    # leave time for vim to populate '<,'>
    sleep(50ms)
    insert("sort\n")

replace [in] (selected | visual | highlighted):
    insert(":")
    # leave time for vim to populate '<,'>
    sleep(50ms)
    insert("s///g")
    key(left:3)

(visual | highlight) all: insert("ggVG")
reselect: insert("gv")


force last [comand]:
    key(: up ! enter)

magnet <user.unmodified_key>: insert("f{unmodified_key}")
magnet back <user.unmodified_key>: insert("F{unmodified_key}")

comment: insert("gcc")

open [current] (dear | directory): insert(":ed %%\n")
config reload: insert(",vs")

find <user.text>:
    user.vim_set_mode_np("n")
    key(/)
    insert("{text}")
    key(enter)
next:
    key(n)