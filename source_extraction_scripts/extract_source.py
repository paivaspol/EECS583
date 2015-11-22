from argparse import ArgumentParser

import os

def parse_file(input_filename):
    function_counter = 0
    result = dict()
    with open(input_filename, 'rb') as input_file:
        # Variable set up
        in_a_function = False
        curly_brace_stack = []
        found_first_curly_brace = False
        function_str = ''
        last_line_was_defined = False

        for raw_line in input_file:
            line = raw_line
            # print line
            if check_defined(line) or (is_start_function(line) and not in_a_function):
                # Detect if it is the start of a function.
                if check_defined(line):
                    last_line_was_defined = True
                in_a_function = True
                curly_brace_stack = []
                function_str = ''
            elif last_line_was_defined and not is_start_function(line):
                last_line_was_defined = False
                in_a_function = False
                found_first_curly_brace = False
                curly_brace_stack = []
                function_str = ''

            if in_a_function:
                if '{' in line:
                    curly_brace_stack.append('{')
                    if not found_first_curly_brace:
                        found_first_curly_brace = True
                if '}' in line:
                    curly_brace_stack.pop()
            else:
                continue

            # Output
            function_str += line
            if len(curly_brace_stack) == 0 and found_first_curly_brace:
                # Output the function.
                result[function_counter] = function_str
                function_counter += 1
                # Reset variables
                in_a_function = False
                found_first_curly_brace = False
                curly_brace_stack = []
                function_str = ''
    return result

def is_start_function(line):
    retval = (line.startswith('static') or line.startswith('Int32') or line.startswith('void') or line.startswith('IntNative')) and ';' not in line
    return retval

def check_defined(line):
    return line.startswith('#if defined(SPEC_CPU)')

def output_to_file(input_filename, functions):
    output_dir = input_filename[find_last_path_delim(input_filename) + 1:].replace('.', '_')
    print 'output dir: ' +  output_dir
    if not os.path.exists(output_dir):
        os.mkdir(output_dir)
    for function_id, function_body in functions.iteritems():
        output_filename = os.path.join(output_dir, str(function_id) + '.txt')
        with open(output_filename, 'wb') as output_file:
            output_file.write(function_body)

def find_last_path_delim(path):
    retval = 0
    for i in range(0, len(path)):
        if path[i] == '/':
            retval = i
    return retval

if __name__ == '__main__':
    parser = ArgumentParser()
    parser.add_argument('input_filename')
    args = parser.parse_args()
    functions = parse_file(args.input_filename)
    output_to_file(args.input_filename, functions)
