from argparse import ArgumentParser

import os
import subprocess

def extract_sources(root_dir):
    for path, dirs, filenames in os.walk(root_dir):
        if len(filenames) == 0:
            continue
        for filename in filenames:
            result_dir = os.path.join(path, 'result')
            if not os.path.exists(result_dir):
                os.mkdir(result_dir)

            if filename.endswith('.c'):
                full_path = os.path.join(path, filename)
                print 'Processing: ' + full_path
                command = 'python extract_source.py {0} --output-dir {1}'.format(full_path, result_dir)
                subprocess.call(command, shell=True)

if __name__ == '__main__':
    parser = ArgumentParser()
    parser.add_argument('root_dir')
    args = parser.parse_args()
    extract_sources(args.root_dir)

