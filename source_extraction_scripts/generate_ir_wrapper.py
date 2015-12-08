from argparse import ArgumentParser

import os
import subprocess

directories = ['400.perlbench'
        ,'401.bzip2'
        ,'403.gcc'
        ,'410.bwaves'
        ,'416.gamess'
        ,'429.mcf'
        ,'433.milc'
        ,'434.zeusmp'
        ,'435.gromacs'
        ,'436.cactusADM'
        ,'437.leslie3d'
        ,'444.namd'
        ,'445.gobmk'
        ,'447.dealII'
        ,'450.soplex'
        ,'453.povray'
        ,'454.calculix'
        ,'456.hmmer'
        ,'458.sjeng'
        ,'459.GemsFDTD'
        ,'462.libquantum'
        ,'464.h264ref'
        ,'465.tonto'
        ,'470.lbm'
        ,'471.omnetpp'
        ,'473.astar'
        ,'481.wrf'
        ,'482.sphinx3'
        ,'483.xalancbmk'
        ,'998.specrand'
        ,'999.specrand']

def generate_llvm_ir_from_directory(root_dir, output_dir):
    for path, dirs, filenames in os.walk(root_dir):
        if check_directory(path):
            src_directory = os.path.join(path, 'src')
            output_directory = path.replace(root_dir, output_dir)
            if not os.path.exists(output_directory):
                os.mkdir(output_directory)
            generate_ir_cmd = 'python generate_ir.py {0} --output-dir {1}'.format(src_directory, output_directory)
            print 'generate IR cmd: ' + generate_ir_cmd
            subprocess.call(generate_ir_cmd, shell=True)

def check_directory(path):
    for directory in directories:
        if path.endswith(directory):
            return directory
    return None

if __name__ == '__main__':
    parser = ArgumentParser()
    parser.add_argument('root_dir')
    parser.add_argument('--output-dir', default='.')
    args = parser.parse_args()
    generate_llvm_ir_from_directory(args.root_dir, args.output_dir)
