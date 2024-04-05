//#########################################################################################################
//Diseñe un programa que permita ingresar y almacenar los nombres y las estaturas de un grupo 
//de n personas y que muestre como salida los nombres y las estaturas de las personas ordenadas: 
//a) Ascendentemente, es decir, de la mas baja a la mas alta 
//b) Descendentemente, es decir, de la mas alta a la mas baja 
//#########################################################################################################
Algoritmo Ejercicio2_HenaoLuis
	
	Definir n Como Entero
	Escribir "¿Cual es la cantidad del grupo de personas?"
	Leer n
	Dimension nombre[n]
	Dimension altura[n]
	p=n-1 //p vale n-1 para poder usar un bucle en la cantidad correcta ya que los bucles empiezan desde cero por eso se le resta uno
	
	Para i<-0 Hasta p Hacer //bucle para registrar los nombres y las altura en los arreglos
		Escribir "¿Nombre de la " i+1 " persona?"
		Leer nombre[i]
		Escribir "¿Altura de la " i+1 " persona (cm)?"
		Leer altura[i]
	FinPara
	
	
	Escribir "ASCENDENTE"
	Para i<-0 hasta p-1 Hacer //se usa es metodo burbuja para que hasta que no quede ordenado  de manera ascendente no termine la operacion
		Para a<-0 Hasta p-1 Hacer
			si altura[a]>altura[a+1] Entonces
			var1=altura[a]
			altura[a]=altura[a+1]
			altura[a+1]=var1
			var2=nombre[a]
			nombre[a]=nombre[a+1]
			nombre[a+1]=var2
			FinSi
		FinPara
	FinPara
	Escribir "Nombre --- Altura"
	Para z<-0 hasta p Hacer
		Escribir nombre[z] " --- " altura[z]
	FinPara
	
	Escribir "DESCENDENTE"
	Para i<-0 hasta p-1 Hacer //se usa es metodo burbuja para que hasta que no quede ordenado  de manera descendente no termine la operacion
		Para a<-0 Hasta p-1 Hacer
			si altura[a]<altura[a+1] Entonces
				var1=altura[a]
				altura[a]=altura[a+1]
				altura[a+1]=var1
				var2=nombre[a]
				nombre[a]=nombre[a+1]
				nombre[a+1]=var2
			FinSi
		FinPara
	FinPara
	Escribir "Nombre --- Altura"
	Para z<-0 hasta p Hacer
		Escribir nombre[z] " --- " altura[z]
	FinPara
	
	
	
	
FinAlgoritmo
