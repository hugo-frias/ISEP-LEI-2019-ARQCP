 #include <stdio.h>
 #include <string.h>
 
 int palindrome(char *str){
	 int i =0;
	int k = strlen(str) -1;
	
	while(k>1){
	/*	if(str[i++] == " " ){
			i++;
		}
		if(str[k--] == " "){
			k--;
		}*/
		if(str[i++] != str[k--]){
			printf("\n%s  não é palindrome\n", str);
			return 0; 
			}
		
	}
	printf("\n%s é palindrome\n", str);
	return 1;
}
