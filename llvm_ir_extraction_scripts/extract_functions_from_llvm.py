from argparse import ArgumentParser

import os

def parse_llvm_ir_file(llvm_ir_filename, output_dir):
    with open(llvm_ir_filename, 'rb') as input_file:
        in_a_function = False
        function_body = ''
        function_name = None
        for line in input_file:
            if line.startswith('define') and not in_a_function:
                # This is the beginning of a function.
                in_a_function = True
                function_body += line
                function_name = extract_function_name(line)
            elif line == '}\n' and in_a_function:
                # This is the end of a function.
                function_body += line
                output_to_file(function_name, output_dir, function_body)

                # Reset variables
                in_a_function = False
                function_body = ''
                function_name = None
            elif in_a_function:
                function_body += line

def extract_function_name(func_definition):
    ampersand_index = func_definition.index('@')
    open_paren_index = func_definition.index('(')
    return func_definition[ampersand_index + 1:open_paren_index]

def output_to_file(function_name, path, function_body):
    full_path = os.path.join(path, function_name + '.txt')
    with open(full_path, 'wb') as output_file:
        output_file.write(function_body)

if __name__ == '__main__':
    parser = ArgumentParser()
    parser.add_argument('llvm_ir_file')
    parser.add_argument('--output-dir', default='.')
    args = parser.parse_args()
    parse_llvm_ir_file(args.llvm_ir_file, args.output_dir)
