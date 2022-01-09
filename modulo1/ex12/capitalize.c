/*
 * método que capitaliza as primeiras letras de cada palavra encontradas numa string
 * recebe o address da string
 */


#include <stdio.h>
#include "vecLength.h"
void capitalize (char *str){
	 char* Ptr = str;
	 int n = vecLength(Ptr);
	 char space = ' '; 
	 int i;	 
	 if(!'A'<= Ptr[0] && !Ptr[0]<= 'Z'){
				if('a'<= Ptr[0] && Ptr[0]<= 'z'){
					Ptr[0] -= 'a'-'A';
				}
			 }
	 for(i = 0; i<n; i++){
		 if(Ptr[i] == space){
			 if(!'A'<= Ptr[i+1] && !Ptr[i+1]<= 'Z'){
				if('a'<= Ptr[i+1] && Ptr[i+1]<= 'z'){
					Ptr[i+1] -= 'a'-'A';
				}
			 }
			
		 }
	 }
 }
