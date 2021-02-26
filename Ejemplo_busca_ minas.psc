Algoritmo sin_titulo
	Definir matrizA, matrizB,minas,contadorminas,juego Como Entero; 
	definir a,b Como Entero;
	Dimension matrizA[6,6];
	Dimension matrizB[6,6];
	
	a=0;b=0;contadorminas=0;juego=1;
	
	// Esto es para tener ambas matrices en cero
	para a<-0 hasta 5 Con Paso 1 Hacer
		para b<-0 hasta 5 con paso 1 Hacer
			matrizA[a,b]<-0;
			matrizB[a,b]<-0;
		FinPara
	FinPara
	
	//Prueben 5 10 15 etc no mas de 20 
	Escribir "Digite la cantidad de minas que desea";sin saltar
	leer minas;
	
	// Ahora asignar minas...
	
	
	
	Repetir
		Repetir
			a=azar(5)+1;
			b=azar(5)+1;
		Hasta Que matrizA[a,b]=0 
		contadorminas=contadorminas+1;
		//asignamos a la matriz el valor 1 para colocar una mina
			matrizA[a,b]<-1;
	Hasta Que contadorminas=minas;
	
	Repetir
		//esta matriz nooo debe quedar solo es para que jueguen y vean las minas
		//vemos la matriz con las minas; esto solo para confirmar estan las que deben ser
		para a<-0 hasta 5 con paso 1 Hacer
			para b<-0 hasta 5 con paso 1 Hacer
				Escribir " ",matrizA[a,b]," ";sin saltar
			FinPara
			Escribir"";
		FinPara
		
		//Esta es la matriz que el usuario deberia ver
		Escribir "";
		Escribir " Matriz muestra";
		para a<-0 hasta 5 con paso 1 Hacer
			para b<-0 hasta 5 con paso 1 Hacer
				si matrizB[a,b]=1 Entonces
					Escribir " X ";sin saltar
				SiNo
					escribir " * ";sin saltar
				FinSi
			FinPara
			Escribir"";
		FinPara
		// ahora que el usuario ingrese la posicion que desea se le pide en un rango
		// de 1 a 6
		// queda dentro de un ciclo de forma que no se repiten las posiciones
		Repetir
			Escribir " Digite la columna -";sin saltar
			leer a;a=a-1;
			Escribir " Digite la fila -";sin saltar
			leer b;b=b-1;
		Hasta Que matrizB[a,b]=0 
		//asignamos 1 a modo de mina
		matrizB[a,b]<-1;
		
		si matrizA[a,b]=1 Entonces
			Escribir " Has encontrado una mina";
			juego=0;
		SiNo
			Escribir " Bien echo";
		FinSi
		
		Escribir " Toque una tecla";
		Esperar Tecla;
		Limpiar Pantalla;
		
	Hasta Que juego=0;
	
FinAlgoritmo