from talon import Context, Module

mod = Module()

apps = mod.apps

# apple specific apps
apps.finder = """
os: mac
and app.bundle: com.apple.finder
"""

apps.terminal = """
os: mac
and app.bundle: com.apple.Terminal
"""
