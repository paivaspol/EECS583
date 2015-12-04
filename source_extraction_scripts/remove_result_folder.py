from argparse import ArgumentParser

import os
import subprocess

def remove_result_directory(root_dir):
    for path, dirs, filenames in os.walk(root_dir):
        for directory in dirs:
            if directory == 'result':
                os.rmdir(os.path.join(path, directory))

if __name__ == '__main__':
    parser = ArgumentParser()
    parser.add_argument('root_dir')
    args = parser.parse_args()
    remove_result_directory(args.root_dir)
