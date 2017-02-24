// Group ID -6 
// Utkarsh Verma and Vaibhav Garg
// 15116067     1506068
// 30October 2016
//This program  encrypts the digits present in an alphanumeric string
// taken as input by the user, leaving the other characters unchanged 
#include <stdio.h>
#include <string.h>

int main()
{
    char name[32];
    int i;
    printf("Enter String\n");
    fgets(name,32,stdin);
    printf("Encrypted String\n");
    for (i=0;name[i]!='\0';i++)
        {
            if(name[i] == '0')
                    name[i] = '4';
            else 
                if (name[i] == '1')     
                    name[i] = '6';
            else
                if (name[i] == '2')
                    name[i] = '9';
            else 
                if (name[i] == '3')
                    name[i] = '5';
            else 
                if (name[i] == '4')
                    name[i] = '0';
            else 
                if (name[i] == '5')
                    name[i] = '3';
            else 
                if (name[i] == '6')
                    name[i] = '1';
            else 
                if (name[i] == '7')
                    name[i] = '8';
            else
                if (name[i] == '8')
                    name[i] = '7';
            else
                if (name[i] == '9')
                    name[i] = '2';
            
            printf("%c",name[i]);
        }
        
    return 0;
}
