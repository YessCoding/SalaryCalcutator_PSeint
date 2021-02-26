Algoritmo sin_titulo
	
FinAlgoritmo





/*Si nivel<-5 Entonces 
	a=azar(5)+1;
	b=azar(5)+1;
	//asignamos a la matriz el valor X para colocar una mina
	matriz1[a,b]<-"x";	
Finsi
*/



Para i<-1 Hasta nivel Con Paso 1 Hacer
	ye <- azar(nivel)+1;
	equis <- azar(nivel)+1;
	si matriz1[equis,ye]="-" entonces
		matriz1[equis,ye]<-"X";
	Sino
		i<-i-1;
	finsi
FinPara


Repetir
	Repetir
		a=azar(5)+1;
		b=azar(5)+1;
	Hasta Que matriz1[a,b]='-' 
	contadorminas=contadorminas+1;
	
	//asignamos a la matriz el valor x para colocar una mina
	matriz1[a,b]<-'x';
Hasta Que contadorminas=nivel;







Segun opcionDificultad hacer
	1: nivel<-5;
		Repetir
			Repetir
				a=azar(5)+1;
				b=azar(5)+1;
			Hasta Que matriz1[a,b]='-' 
			contadorminas=contadorminas+1;
			
			//asignamos a la matriz el valor x para colocar una mina
			matriz1[a,b]<-'x';
		Hasta Que contadorminas=nivel;
		
	2: nivel<-10;
		Repetir
			Repetir
				a=azar(5)+1;
				b=azar(5)+1;
			Hasta Que matriz1[a,b]='-' 
			contadorminas=contadorminas+1;
			
			//asignamos a la matriz el valor x para colocar una mina
			matriz1[a,b]<-'x';
		Hasta Que contadorminas=nivel;
		
	3: nivel<-15;
		Repetir
			Repetir
				a=azar(5)+1;
				b=azar(5)+1;
			Hasta Que matriz1[a,b]='-' 
			contadorminas=contadorminas+1;
			
			//asignamos a la matriz el valor x para colocar una mina
			matriz1[a,b]<-'x';
		Hasta Que contadorminas=nivel;
FinSegun