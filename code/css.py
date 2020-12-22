from talon import Module, Context, actions

mod = Module()
ctx = Context()

@mod.capture(rule='({user.css_attributes})')
def css_attributes(m) -> str:
    return m.css_attributes

@mod.capture(rule='blank rule {user.css_attributes}')
def add_blank_rule(m) -> str:
    return f'{m.css_attributes}: ;'

@mod.capture(rule='rule {user.css_attributes} <user.text>')
def add_rule(m) -> str:
    value = actions.user.formatted_text(m.text, 'DASH_SEPARATED')
    if value == 'zero':
        value = 0
    return f'{m.css_attributes}: {value};'

@mod.capture(rule='color variable <user.text>')
def color_variable(m) -> str:
    value = actions.user.formatted_text(m.text, 'DASH_SEPARATED')
    return f'var(--color-{value})'

mod.list('css_attributes', desc='list of all CSS attributes')

ctx.lists['user.css_attributes'] = {
  'position': 'position',
  'box shadow': 'box-shadow',
  'border shorthand': 'border',
  'border width': 'border-width',
  'border style': 'border-style',
  'border color': 'border-color',
  'border radius': 'border-radius',
  'display': 'display',
  'zed index': 'z-index',
  'top': 'top',
  'left': 'left',
  'right': 'right',
  'bottom': 'bottom',
  'aline items': 'align-items',
  'justify content': 'justify-content',
  'flex direction': 'flex-direction',
  'order': 'order',
  'place content': 'place-content',
  'grid column': 'grid-column',
  'grid row': 'grid-row',
  'grid template columns': 'grid-template-columns',
  'grid template rows': 'grid-template-rows',
  'grid template areas': 'grid-template-areas',
  'opacity': 'opacity',
  'transform shorthand': 'transform',
  'transform origin': 'transform-origin',
  'text transform': 'text-transform',
  'color': 'color',
  'background color': 'background-color',
  'background': 'background',
  'font size': 'font-size',
  'font weight': 'font-weight',
  'font style': 'font-style',
  'font family': 'font-family',
  'text align': 'text-align',
  'text decoration': 'text-decoration',
  'letter spacing': 'letter-spacing',
  'width': 'width',
  'height': 'height',
  'max width': 'max-width',
  'max height': 'max-height',
  'line height': 'line-height',
  'padding top': 'padding-top',
  'padding left': 'padding-left',
  'padding right': 'padding-right',
  'padding bottom': 'padding-bottom',
  'padding shorthand': 'padding',
  'margin top': 'margin-top',
  'margin left': 'margin-left',
  'margin right': 'margin-right',
  'margin bottom': 'margin-bottom',
  'margin shorthand': 'margin',
  'filter': 'filter',
  'backdrop filter': 'backdrop-filter',
  'mixed blend mode': 'mix-blend-mode',
  'flex shorthand': 'flex',
  'pointer events': 'pointer-events',
  'overflow': 'overflow',
  'white space': 'white-space',
  'cursor': 'cursor',
  'clip path': 'clip-path',
  'animation shorthand': 'animation',
  'transition shorthand': 'transition',
  'transition length': 'transition-length',
  'will change': 'will-change',
  'blackface visibility': 'backface-visibility',
  'outline shorthand': 'outline',
  'outline offset': 'outline-offset',
  'outline color': 'outline-color',
  'content': 'content',
  'user select': 'user-select',
  'float': 'float',
}
