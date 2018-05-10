import subprocess

node_program = '../src/main.js'

def callgraph(files):
    program = ['node', node_program, '--cg', *files, '--strategy', 'DEMAND']
    process = subprocess.run(program, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    return process.stdout
