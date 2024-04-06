

//#########################################################################################################
//En una clinica de control al sobrepeso requieren almacenar los nombres y los pesos tomados durante un periodo 
//de tiempo a un grupo de n pacientes. Durante un mes, cada paciente es pesado 3 veces (una pesada inicial, una intermedia
//y una pesada final) con el fin de determinar su evolucion durante ese periodo. Construya un programa que permita almacenar estos datos y que ademas encuentre: 
//a)  Cuanto peso ha ganado o perdido cada paciente con respecto al peso inicial. 
//b)  Cuantos pacientes perdieron peso entre la pesada inicial y la pesada intermedia. ?
//c)  Suponga que tambien se tiene otro arreglo en el que se almacena por cada paciente su objetivo: ganar o perder
//peso durante el periodo. Determine cuantos pacientes alcanzaron el objetivo.
//#########################################################################################################

Algoritmo Ejercicio6_HenaoLuis
	
	Escribir "Ingrese la cantidad de pacientes para control de sobrepeso"
	Leer n
	Dimension nombre[n]
	Dimension peso1[n] //se hacen 3 arreglos diferentes para pesos ya que son 3 pesos por paciente 
	Dimension peso2[n]
	Dimension peso3[n]
	Dimension perdidaFinal[n]
	Dimension perdidaIntermedia[n]
	Dimension objetivo[n]
	
	//se pide que ingrese los datos necesarios
	Para i<-0 Hasta n-1 Hacer
		Escribir "Ingrese el nombre del " i+1 " paciente"
		Leer nombre[i]
		Escribir "¿Cual es el objetivo del paciente con su peso? (ganar/perder)"
		Leer objetivo[i]
		Escribir "Ingrese el 1 peso del paciente (kg)"
		Leer peso1[i]
		Escribir "Ingrese el 2 peso del paciente (kg)"
		Leer peso2[i]
		Escribir "Ingrese el 3 peso del paciente (kg)"
		Leer peso3[i]
		
	FinPara
	//----------------------------------------------------------------------------------------------------------
	Para a<-0 Hasta n-1 Hacer //para saber cuanto perdio o gano respecto al peso inicial se le resta el peso inicial al peso final y se guarda en el arreglo perdidaFinal
		perdidaFinal[a]=peso3[a]-peso1[a]
		
	FinPara
	//----------------------------------------------------------------------------------------------------------
	canPerdio=0
	Para b<-0 Hasta n-1 Hacer
		perdidaIntermedia[b]=peso2[b]-peso1[b] //para saber cuanto peso gano o perdio entre el peso inicial y el peso intermedio  se le resta el peso inicial al peso intermedio 
		//y se guarda en el arreglo perdidaIntermedio
		si perdidaIntermedia[b]<0 Entonces //si perdida intermedio es menor a 0 significa que el pasiente perdio peso y por tanto se le suma 1 a canperdio que es la variable 
			//que almacena cuantas personas perdieron peso
			canPerdio=canperdio+1
		FinSi
	FinPara
	//----------------------------------------------------------------------------------------------------------
	

	//----------------------------------------------------------------------------------------------------------
	para q<-0 Hasta n-1 Hacer
		si perdidaFinal[q]>0 Entonces //si perdidaFinal es mayor a 0 segnifica que gano peso 
			Escribir nombre[q] " gano: " perdidaFinal[q] " kg"
		SiNo
			
			si perdidaFinal[q] <0 Entonces //si perdidaFinal es menor que cero significa que perdio peso pero como el numero esta en negativo y lo quiero en positivo a perdidaFinal le resto dos
				//veces perdidaFinal ya que negativo por negativo da positivo, con la promera resta se convierte en cero y con la segunda ya queda el mismo numero pero en positivo y esto se guarda
				//en la variable doble
				doble=perdidaFinal[q]-perdidaFinal[q]-perdidaFinal[q]
				Escribir nombre[q] " perdio: " doble " kg"
			SiNo
				si perdidaFinal[q]=0 // si perdida final es igual a 0 entonces el paciente no perdio ni gano peso 
					Escribir nombre[q] " No perdio ni gano peso"
				FinSi
			FinSi
		FinSi
	FinPara
	Escribir "--------------------------------------------------------------------------------------"
	//----------------------------------------------------------------------------------------------------------
	Escribir  "Cantidad de personas que perdieron peso entre el peso inicial y el peso intermedio: " canPerdio  
	Escribir "--------------------------------------------------------------------------------------"
	//----------------------------------------------------------------------------------------------------------
	//
	para x<-0 Hasta n-1 Hacer
		si objetivo[x]="ganar" Entonces // si el objetivo del paciente es ganar peso se mira si perdida final es mayor a 0 si es asi entonces el paciente cumplio su objetivo
			//de lo contrario no cumplio su objetivo
			si perdidaFinal[x]>0 Entonces
				Escribir nombre[x] " cumplio su objetivo"
			SiNo
				
				Escribir nombre[x] " no cumplio su objetivo"
				
			FinSi
		FinSi
		si objetivo[x]="perder" Entonces// si el objetivo del paciente es perder peso se mira si perdida final es menor a 0 si es asi entonces el paciente cumplio su objetivo
			//de lo contrario no cumplio su objetivo
			si perdidaFinal[x]<0 Entonces
				Escribir nombre[x] " cumplio su objetivo"
			SiNo
				
				Escribir nombre[x] " no cumplio su objetivo"
				
			FinSi
		FinSi
	FinPara


FinAlgoritmo
