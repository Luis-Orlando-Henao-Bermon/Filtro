
//########################################################################################################
//4. Escriba un programa que almacene en un arreglo n numeros enteros entre 50 y 100. El algoritmo debera encontrar
//los numeros pares y los impares que estan almacenados en este arreglo y almacenarlos en otros arreglos por separado para, posteriormente mostrarlos al usuario. ?  
//#########################################################################################################

Algoritmo Ejercicio4_HenaoLuis
	Dimension pares[n]
	Dimension impares[n]
	
	
	Escribir "Ingrese un numero entre 50 y 100"
	Leer n
	

//si el usuario ingresa un numero menor que 50 o mayor que 100 le pedira que ingrese un numero entre 50 y 100
	si n<50 o n>100 Entonces
		Repetir
			Escribir "Por favor ingrese un numero entre 50 y 100"
			leer n
		Hasta Que n>=50 y n<=100 
	FinSi
	
	pr=n%2 //esto es para saber si el numero ingresado es par o impar
	x=0
	sum=n
	si pr=0 Entonces //si pr es 0 significa que el numero ingresado es par por lo tanto se hace lo siguinete
		Mientras pr=0 y sum<=100 Hacer //Mientras pr sea 0 y sum sea menor o igual a 100 se hara lo siguiente
			x=x+1 // esto es para saber cuantos numeros pares hay y guardar la cantidad de numeros paren en la variable x
			sum=n
			para i<-0 Hasta x Hacer
				pares[i]=sum //sum es igual que el numero ingresado y si sum es menor o igual a 100 sera reemplazado por sum+2
				sum=sum+2
				
			FinPara
		FinMientras
		pr=n%2
		x=0
		sum=n
		Mientras pr=0 y sum<=99 Hacer //Mientras pr sea 0 y sum sea menor o igual a 99 ya que este es el ultimo impar se hara lo siguiente
			x=x+1
			sum=n
			para i<-0 Hasta x Hacer
				impares[i]=sum+1 //sum es igual que el numero ingresado (se le suma uno para comvertirlo en el primer impar ) y si sum es menor o igual a 100 sera reemplazado por sum+2
				sum=sum+2
				
			FinPara
		FinMientras
	SiNo//si pr es mayor a 0 significa que el numero ingresado es par por lo tanto se hace lo siguinete
		Mientras pr>0 y sum<=100 Hacer//Mientras pr sea mayor a 0 y sum sea menor o igual a 100 se hara lo siguiente
			x=x+1
			sum=n
			para i<-0 Hasta x Hacer
				impares[i]=sum
				sum=sum+2
				
			FinPara
		FinMientras
		pr=n%2
		x=0
		sum=n
		Mientras pr>0 y sum<=99 Hacer //Mientras pr sea mayor a 0 y sum sea menor o igual a 99 se hara lo siguiente
			x=x+1
			sum=n
			para i<-0 Hasta x Hacer
				pares[i]=sum+1
				sum=sum+2
				
			FinPara
		FinMientras
	FinSi
	
	
	
	Escribir "Pares ---- Impares"
	para a<-0 Hasta x Hacer
		
		Escribir pares[a] "    ---- " impares[a]
	FinPara
	
FinAlgoritmo
