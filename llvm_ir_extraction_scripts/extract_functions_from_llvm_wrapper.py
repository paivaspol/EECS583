from argparse import ArgumentParser

import os
import subprocess

def extract_functions_from_files(root_dir, output_dir):
    for path, dirs, filenames in os.walk(root_dir):
        if len(filenames) == 0:
            continue
        # Create directory, if necessary.
        full_output_directory = path.replace(root_dir, output_dir)
        if not os.path.exists(full_output_directory):
            os.mkdir(full_output_directory)

        for filename in filenames:
            output_folder = os.path.join(full_output_directory, filename.replace('.', '_'))
            if not os.path.exists(output_folder):
                os.mkdir(output_folder)
            full_path = os.path.join(path, filename)
            extract_function_cmd = 'python extract_functions_from_llvm.py {0} --output-dir {1}'.format(full_path, output_folder)
            print 'cmd: ' + extract_function_cmd
            subprocess.call(extract_function_cmd, shell=True)


if __name__ == '__main__':
    parser = ArgumentParser()
    parser.add_argument('root_dir')
    parser.add_argument('output_dir')
    args = parser.parse_args()
    extract_functions_from_files(args.root_dir, args.output_dir)
