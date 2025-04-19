Proceso Compra
	Definir cantidad,cantidadtot como Entero;
	Definir precio,preciotot,monto como Real;
	
	cantidadtot=0;
	monto=0;
	
	Escribir "Ingrese precio: ";
	Leer precio; 
	
	Mientras precio <> 0 Hacer 
		Escribir "Ingrese cantidad ";
		Leer cantidad; 
		
		preciotot=precio*cantidad;
		cantidadtot=cantidadtot+cantidad; 
		monto=monto+preciotot; 
		
		Escribir "Ingrese precio: (0 corta)";
		Leer precio; 
		
	FinMientras
	
	Escribir "Total a pagar: ",monto," Cantidad de productos: ",cantidadtot; 
FinProceso
