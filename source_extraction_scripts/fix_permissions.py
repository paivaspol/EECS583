from argparse import ArgumentParser

import os
import subprocess

def fix_permissions(root_dir):
    for path, dirs, filenames in os.walk(root_dir):
        if len(filenames) == 0:
            continue
        for filename in filenames:
            command = 'chmod 644 {0}'.format(os.path.join(path, filename))
            subprocess.call(command, shell=True)

if __name__ == '__main__':
    parser = ArgumentParser()
    parser.add_argument('root_dir')
    args = parser.parse_args()
    fix_permissions(args.root_dir)
