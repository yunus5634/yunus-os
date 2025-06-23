import json
def compile_theme(file_path):
    with open(file_path, 'r') as f:
        theme = json.load(f)
    with open(file_path.replace('.json', '.yntheme'), 'wb') as out:
        out.write(b'YNTHEME' + json.dumps(theme).encode())