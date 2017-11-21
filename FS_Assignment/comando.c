#include<stdio.h>
#include <dirent.h>
#include <unistd.h>
#include <errno.h>


void main(int argc,char *argv[]) {
   DIR *dir;
   struct dirent *dent;
   char *dirname;

   if (argc != 2)
   {   
      char cwd[1024];
      if (getcwd(cwd, sizeof(cwd)) != NULL)
      {
          fprintf(stdout, "Current working dir: %s\n", cwd);
          dirname = cwd; 
      }
      else
      {
          perror("getcwd() error");
          printf("Las liao parda"); 
          exit(1);      
      }
   }
   else
   {
      dirname = argv[1]; 
   }

   dir = opendir(dirname);

   if(dir!=NULL)
   {
       while((dent=readdir(dir))!=NULL)
       {
            if((strcmp(dent->d_name,".")==0 || strcmp(dent->d_name,"..")==0 || (*dent->d_name) == '.' ))
            {
            }
            else
            {
                printf(dent->d_name);
                printf("\n");
            }
        }
    }
    else
    {
       printf("no se ha podido abrir el directorio %s", dirname);
       exit(2);
    }
    close(dir);
}

     