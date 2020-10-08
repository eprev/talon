question [mark]: "?"
(downscore | underscore): "_"
double dash: "--"
(bracket | brack | left bracket): "{"
(rbrack | are bracket | right bracket): "}"
triple quote: "'''"
(dot dot | dotdot): ".."
#ellipses: "…"
ellipses: "..."
(comma and | spamma): ", "
plus: "+"
arrow: "->"
fat arrow: "=>"
new line: "\\n"
carriage return: "\\r"
line feed: "\\r\\n"
empty dubstring:
    '""'
    key(left)
empty escaped (dubstring|dub quotes):
    '\\"\\"'
    key(left)
    key(left)
empty string:
    "''"
    key(left)
empty escaped string:
    "\\'\\'"
    key(left)
    key(left)
(empty parens | args):
	insert("()")
	key(left)
empty (squares | list): 
	insert("[]") 
	key(left)
empty (bracket | braces): 
	insert("{}") 
	key(left)
empty percent: 
	insert("%%") 
	key(left)
empty quotes:
	insert('""')
	key(left)
angle this: 
    text = edit.selected_text()
    user.paste("<{text}>")
(bracket | brace) this: 
    text = edit.selected_text()
    user.paste("{{{text}}}")
(parens | args) this: 
    text = edit.selected_text()
    user.paste("({text})")
percent this: 
    text = edit.selected_text()
    user.paste("%{text}%")
quote this:
    text = edit.selected_text()
    user.paste('"{text}"')

