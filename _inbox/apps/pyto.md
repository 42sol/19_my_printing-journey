---
tags: [python, ios]
---

- [ ] TODO: move to 18_my_dl

[App](pyto://)

## Xcallback

example with obsidian 

```python

app_name = "obsidian"
vault_name = "19_my_printer_voyage"
file_name = "apps/pyto"
log = print
function = "open"


import requests
def web_request():
  payload = {'key1': 'value1', 'key2': 'value2'}
  r = requests.get('https://httpbin.org/get', params=payload)



def url_encode(input_string, safe_chars=""):
  import urllib.parse
  return urllib.parse.quote(input_string,safe=safe_chars)

log(url_encode("app=/a"))
data = {'vault': vault_name, 'file': file_name}

def generate(function, params, prefix='?', seperator='&'):
    app_name = "obsidian"
    
    output = f'{app_name}://{function}{prefix}'
    for key, value in params.items():
        output += f'{key}={url_encode(value)}&'
        
    output = output[:-1]
    return output


import xcallback

def callback(url):
  xcallback.open_url(url)


try:
    url = f"{generate(function, data)}"
    res = callback(url) # If successed, returns the result
    log("Result:\n"+res)
except RuntimeError as e:
    print("Error: "+str(e)) # If failed, raises ``RuntimeError``
except SystemExit:
    print("Cancelled") # If cancelled, raises ``SystemExit``

``` 


### Apps
[https://app-talk.com](https://app-talk.com/)
- Copied  
  - https://data-rooms.us/copiedapp/#urlscheme
  - 
- Drafts
- Due
- Gmail
- Google Maps
- Shopi
- Tally2
- Things3
- TimePage
- WorkingCopy
- VLC

#### Chrome (1 function)

```python
from apps import Chrome
  
def open():
  c = Chrome()
  url='https://www.test.de'
  c.open_url(url)
  

``` 

- settings?
- tabs? 
- bookmarks?


### File system picker dialog

Files:

```python    
import file_system as fs
log = print 

file_path = fs.import_file()
log(file_path)
with open(file_path, "rb") as f:
    ...
``` 

Directories:

```python
import file_system as fs
import os
log = print 

directory_path = fs.pick_directory()
log(directory_path)
os.chdir(directory_path)
``` 
Or temporarily change the current directory:

```python
import file_system as fs

with fs.open_directory():
    ...
``` 

  
- [.Genesis.md.icloud](file:///private/var/mobile/Library/Mobile Documents/com~apple~CloudDocs/Desktop/_sync/bible/translations/kjv/kjv-old-01/.Genesis.md.icloud)

- [bible-old-01.md](file:///private/var/mobile/Library/Mobile Documents/com~apple~CloudDocs/Desktop/_sync/bible/translations/kjv/kjv-old-01/bible-old-01.md)