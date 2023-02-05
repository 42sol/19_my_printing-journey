---
tags: [python, ios]
---

[App](pythonista://)

## QR Codes (iphone)

```python
s = 'https://bit.ly/haeberle2023'

import qrcode

image = qrcode.make(s)
image.save('qr_2023.png')
```


## others (icloud)
-- shared with ipad
svg and logic blocks (all empty?)
- [ ] MAYBE Pythonista scripts review when online/ @ipad

## CLI (iphone)

```python
import click
g_min = 3
g_max = 12
@click.command()
@click.option('--level', prompt='Level', help='Level ID.')
@click.option('--min', prompt='min', default=g_min,
              help='minimum')
@click.option('--max', prompt='max', default=g_max,
              help='maximum')
def add_level(level, min, max):
    """Simple program that greets NAME for a total of COUNT times."""
    global g_min, g_max
    g_min = min
    g_max = max
    click.echo(f'[{min}..{max}]')

if __name__ == '__main__':
  for i in range(1,5):
    print(i)
    add_level()
``` 

![[Stadler_Rail_logotype.svg]]

## plugins (mentat) from pythonista

```python
import cmd
import importlib
# folder _plugins with two files
# logger.py
# zip.py
#print(locals())


def do_hello(self, x_line='xx'): 
  """show a greeting"""
  
  print('do_hello!', x_line)


class Shell(cmd.Cmd):
    def __init__(self):
    		super().__init__()
    		self.prompt = '><> '
    	

setattr(Shell, 'do_hello', do_hello)   

from pathlib import Path
import inspect
 

def load_plugins(x_path='_plugins'):
  r_loaded = []
  for module in Path(x_path).iterdir():
    if module.is_file():
      plugin = importlib.import_module(f'{x_path}.{module.stem}','.')
      for item in dir(plugin):
        if item.find('do_') == 0:
          func = getattr(plugin, item)
          spec = inspect.getargspec(func)
          print(spec)
          if len(spec.args) >= 2:
            if spec.args[0] == 'self':
              if spec.args[1].find('line')>=1:       
                #MAYBE: spec.varargs==None and spec.keywords==None and spec.defaults==None         
                #todo add type checking
                print(item)
                r_loaded.append(item)
                setattr(Shell, item, getattr(plugin, item)) 
          
  return r_loaded

load_plugins()
pysh = Shell()
pysh.do_help('help') # hello world!
pysh.cmdloop()
```    