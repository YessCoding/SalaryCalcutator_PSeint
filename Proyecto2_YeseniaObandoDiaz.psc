Algoritmo buscaminas
	
	//Declaración de variables
	Definir opcionMenu, opcionDificultad, opcionMina, a, b, marcada, retirarMarca, nivel, equis, ye, i, coordenadaX, coordenadaY, contadorminas como entero;
	Definir matriz1, matriz2, num_minas_car como caracter;
	
	
	//Dimensionamiento de variables
	Dimension matriz1(6,6);    //crear matriz 6x6
	Dimension matriz2(6,6);
	
	//Inicializaciones
	opcionMenu=0; opcionDificultad=0; a=0;b=0; ye=0; equis=0; coordenadaX=0;coordenadaY=0;contadorminas=0;nivel=0;
	
	//Inicializar matrices 
	Para a <-0 hasta 5 Con Paso 1 Hacer
		Para b <- 0 hasta 5 Con Paso 1 Hacer
			matriz1[a,b]<-'-';
			matriz2[a,b]<-'-';
		FinPara
	FinPara
	
	//crear menú inicial
	Repetir
		Limpiar Pantalla;
		Escribir "***************BUSCA MINAS***********************";
		Escribir "**************1. Juego nuevo********************";
		Escribir "***************2. Salir**************************";
		
		Leer opcionMenu;
		
		Si opcionMenu<>1 Y opcionMenu<>2 Entonces
			Escribir "Error.Debe digitar una de las opciones del menú";
			Escribir  "Presione cualquier tecla para volver al menú";
			Esperar tecla;
		FinSi  
	Hasta Que opcionMenu=1 o opcionMenu=2
	
	
Segun opcionMenu Hacer                      
	1:                          //Pedir que usuario escoja nivel de dificultad
		Limpiar Pantalla;
		Escribir "***************Nivel";
		Escribir "**************1. Fácil [5 minas]";
		Escribir "**************2. Intermedio [10 minas]";
		Escribir "**************3. Difícil [15 minas]";
		Leer opcionDificultad;
		
		//llenar la matriz aleatoriamente con la cantidad de minas que escoja el usuario
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
					matriz1[a,b]<-' x ';
				Hasta Que contadorminas=nivel;
		    FinSegun
		
		//se valida opción de dificultad 
		Si opcionDificultad<>1 Y opcionDificultad<>2 y opcionDificultad<>3 Entonces
			Escribir "Error.Debe digitar una de las opciones del menú";
			Escribir  "Presione cualquier tecla para volver al menú";
			Esperar tecla;
		FinSi
		
		
	
	//Esta es la matriz el usuario ve
	LimpiarPantalla;
	Escribir "    1   2   3   4   5   6    ";
	Escribir 1," | ",matriz2[0,0]," | ",matriz2[0,1]," | ",matriz2[0,2]," | ",matriz2[0,3]," | ",matriz2[0,4]," | ",matriz2[0,5]," | ";
	Escribir 2," | ",matriz2[1,1]," | ",matriz2[1,2]," | ",matriz2[1,3]," | ",matriz2[1,4]," | ",matriz2[1,5]," | ",matriz2[1,5]," | ","   *Para marcar una mina, presione [10]";
	Escribir 3," | ",matriz2[2,1]," | ",matriz2[2,2]," | ",matriz2[2,3]," | ",matriz2[2,4]," | ",matriz2[2,5]," | ",matriz2[2,5]," | ","    Después, tecla [enter]";
	Escribir 4," | ",matriz2[3,1]," | ",matriz2[3,2]," | ",matriz2[3,3]," | ",matriz2[3,4]," | ",matriz2[3,5]," | ",matriz2[3,5]," | ","   *Para retirada, presione [11]";
	Escribir 5," | ",matriz2[4,1]," | ",matriz2[4,2]," | ",matriz2[4,3]," | ",matriz2[4,4]," | ",matriz2[4,5]," | ",matriz2[4,5]," | ","    Después, tecla [enter]";
	Escribir 6," | ",matriz2[5,1]," | ",matriz2[5,2]," | ",matriz2[5,3]," | ",matriz2[5,4]," | ",matriz2[5,5]," | ",matriz2[5,5]," | ";

	Leer opcionMina;
	
	// ahora que el usuario ingrese la posicion que desea se le pide en un rango
	// de 1 a 6
	// queda dentro de un ciclo de forma que no se repiten las posiciones
	Si  opcionMina=10 Entonces
			Escribir "Digite la coordenada X que quiere marcar"; sin saltar
			Leer a;a=a-1;
			Escribir "Digite la coordenada Y que quiere marcar"; sin saltar
			Leer b;b=b-1;
			Para a<-0 hasta 5 con paso 1 Hacer
			 Para b<-0 hasta 5 con paso 1 Hacer
				 si matriz2[a,b]='x' Entonces
					 Escribir '?';
				FinSi
			FinPara
		FinPara
	FinSi
	
	//Si el usuario no selecciona 10 ni 11, entonces se le piden coordenadas para ver si hay minas ahí
	Repetir
			Escribir "Coordenada en  X";sin saltar
			Leer a; a=a-1;
			Escribir "Coordenada en  Y";sin saltar
			Leer b;b=b-1;
		matriz2[a,b]<-"x";
		
		Si matriz1[a,b]="x" Entonces
			Escribir "¡Argh! ¡Majó una mina!";
			Escribir "Lo sentimos, perdió :(";
			Escribir "Pero siempre lo puede volver a intentar :)";
			Para a<-0 hasta 5 Con Paso 1 Hacer
				Para b<-0 hasta 5 Con Paso 1 Hacer
					Escribir matriz1[a,b], "  " Sin Saltar;
				FinPara
				Escribir "  ";
			FinPara
			Escribir " ";
			Esperar tecla;
		SiNo
			Escribir "Excelente, no encontró ninguna mina, siga intentando";
		FinSi
		Escribir "Toque una tecla";
		Esperar Tecla;
	Hasta Que matriz2[a,b]="-";


		// Si opcionMina=11 Entonces
		//Si digita 11 debe asegurarse que las coordenadas que el usuario digite sean de una 
		//casilla con valor “?”, si no, le presenta un error al usuario.
		// FinSi
    
2:  
	Limpiar Pantalla;
	Escribir "¡Chao!";
	Esperar Tecla;
FinSegun

FinAlgoritmo

