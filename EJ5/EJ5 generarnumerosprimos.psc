
	Algoritmo generarnumerosprimos
	Definir inicio, final, i, i2 Como Entero;
	Definir verdad Como Logico;
	
	Escribir "Ingrese el primer número del rango:";
	Leer inicio;
	Escribir "Ingrese el segundo número del rango:";
	Leer final;

	Si inicio > final Entonces
		inicio <- inicio + final;
        final <- inicio - final;
        inicio <- inicio - final;
	FinSi
	
    Para i <- inicio Hasta final Con Paso 1 Hacer
        Si i >= 2 Entonces
            verdad <- Verdadero;
            Para i2 <- 2 Hasta i - 1 Con Paso 1 Hacer
                Si i % i2 == 0 Entonces
                    verdad <- Falso;
                   
                FinSi
            FinPara
			
            Si verdad Entonces
                Escribir i;
            FinSi
        FinSi
    FinPara
FinAlgoritmo


