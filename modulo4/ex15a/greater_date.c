unsigned int greater_date(unsigned int date1, unsigned int date2){
	//mascaras para poder retirar os bytes que quero
	unsigned int maskAno = 0x00FFFF00;
	unsigned int maskMes = 0x000000FF;
	unsigned int maskDia = 0xFF000000;
	unsigned int res1,res2;
	
	res1=date1&maskAno;
	res2=date2&maskAno;
	// vai verificando se o ano é maior ou menor ou igual e passa para o mes e faz o mesmo e depois o dia
	if(res1<res2){return date2;}
	if(res1>res2){return date1;}
	if(res1==res2){
		res1=date1&maskMes;
		res2=date2&maskMes;	
		if(res1<res2){return date2;}
		if(res1>res2){return date1;}
		if(res1==res2){
			res1=date1&maskDia;
			res2=date2&maskDia;	
			if(res1<res2){return date2;}
			if(res1>res2){return date1;}
			if(res1==res2){
				return date1;
		}
	}
	
	
	
	
}
}
