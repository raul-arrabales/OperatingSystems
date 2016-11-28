// Partially generated using GenGetOpt
// See https://www.gnu.org/software/gengetopt/gengetopt.html 

// see http://bikulov.org/blog/2013/10/26/command-line-arguments-in-c-and-c-plus-plus-with-gengetopt/ 
// for a tutorial on how to use gengetopt:

// The idea is to have something like this: 
/*

#include <stdio.h>
#include "cmdline.h"

int main(int argc, char ** argv) 
{
  struct gengetopt_args_info ai;
  if (cmdline_parser(argc, argv, &ai) != 0) 
  {
    exit(1);
  }
  
  printf("ai.filename_arg: %s\n", ai.filename_arg);
  printf("ai.verbose_flag: %d\n", ai.verbose_flag);
  printf("ai.id_arg: %d\n", ai.id_arg);
  
  int i;
  for (i = 0; i < ai.value_given; ++i) {
    printf("ai.value_arg[%d]: %d\n", i, ai.value_arg[i]);
  }
}

*/


