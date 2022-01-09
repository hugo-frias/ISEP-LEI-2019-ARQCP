/*
 * método que verifica se existe uma certa string, dentro de outra.
 * recebe por parâmetro o address das duas strings e retorna o address da primeira ocorrencia, ou null caso não haja
 */
char* where_exists(char* str1, char* str2){
	int i = 0, k = 0;
	char* first = str1;
	char* scnd = str2;
	int size = 0;
	int count = 0;
	while(first[size]!= '\0'){
			size++;
		}
	while(scnd[i] != '\0'){
		if(scnd[i] == first[0]){
			while(first[k] != '\0'){
				if(first[k] == scnd[i+k]){				    
					count++;
				}
				k++;
			}
			k = 0;
			if(count == size){
				char* Ptr3 = &scnd[i];
				return Ptr3;
			}
			count = 0;
		}
		i++;
	}
	return '\0';
}

	
