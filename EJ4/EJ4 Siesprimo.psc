
	Algoritmo Siesprimo
		Definir num, i Como Entero;
		Definir verdad Como Logico;
		
		Escribir "Ingrese un número entero:";
		Leer num;
		
		Si num < 2 Entonces
			Escribir "No es primo";
		Sino
			verdad <- Verdadero;
			Para i <- 2 Hasta num - 1 Con Paso 1 Hacer
				Si num % i == 0 Entonces
					verdad <- Falso;
				FinSi
			FinPara
			
			Si verdad Entonces
				Escribir "Es primo";
			Sino
				Escribir "No es primo";
			FinSi
		FinSi
FinAlgoritmo


