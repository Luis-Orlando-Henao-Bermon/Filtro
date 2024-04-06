
//######################################################################################################
//5. El profesor de la materia de "Introducci�n a la Programacion" requiere de un programa que le permita almacenar 
//en un arreglo los nombres de los 30 estudiantes del curso y en una matriz, las 5 notas obtenidas por cada uno de los estudiantes 
//durante el semestre. El algoritmo debe realizar las siguientes operaciones: 
//a)  Determinar la nota definitiva de cada uno de los estudiantes que se calcula como la media aritmetica de las 5 notas obtenidas. Las 
//notas definitivas de los estudiantes deberan ser almacenadas en un arreglo. 
//b)  Encontrar el estudiante que obtuvo la mayor nota definitiva.
//c)  Obtener el nombre de los estudiantes (y almacenarlos en un arreglo) que perdieron la materia y deberan repetirla. Un estudiante pierde
//la materia si su nota definitiva es inferior a 2.0. (Dos punto cero). 
//d)  Obtener el nombre de los estudiantes (y almacenarlos en un arreglo) que tendran que habilitar la materia. Un estudiante puede habilitar
//la materia si su nota definitiva es inferior a 3.0. pero superior a 2.0, esto es, que su nota definitiva se encuentre entre 2.0 y 2.99.
//e)  Determinar cuantos estudiantes ganaron la materia.
//######################################################################################################

Algoritmo Ejercicio5_HenaoLuis
	
	a=30
	not=5
	Dimension nombre[a]
	Dimension nota1[a] // se le hace una dimension a cada una de las notas ya que son 5 notas por alumno
	Dimension nota2[a]
	Dimension nota3[a]
	Dimension nota4[a]
	Dimension nota5[a]
	Dimension prom[a] 
	Dimension estudiantePerdio[a]
	Dimension estudianteHabilitar[a]
	para i<-0 Hasta a-1 Hacer
		Escribir "Ingrese el nombre del " i+1 " estudiante" //se pide que ingrese el nombre del estudiante en la posicion i y tambien se piden las notas en esa misma posicion
		Leer nombre[i]
		
		Escribir "Ingrese la " B+1 " nota del estudiante"
		Leer nota1[i]
		Escribir "Ingrese la " B+2 " nota del estudiante"
		Leer nota2[i]
		Escribir "Ingrese la " B+3 " nota del estudiante"
		Leer nota3[i]
		Escribir "Ingrese la " B+4 " nota del estudiante"
		Leer nota4[i]
		Escribir "Ingrese la " B+5 " nota del estudiante"
		Leer nota5[i]
		Limpiar Pantalla
	FinPara
	//------------------------------------------------------------------------------------------------
	Para b<-0 Hasta a-1 Hacer //se suman las todas las notas en la posicion en la que estan y se dividen entre la cantidad de totas que es a(5)
		//                     esa es la nota final y se guarda en prom en dicha posicion
		sum=nota1[b]+nota2[b]+nota3[b]+nota4[b]+nota5[b]
		prom[b]=sum/not
	FinPara
	//------------------------------------------------------------------------------------------------
	x=0
	Para c<-0 Hasta a-1 Hacer //si la nota final del estudiante en esa posicion es mayor que x se remplaza x por dicha notafinal y asi hasta conseguir la edad mas peque�a
		si prom[c]>x Entonces
			x=prom[c]
			nombreM=nombre[c]
		FinSi
	FinPara
	//------------------------------------------------------------------------------------------------
	para d<-0 Hasta a-1 Hacer //si el estudiante en la posicion d tiene una nota final menor de 2.0 el estudiante perdio y se guarda en el arreglo estudiantePerdio
		si prom[d] < 2.0 Entonces
			estudiantePerdio[d]=nombre[d]
		FinSi
	FinPara
	//------------------------------------------------------------------------------------------------
	para d<-0 Hasta a-1 Hacer //si el estudiante en la posicion d tiene una nota final mayor de 2.0 y menor de 2.99 el estudiante puede habilitar y se guarda en el arreglo estudianteHabilitar
		si prom[d] > 2.0 y prom[d]<=2.99 Entonces
			estudianteHabilitar[d]=nombre[d]
		FinSi
	FinPara
	//-------------------------------------------------------------------------------------------------
	ganaron<-0
	Para g<-0 hasta a-1 Hacer //si el estudiante tiene una nota final mayor a 3 el estudiante gano y se suma uno a la variable gano ya que pide la cantidad de estudiantes que perdieron
		si prom[g]>=3.0 Entonces
			ganaron=ganaron+1
		FinSi
	FinPara
	
	//------------------------------------------------------------------------------------------------
	Escribir "Estas son las notas definitivas de cada estudiante"
	Para z<-0 Hasta a-1 Hacer
		Escribir nombre[z] " ---- " prom[z] 
		
	FinPara
	
	Escribir "Estudiante con la mayor nota definitiva es: " nombreM
	
	Escribir "Estudiantes que perdieron "
	Para p<-0 Hasta a-1 Hacer
		Escribir estudiantePerdio[p]
	FinPara
	
	Escribir "Estudiantes que pueden habilitar "
	Para p<-0 Hasta a-1 Hacer
		Escribir estudianteHabilitar[p]
	FinPara
	
	Escribir ganaron " Estudiantes ganaron la materia"
FinAlgoritmo
