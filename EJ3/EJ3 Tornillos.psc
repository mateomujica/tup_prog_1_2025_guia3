Proceso Tornillos
	Definir codigo,medesp,medicion,error,mayorerror,lote,falla,i,maxfalla,  codmaxfalla, minfalla, codminfalla Como Entero;
	Definir porclote,porcentajetotal, totalfallas  como Real;
	
	Escribir "Ingrese cod de lote";
	leer codigo;
	lote=0;
	maxfalla=0;
	minfalla=999;
	codmaxfalla=0;
	codminfalla=0;
	
	Mientras codigo <> 0 Hacer
		
		Escribir "Medida esperada de tornillo: ";
		Leer medesp;
		
		error=0;
		falla=0;
		mayorerror=0; 
		
		Para i=1 Hasta 10 con Paso 1 Hacer 
			Escribir "Ingrese medicion del tornillo";
			Leer medicion; 
			error=abs(medesp-medicion); 
			
			Si error > 0.5 Entonces
				falla=falla+1;
			FinSi
			
			Si error > mayorerror Entonces
				mayorerror=error;
			FinSi
			
		FinPara
		
		lote=lote+1;
		porclote=(falla/10)*100;
		totalfallas = totalfallas + falla;
		
	    Si falla > maxfalla Entonces
			maxfalla = falla;
			codmaxfalla = codigo;
		FinSi
		
		Si falla < minfalla Entonces
			minfalla = falla;
			codminfalla = codigo;
		FinSi
		
		Escribir "Mayor error absoluto del lote: ", mayorerror;
		Escribir  "Porcentaje de fallas en el lote:% ", porclote;
		
		Escribir "Ingrese cod de lote";
		leer codigo;
		
	FinMientras
	
	porcentajetotal = (totalfallas / (lote * 10)) * 100;
	
	Escribir "Cantidad de lotes procesados: ", lote;
	Escribir "Porcentaje total de fallas:% ",porcentajetotal;
	Escribir "Lote con menor cantidad de fallas: ", codminfalla;
	Escribir "Lote con mayor cantidad de fallas: ", codmaxfalla;


FinProceso
