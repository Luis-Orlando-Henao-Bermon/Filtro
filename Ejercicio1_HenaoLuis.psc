
//########################################################################################################
//Escriba un program que permita almacenar en arreglos diferentes los nombres, los g�neros y las edades de un 
//grupo de n personas. El algoritmo debe determinar:
//a) Cuantas personas son de genero masculino 
//b) Cuantas personas de genero femenino superan la mayoria de edad 
//c) Cual es el promedio de edad de las personas de genero masculino 
//d) Cual es el nombre de la persona de genero femenino mas peque�a. 
//#########################################################################################################

Algoritmo Ejercicio1_HenaoLuis
	Definir c Como Entero
	Escribir "�Cual es la cantidad del grupo de personas?"
	Leer c
	
	Dimension nombre[c]
	Dimension genero[c]
	Dimension edad[c]
	
	Para i<-0 Hasta c-1 Hacer
		Escribir "�Nombre de la " i+1 " persona?"
		Leer nombre[i]
		Escribir "�Genero de la " i+1 " persona f/m?"
		Leer genero[i]
		Escribir "�Edad de la " i+1 " persona?"
		Leer edad[i]
	FinPara
	canG<-0
	para a<-0 Hasta c-1 Hacer //bucle para que cada vez que el array sea igual a "m" se sume la cantidad de array que sean "m"
		si genero[a]="m" Entonces
			canG=canG+1
		FinSi
	FinPara
	
	Escribir "Personas de genero masculino: " canG
	cantG<-0
	para b<-0 Hasta c-1 Hacer//bucle para que cada vez que el array sea igual a "f" y sea mayor de 18 se sume la cantidad de array  que sean "f"
		si genero[b]="f" y edad[b]> 18 Entonces
			cantG=cantG+1
		FinSi
	FinPara
	Escribir "personas de genero femenino que superan la mayoria de edad: " cantG
	suEM<-0
	Para d<-0 Hasta c-1 Hacer //bucle para que cada vez que el array sea igual a "m" se sumen las edades de los generos que son "m" y se dividan entre la cantidad de array que sean "m"
		si genero[d]="m" Entonces
			suEM=suEM+edad[d]
			proEM=suEM/canG
		FinSi
	FinPara
	Escribir "Promedio de edad de las personas de genero masculino:  " proEM
	
	mayor1<-1000
	Para e<-0 Hasta c-1 Hacer //si la edad de la persona de genero femenino en esa posicion es menor que mayor1 se remplaza mayor1 por dicha edad y asi hasta conseguir la edad mas peque�a
		si genero[e]="f" y edad[e]<mayor1 Entonces
			mayor1=edad[e]
			nombre2=nombre[e]
		FinSi
	FinPara

	Escribir "El nombre de la persona de genero femenino mas peque�a: " nombre2
	
	

FinAlgoritmo
