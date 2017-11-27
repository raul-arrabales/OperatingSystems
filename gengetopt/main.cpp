#include <iostream>
#include <cstdlib>

#include "cmdline.h"

int main(int argc, char *argv[])
{
    gengetopt_args_info ai;
    if (cmdline_parser (argc, argv, &ai) != 0) {
        exit(1);
    }

    std::cout << ai.directory_arg << std::endl;

    return 0;
}

