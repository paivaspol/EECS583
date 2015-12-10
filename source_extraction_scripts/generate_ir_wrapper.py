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

# flags = {
#         '435.gromacs': '-DSPEC_CPU -DNDEBUG  -I{0} -DHAVE_CONFIG_H -DSPEC_CPU_LP64',
#         '436.cactusADM': '-DSPEC_CPU -DNDEBUG  -I{0}/include -I{0}/../include -DCCODE -DSPEC_CPU_LP64',
#         '471.omnetpp': '-DSPEC_CPU -DNDEBUG -I{0} -I{0}/omnet_include -I{0}/libs/envir -DSPEC_CPU_LP64',
#         '483.xalancbmk': '-DSPEC_CPU -DNDEBUG  -DAPP_NO_THREADS -DXALAN_INMEM_MSG_LOADER -I{0} -I{0}/xercesc -I{0}/xercesc/dom -I{0}/xercesc/dom/impl -I{0}/xercesc/sax -I{0}/xercesc/util/MsgLoaders/InMemory -I{0}/xercesc/util/Transcoders/Iconv -I{0}/xalanc/include -DPROJ_XMLPARSER -DPROJ_XMLUTIL -DPROJ_PARSERS -DPROJ_SAX4C -DPROJ_SAX2 -DPROJ_DOM -DPROJ_VALIDATORS -DXML_USE_NATIVE_TRANSCODER -DXML_USE_INMEM_MESSAGELOADER -DSPEC_CPU_LP64 -DSPEC_CPU_LINUX',
#         '481.wrf': '-DSPEC_CPU -DNDEBUG -I{0} -I{0}/netcdf/include -DSPEC_CPU_LP64 -DSPEC_CPU_CASE_FLAG -DSPEC_CPU_LINUX',
#         '453.povray': '-DSPEC_CPU -DNDEBUG -DSPEC_CPU_LP64',
#         '450.soplex': '-DSPEC_CPU -DNDEBUG -DSPEC_CPU_LP64'
# }

flags = {'403.gcc' :'-DSPEC_CPU -DNDEBUG -I{0} -DSPEC_CPU_LP64',\
        '471.omnetpp': '-DSPEC_CPU -DNDEBUG -I{0} -I{0}/omnet_include -I{0}/libs/envir -DSPEC_CPU_LP64',\
        '483.xalancbmk': '-DSPEC_CPU -DNDEBUG  -DAPP_NO_THREADS -DXALAN_INMEM_MSG_LOADER -I{0} -I{0}/xercesc -I{0}/xercesc/dom -I{0}/xercesc/dom/impl -I{0}/xercesc/sax -I{0}/xercesc/util/MsgLoaders/InMemory -I{0}/xercesc/util/Transcoders/Iconv -I{0}/xalanc/include -DPROJ_XMLPARSER -DPROJ_XMLUTIL -DPROJ_PARSERS -DPROJ_SAX4C -DPROJ_SAX2 -DPROJ_DOM -DPROJ_VALIDATORS -DXML_USE_NATIVE_TRANSCODER -DXML_USE_INMEM_MESSAGELOADER -DSPEC_CPU_LP64 -DSPEC_CPU_LINUX'
}


def generate_llvm_ir_from_directory(root_dir, output_dir):
    for path, dirs, filenames in os.walk(root_dir):
        benchmark = check_directory(path)
        if benchmark is not None:
            src_directory = os.path.join(path, 'src')
            output_directory = path.replace(root_dir, output_dir)
            if not os.path.exists(output_directory):
                os.mkdir(output_directory)
            generate_ir_cmd = 'python generate_ir.py {0} {2} --output-dir {1}'.format(src_directory, output_directory, benchmark)
            print 'generate IR cmd: ' + generate_ir_cmd
            subprocess.call(generate_ir_cmd, shell=True)

def check_directory(path):
    for benchmark in flags:
        if path.endswith(benchmark):
            return benchmark
    return None

if __name__ == '__main__':
    parser = ArgumentParser()
    parser.add_argument('root_dir')
    parser.add_argument('--output-dir', default='.')
    args = parser.parse_args()
    generate_llvm_ir_from_directory(args.root_dir, args.output_dir)
