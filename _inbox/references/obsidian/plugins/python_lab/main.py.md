---
tags: projects, active
---

https://github.com/cristianvasquez/obsidian-lab-py

- [ ] TODO: test obsidian-lab on windows
- [ ] TODO: transfer obsidian-lab to macOS (priority:low, created: 2023-01-06)

```python
from flask import Flask, request
from flask_cors import CORS

####################################################################################
# config
####################################################################################
PORT = 5000
HOST = '127.0.0.1'

app = Flask(__name__)
####################################################################################
# Cors
####################################################################################
# Allows access to fetch at 'http://localhost:5000/' from origin 'app://obsidian.md'
obsidian_origin = "app://obsidian.md"
cors = CORS(app, origins=obsidian_origin)
app.config['CORS_HEADERS'] = 'Content-Type'

####################################################################################
# Routers
####################################################################################
'''Return a list of all detected plugins'''

@app.route('/', methods=['GET'])
def root():
    return {
        'scripts': [
                f'http://{HOST}:{PORT}/hello'
            ]
    }

'''
The operation
'''

@app.route('/hello', methods=['POST'])
def run():
    note_path = request.json['notePath']
    vault_path = request.json['vaultPath']
    return {
        'contents': f'Hello, note {note_path} in vault {vault_path}'
    }

def main():
    app.run(port=PORT, host=HOST)
    
if __name__ == '__main__':
    main()

```