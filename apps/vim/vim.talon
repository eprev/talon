app: vim
-
insert (mode | here)$:
    key(i)
normal mode$: key(esc)
undo: key(u)
redo: key(ctrl-r)
bat (next | neck):
    key(g)
    key(t)
bat (previous | prev | last):
    key(g)
    key(T)

[<number>] <user.vim_arrows>$:
  insert("{number}" or "")
  key(vim_arrows)

#<user.vim_all>$:
#    insert("{vim_all}")
<user.vim_commands> (<user.vim_positions>) <user.vim_text_objects>$:
    key(vim_commands)
    insert("{vim_positions}" or "")
  key(vim_text_objects)

action(edit.find):
    key(/)
action(edit.find_next):
    key(n)
action(edit.word_left):
    key(b)
action(edit.word_right):
    key(w)
action(edit.line_start):
    key(^)
action(edit.line_end):
    key($)
action(edit.file_end):
    key(G)
action(edit.file_start):
    insert("gg")
action(edit.page_down):
    key(ctrl-f)
action(edit.page_up):
    key(ctrl-b)

action(edit.indent_more):
    insert(">>")
action(edit.indent_less):
    insert("<<")
action(edit.delete_line):
    insert("dd")

action(edit.redo):
    key(ctrl-r)
action(edit.undo):
    key(u)

action(edit.save):
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

refresh file:
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
