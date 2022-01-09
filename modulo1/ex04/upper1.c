/*
 * Método que capitaliza todas as letras num dado array
 * Recebe por parametro o address do array.
 */




void upper1(char *str){
	int i=0;	
	while(str[i] != '\0'){		
		if('a'<= str[i] && str[i]<= 'z'){
			str[i] -= ('a'-'A');
		}
		i++;
	}
}


