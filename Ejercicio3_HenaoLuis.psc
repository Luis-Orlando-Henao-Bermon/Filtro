//#########################################################################################################
//Construya un programa que almacene n numero enteros en un arreglo y que posteriormente determine si un numero
//cualquiera ingresado por el usuario se encuentra o no en el arreglo. Si el numero se encuentra en el arreglo, 
//el algoritmo debe decir en que posicion esta. 
//#########################################################################################################
Algoritmo Ejercicio3_HenaoLuis
	
	Escribir "¿Cuantos numeros deseas ingresar?"
	Leer n
	Dimension numer[n]
	p=n-1 //p vale n-1 para poder usar un bucle en la cantidad correcta ya que los bucles empiezan desde cero por eso se le resta uno
	Para i<-0 Hasta p Hacer
		Escribir "Por favor ingrese el " i+1 " numero"
		Leer numer[i]
	FinPara
	apro=Verdadero
	Mientras apro=Verdadero Hacer // se usa un cili mientras para que cuando apro sea falso se acabe el ciclo
		Escribir "¿Que numero quieres saber si esta en los registrados?"
		Leer n2
		NumHay<-0
		Para a<-0 Hasta p Hacer
			si numer[a]=n2 Entonces //si la variable n2 (es el numero que quieren saber si esta en la lista) es igual a el arreglo en la pocicion a dice que esta en el arreglo 
				Escribir "El numero ingresado esta en el arreglo "
			SiNo
				NumHay=NumHay+1 //es la suma de todos los arreglos que no son iguales a n2
				//la suma de todos los arreglos si son diferentes a n2 va a ser igual a n
			FinSi
		
			
		FinPara
		si NumHay>p Entonces//si la suma de todos los arreglos es mayor a p(la cantidad de numeros ingresados -1)  dira que el numero no esta en el arreglo  es  ya que si un numero es igual a n2 la suma de todos los que no son iguales va a ser un numero menor a la cantidad ingresada
			Escribir "El numero ingresado no esta en el arreglo"
		FinSi
		Escribir "¿Quieres saber si otro numero esta en el arreglo s/n?"
		Leer finm 
		si finm="n" Entonces //si finm es "n" apro se vuelve falso y se acaba el ciclo
			apro=Falso 
			
		FinSi
	FinMientras
	
	
	
FinAlgoritmo
