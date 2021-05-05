Algoritmo caja_registradora
	Definir cp, p, vp, tp, tf, td, cd, dv, cl, in, op, rf, vi Como Entero;
	Definir f, cj Como Caracter;
	tf<-0;
	td<-0;
	cl<-123;
	in<-0;
	Escribir "               =================================";
	Escribir "               ||      CAJA REGISTRADORA      ||";
	Escribir "               =================================";
	Escribir " ";
	Escribir "Digite la fecha actual, separando con un guion (-). Ejemplo: 31-12-2021";
	Leer f;
	Escribir "Digite su nombre completo.";
	Leer cj;
	Limpiar Pantalla;
	Mientras (in==0) Hacer
		Escribir " ";
		Escribir "=======================================";
		Escribir "||   *********** MENU ***********    ||";
		Escribir "||                                   ||";
		Escribir "|| 1. Ingresar Venta.                ||";
		Escribir "|| 2. Ver Total del Dia.             ||";
		Escribir "|| 3. Ver Total del Dia y Finalizar. ||";
		Escribir "=======================================";
		Escribir " ";
		Leer op;
		Segun op hacer
			1:
				Limpiar Pantalla;
				rf<-rf+1;
				Escribir "Ingrese la cantidad de productos que vendera.";
				Leer cp;
				Para i<-1 Hasta cp Con Paso 1 Hacer
					Escribir "Ingrese el valor del producto: ",i;
					Leer p;
					Escribir "Ingrese la cantidad a vender del producto: ",i;
					Leer vp;
					tp<-p*vp;
					tf<-tf+tp;
				FinPara
				Escribir " ";
				Escribir "TOTAL A PAGAR: RD$ ",tf;
				Escribir "               ============";
				Escribir " ";
				Escribir "Digite la clave de la caja registradora:";
				Leer cl;
				si (cl==123) Entonces
					Escribir "Ingrese la cantidad de dinero entregada por el cliente:";
					Leer cd;
					dv<-cd-tf;
					Limpiar Pantalla;
					Escribir " ";
					Escribir "                  ***** FACTURA *****                   ";
					Escribir " ";
					Escribir "Fecha: ", f,"                               Ref: ", rf;
					Escribir " ";
					Escribir "El total de la compra fue:                  RD$ ",tf;
					Escribir "                                            ------------";
					Escribir "El dinero entregado por el cliente fue:     RD$ ",cd;
					Escribir "                                            ------------";
					Escribir "Devuelta del cliente:                       RD$ ",dv;
					Escribir "                                            ============";
					Escribir "# de articulos: ", cp;
					Escribir " ";
					td<-td+tf;
					tf<-0;
				SiNo
					Escribir "La clave introducida no es valida.";
				FinSi
			2:
				Limpiar Pantalla;
				in<-1;
				Escribir "             ***INFORME***                  ";
				Escribir " ";
				Escribir "El total en ventas del dia fue: RD$ ",td;
				Escribir "                                ============";
				Escribir " ";
				Escribir "Cajero del dia: ",cj;
				in<-0;
			3:
				Limpiar Pantalla;
				in<-2;
				Escribir "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
				Escribir "           *** CUADRE DE CAJA ***            ";
				Escribir " ";
				Escribir "Fecha: ", f;
				Escribir " ";
				Escribir "El total en ventas del dia fue: RD$ ",td;
				Escribir "                                ===========";
				Escribir " ";
				Escribir "Cajero del dia: ",cj;
				Escribir "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
				Escribir " ";
				Escribir " ";
				Escribir " ";
				Escribir " ";
				Escribir " ";
				Escribir " ";
				Escribir " ";
				Escribir "Desarrollado por:";
				Escribir " ";
				Escribir "Diego J. Bautista Mesa ----------> 19-MIIN-1-026";
				Escribir "Marcos E. Medrano ---------------> 15-EIIN-1-073";
				Escribir "Stiven A. Pineda Solano ---------> 20-EIIN-1-120";
				Escribir " ";
				Escribir " ";
				Escribir "Presiona (0) Para Volver a Iniciar.";
				Leer vi;
				si (vi==0) Entonces
					Limpiar Pantalla;
					Escribir " ";
					Escribir "               =================================";
					Escribir "               ||      CAJA REGISTRADORA      ||";
					Escribir "               =================================";
					Escribir " ";
					Escribir "Digite su nombre completo.";
					Leer cj;
					Limpiar Pantalla;
					in<-0;
				SiNo
					Escribir "Ingreso una opcion invalida.";
				FinSi
			De Otro Modo:
				Escribir "Ingreso una opcion invalida.";
		FinSegun
	FinMientras
FinAlgoritmo
