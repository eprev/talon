import re
from talon import Module, Context, actions

ctx = Context()
mod = Module()
mod.apps.vim = r"""
title: /vim/i
app.bundle: com.apple.Terminal
"""

ctx.matches = r"""
app: vim
"""

mod.list("vim_arrows", desc="VIM direction keys")
mod.list("vim_commands", desc="List of available commands in VIM")
mod.list("vim_positions", desc="List of available positions in VIM")
mod.list("vim_text_objects", desc="List of available text objects in VIM")

ctx.lists["self.vim_arrows"] = {
    "left": "h",
    "right": "l",
    "up": "k",
    "down": "j",
}

ctx.lists["self.vim_commands"] =  {
    "change": "c",
    "delete": "d",
    "copy": "y",
    "select": "v"
}

ctx.lists["self.vim_positions"] = {
    "in": "i", 
    "inside": "i",
    "around": "a"
}

ctx.lists["self.vim_text_objects"] = {
    "word": "w",
    "paragraph": "p",
    "block": "b",
    "string": "'",
    "dubstring": '"',
    "parens": '(',
    "braces": '{',
    "brackets": '[',
}

@mod.capture
def vim_arrows(m) -> str:
    "An arrow direction to be converted to VIM direction"
    return m.vim_arrows

@ctx.capture(rule="{self.vim_arrows}")
def vim_arrows(m):
    return m.vim_arrows

@mod.capture
def vim_commands(m) -> str:
    "A command to be converted to VIM key"
    return m.vim_commands

@mod.capture
def vim_positions(m) -> str:
    "A position to be converted to VIM key"
    return m.vim_positions

@mod.capture
def vim_text_objects(m) -> str:
    "A text object to be converted to VIM key"
    return m.vim_text_objects

@ctx.capture(rule='{self.vim_commands}')
def vim_commands(m):
    return m.vim_commands

@ctx.capture(rule='{self.vim_positions}')
def vim_positions(m):
    return m.vim_positions

@ctx.capture(rule='{self.vim_text_objects}')
def vim_text_objects(m):
    return m.vim_text_objects

@ctx.action_class("win")
class win_actions:
    def filename():
        title = actions.win.title()
        m = re.search(r'VIM \((?P<file>.*?)@(?P<mode>\w+)\)', title)
        if m:
            result = m.group('file')
            # print(result)
            if "." in result:
                return result
        return ""

    def file_ext():
        ext = actions.win.filename().split(".")[-1]
        # print(ext)
        return ext

