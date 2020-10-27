tag: terminal
-
mux: "tmux "

#session management
mux new session:
    insert('tmux new ')
mux sessions:
    key(ctrl-s)
    key(s)
mux name session:
    key(ctrl-s)
    key($)
mux kill session:
    insert('tmux kill-session -t ')
mux config save:
    key(ctrl-s)
    key(S)
mux config load:
    key(ctrl-s)
    key(R)
#window management
mux new window:
    key(ctrl-s)
    key(c)
mux window <number_small>:
    key(ctrl-s )
    key('{number_small}')
mux previous window:
    key(ctrl-s)
    key(p)
mux next window:
    key(ctrl-s)
    key(n)
mux rename window:
    key(ctrl-s)
    key(,)
mux close window:
    key(ctrl-s)
    key(&)
#pane management
mux split horizontal:
    key(ctrl-s)
    key(%)
mux split vertical:
    key(ctrl-s)
    key(")
mux next pane:
    key(ctrl-s)
    key(o)
mux move <user.arrow_key>:
    key(ctrl-s)
    key(arrow_key)
mux close pane:
    key(ctrl-s)
    key(x)
#Say a number right after this command, to switch to pane
mux pane numbers:
    key(ctrl-s)
    key(q)
