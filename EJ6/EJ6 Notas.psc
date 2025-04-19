Proceso Notas
	Definir nota, aprob, noaprob, contador, mb, b, r, i, totalnotas Como Entero;
	Definir porMB, porB, porR, porI, promedio Como Real;
	Escribir 'nota (-1 corta)';
	Leer nota;
	aprob <- 0;
	noaprob <- 0;
	contador <- 0;
	mb <- 0;
	b <- 0;
	r <- 0;
	i <- 0;
	totalnotas <- 0;
	Mientras nota<>-1 Hacer
		Si nota>=6 Entonces
			aprob <- aprob+1;
		SiNo
			noaprob <- noaprob+1;
		FinSi
		Segun nota Hacer
			0, 1, 2, 3:
				i <- i+1;
			4, 5:
				r <- r+1;
			6, 7:
				b <- b+1;
			8, 9, 10:
				mb <- mb+1;
		FinSegun
		contador <- contador+1;
		totalnotas <- totalnotas+nota;
		Escribir 'nota (-1 corta)';
		Leer nota;
	FinMientras
	porI <- (i/contador)*100;
	porR <- (r/contador)*100;
	porB <- (b/contador)*100;
	porMB <- (mb/contador)*100;
	promedio <- totalnotas/contador;
	Escribir 'Cantidad de notas: ', contador;
	Escribir 'Promedio: ', promedio;
	Escribir 'Aprobados: ', aprob, ' No aprobados: ', noaprob;
	Escribir 'Insuficiente:% ', porI;
	Escribir 'Regular:% ', porR;
	Escribir 'Bueno:% ', porB;
	Escribir 'Muy bueno:% ', porMB;
FinProceso
