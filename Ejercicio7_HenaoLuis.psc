

//#########################################################################################################
// El programa selecciona aleatoriamente un número secreto entre 1 y 100.El usuario tiene un total de 10 intentos para adivinar el número secreto.
//Después de cada intento, el programa dará pistas indicando si el número secreto es mayor o menor que la suposición actual del usuario.
//Si el usuario adivina correctamente, el programa felicitará al jugador y mostrará en cuántos intentos lo logró.
//Se deben manejar eventos como entrada no válida (por ejemplo, si el usuario ingresa algo que no es un número) y la agotación de los 10 intentos.
//El programa debe ser amigable y explicar claramente las instrucciones al usuario.
//#########################################################################################################


Algoritmo Ejercicio7_HenaoLuis
	Escribir "Jugaremos un juego "
	Escribir "Tienes 10 intentos para adivinar un numero del 1 al 100"
	Escribir "Despues de cada intento te estare dando pistas para que sepas"
	Escribir "si el numero a adivinar es mayor o menor "
	Escribir "Que comience el juego ;)"
	n=Aleatorio(1,100)
	
	
	// no se como hacer el evento de entreda no valida si el usuario ingresa algo que no es un número)
	bool=Verdadero
	Mientras bool=Verdadero Hacer
		
		Escribir "Ingrese su intento"
		Leer intento 
		si intento>=101 Entonces //si el intento es un numero mayor a 100 le dira que perdio el intento y le dira los numero que puede poner 
			Escribir "Tienes que ingresar un numero entre el 1 y el 100 (perdiste el intento)"
		FinSi
		si intento<=0 Entonces //si el intento es un numero menor a 1 le dira que perdio el intento y le dira los numero que puede poner 
			Escribir "Tienes que ingresar un numero entre el 1 y el 100 (perdiste el intento)"
		FinSi
		x=x+1 //este es un contador para que valla contando cuantos intentos lleva 
		
		si n<intento y intento>=1 y intento<=100 Entonces //si el intento ingresado es menor a n que es el numero  que tiene que adivinar le dira que el numero a adivinar es mayor
			Escribir "El numero a adivinar es menor"
		FinSi
		si n>intento y intento>=1 y intento<=100 Entonces //si el intento ingresado es menor a n que es el numero  que tiene que adivinar le dira que el numero a adivinar es menor
			Escribir "El numero a adivinar es mayor"
			
		FinSi
		
		si n=intento Entonces //si el intento ingresado es igual a n que es el numero  que tiene que adivinar lo felicitara y le dira en cuantos intentos lo hizo
			Escribir "Felicitaciones adivinaste el numero :)"
			Escribir "Lo lograste en el intento: " x 
			bool=Falso
		FinSi
		si x>=10 Entonces //si los intentos son iguales o superan a 10 le dira que se acabaron los intentos y terminara el programa 
			Escribir "Se acabaron tus intentos :("
			Escribir "El numero a adivinar era: " n
			bool=Falso
		FinSi
		
	FinMientras
	
	
FinAlgoritmo
