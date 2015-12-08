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
def extract_sources(root_dir, retval_type_list, copy_dir):
    for path, dirs, filenames in os.walk(root_dir):
        benchmark = check_directory(path)
        if benchmark is not None:
            src_dir = os.path.join(path, 'src')
            extract_sources_from_src_dir(src_dir, retval_type_list)
            if copy_dir is not None:
                result_dir = os.path.join(src_dir, 'result')
                final_copy_dir = os.path.join(copy_dir, benchmark)
                rm_command = 'rm -rf {0}'.format(final_copy_dir + '/*')
                print 'rm_command: ' + rm_command
                subprocess.call(rm_command, shell=True)
                mv_command = 'mv {0} {1}'.format(result_dir + '/*', final_copy_dir)
                print 'mv command: ' + mv_command
                subprocess.call(mv_command, shell=True)
                rm_result_folder = 'python remove_result_folder.py {0}'.format(final_copy_dir)
                subprocess.call(rm_result_folder, shell=True)

def extract_sources_from_src_dir(src_dir, retval_type_list):
    for path, dirs, filenames in os.walk(src_dir):
        for filename in filenames:
            result_dir = os.path.join(path, 'result')
            if not os.path.exists(result_dir):
                os.mkdir(result_dir)

            if filename.endswith('.c'):
                full_path = os.path.join(path, filename)
                print 'Processing: ' + full_path
                command = 'python extract_source.py {0} {2} --output-dir {1}'.format(full_path, result_dir, retval_type_list)
                subprocess.call(command, shell=True)

def check_directory(path):
    for directory in directories:
        if path.endswith(directory):
            return directory
    return None

if __name__ == '__main__':
    parser = ArgumentParser()
    parser.add_argument('root_dir')
    parser.add_argument('retval_type_list')
    parser.add_argument('--copy-dir', default=None)
    args = parser.parse_args()
    extract_sources(args.root_dir, args.retval_type_list, args.copy_dir)

