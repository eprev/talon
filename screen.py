from talon import ui, actions

ui.register('screen_lock', lambda e: actions.speech.disable())
# ui.register('screen_wake')
