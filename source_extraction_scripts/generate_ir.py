import subprocess
import os

from argparse import ArgumentParser

def convert_to_ir(root_dir, output_dir):
    for path, dirs, filenames in os.walk(root_dir):
        for filename in filenames:
            if filename.endswith('.c'):
                input_full_path = os.path.join(path, filename)
                if output_dir is None:
                    output_full_path = input_file_path.replace('.c', '.ll')
                else:
                    output_full_path = os.path.join(output_dir, filename.replace('.c', '.ll'))
                
                convert_command = 'clang -Os -S -emit-llvm -DSPEC_CPU -DNDEBUG -I{2} -DPERL_CORE -DSPEC_CPU_LP64 -DSPEC_CPU_LINUX_X64 {0} -o {1}'.format(input_full_path, output_full_path, path)
                print 'Converting: {0}'.format(input_full_path)
                subprocess.call(convert_command, shell=True)

if __name__ == '__main__':
    parser = ArgumentParser()
    parser.add_argument('root_dir')
    parser.add_argument('--output-dir', default=None)
    args = parser.parse_args()
    convert_to_ir(args.root_dir, args.output_dir)
