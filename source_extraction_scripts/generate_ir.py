import subprocess
import os

from argparse import ArgumentParser

flags = {'403.gcc' :'-DSPEC_CPU -DNDEBUG -I{0} -DSPEC_CPU_LP64',
        '435.gromacs': '-DSPEC_CPU -DNDEBUG  -I{0} -DHAVE_CONFIG_H -DSPEC_CPU_LP64',
        '436.cactusADM': '-DSPEC_CPU -DNDEBUG  -I{0}/include -I{0}/../include -DCCODE -DSPEC_CPU_LP64',
        '471.omnetpp': '-DSPEC_CPU -DNDEBUG -I{0} -I{0}/omnet_include -I{0}/libs/envir -DSPEC_CPU_LP64',
        '483.xalancbmk': '-DSPEC_CPU -DNDEBUG  -DAPP_NO_THREADS -DXALAN_INMEM_MSG_LOADER -I{0} -I{0}/xercesc -I{0}/xercesc/dom -I{0}/xercesc/dom/impl -I{0}/xercesc/sax -I{0}/xercesc/util/MsgLoaders/InMemory -I{0}/xercesc/util/Transcoders/Iconv -I{0}/xalanc/include -DPROJ_XMLPARSER -DPROJ_XMLUTIL -DPROJ_PARSERS -DPROJ_SAX4C -DPROJ_SAX2 -DPROJ_DOM -DPROJ_VALIDATORS -DXML_USE_NATIVE_TRANSCODER -DXML_USE_INMEM_MESSAGELOADER -DSPEC_CPU_LP64 -DSPEC_CPU_LINUX',
        '481.wrf': '-DSPEC_CPU -DNDEBUG -I{0} -I{0}/netcdf/include -DSPEC_CPU_LP64 -DSPEC_CPU_CASE_FLAG -DSPEC_CPU_LINUX',
        '453.povray': '-DSPEC_CPU -DNDEBUG -DSPEC_CPU_LP64',
        '450.soplex': '-DSPEC_CPU -DNDEBUG -DSPEC_CPU_LP64'
}

def convert_to_ir(root_dir, benchmark, output_dir):
    for path, dirs, filenames in os.walk(root_dir):
        for filename in filenames:
            if filename.endswith('.c') or filename.endswith('.cpp') or filename.endswith('.cc'):
                input_full_path = os.path.join(path, filename)
                if output_dir is None:
                    output_full_path = input_file_path.replace('.c', '.ll')
                else:
                    output_full_path = os.path.join(output_dir, filename.replace('.c', '.ll'))
                if benchmark in flags:
                    compile_flags = flags[benchmark].format(path)
                else:
                    compile_flags = ''

                if filename.endswith('.c'):
                    convert_command = 'clang -Os -g -S -emit-llvm ' + compile_flags + ' {0} -o {1}'.format(input_full_path, output_full_path, path)
                elif filename.endswith('.cpp') or filename.endswith('.cc'):
                    convert_command = 'clang++ -Os -g -S -emit-llvm ' + compile_flags + ' {0} -o {1}'.format(input_full_path, output_full_path, path)
                print convert_command
                # print 'Converting: {0}'.format(input_full_path)
                subprocess.call(convert_command, shell=True)

if __name__ == '__main__':
    parser = ArgumentParser()
    parser.add_argument('root_dir')
    parser.add_argument('benchmark')
    parser.add_argument('--output-dir', default=None)
    args = parser.parse_args()
    convert_to_ir(args.root_dir, args.benchmark, args.output_dir)
