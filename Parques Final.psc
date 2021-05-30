Algoritmo Juego
	Definir Jugadores Como Entero
	estado1 <- Falso
	estado2 <- Falso
	estado3 <- Falso
	estado4 <- Falso
	FinJuego <- Falso
	paso1 <- 0
	paso2 <- 0
	paso3 <- 0
	paso4 <- 0
	ganador <- 0
	
	Escribir "::: ELIGE EL TABLERO :::"
	Escribir "[1]. BASICO"
	Escribir "[2]. MEDIO"
	Escribir "[3]. AVANZADO"
	Leer otp
	
	Si (otp==1) Entonces
		otp = 20
	SiNo
		Si (otp==2) Entonces
			otp = 30
		SiNo
			Si (otp==3) Entonces
				otp = 50
			FinSi
		FinSi
	FinSi
	
	Escribir "Numero de Jugadores"
	Leer Jugadores
	Si (Jugadores = 2 O Jugadores = 3 O Jugadores = 4) Entonces
	    Escribir "Lanza tus dados [1:Lanzar] : "
	    Leer d
	SiNo
		Escribir "No puede Jugar"
	FinSi

	Mientras ( d <> 0 Y FinJuego = Falso Y Jugadores = 2 )
		
		Si ( d = 1 ) Entonces
			
			d1j1 <- Aleatorio(1,6)
			d2j1 <- Aleatorio(1,6)
			d1j2 <- Aleatorio(1,6)
			d2j2 <- Aleatorio(1,6)
			Escribir ""
			Escribir "Dado[1] Jugador1: ", d1j1
			Escribir "Dado[2] Jugador1: ", d2j1
			Escribir "Paso del Jugador 1: ", paso1
			Escribir ""
			Escribir "Dado[1] Jugador 2: ", d1j2
			Escribir "Dado[2] Jugador 2: ", d2j2
			Escribir "Paso del Jugador 2: ", paso2
	     
			Si d1j2 = d1j2 Entonces
				estado2 <- Verdadero
			FinSi
			Si d1j1 = d1j1 Entonces
				estado1 <- Verdadero
			FinSi
			
			Si (estado2 = Verdadero O estado1 = Verdadero) Entonces
				
				Si (estado1 = Verdadero Y paso1 < otp Y (paso1 + (d1j1 + d2j1) <= otp) ) Entonces
					paso1 <- paso1 + (d1j1 + d2j1)
				FinSi
				 
				Si (estado2 = Verdadero Y paso2 < otp Y (paso2 + (d1j2 + d2j2) <= otp) ) Entonces
					paso2 <- paso2 + (d1j2 + d2j2)
				FinSi
				 
				Si (paso2 = otp) Entonces
					FinJuego <- Verdadero
					ganador <- 2
				SiNo
					Si (paso2 = otp-1 y paso1 = otp-1) Entonces
						FinJuego <- Verdadero
						Escribir "No hubo ganador"
					FinSi
				FinSi
				
				Si (paso1 = otp) Entonces
					FinJuego <- Verdadero
					ganador <- 1
				FinSi
			FinSi
		FinSi
	FinMientras
	
	Mientras ( d <> 0 Y FinJuego = Falso Y Jugadores = 3 )
		
		Si ( d = 1 ) Entonces
			
			d1j1 <- Aleatorio(1,6)
			d2j1 <- Aleatorio(1,6)
			d1j2 <- Aleatorio(1,6)
			d2j2 <- Aleatorio(1,6)
			d1j3 <- Aleatorio(1,6)
			d2j3 <- Aleatorio(1,6)
			Escribir ""
			Escribir "Dado[1] Jugador1: ", d1j1
			Escribir "Dado[2] Jugador1: ", d2j1
			Escribir "Paso del Jugador 1: ", paso1
			Escribir ""
			Escribir "Dado[1] Jugador 2: ", d1j2
			Escribir "Dado[2] Jugador 2: ", d2j2
			Escribir "Paso del Jugador 2: ", paso2
			Escribir ""
			Escribir "Dado[1] Jugador 3: ", d1j3
			Escribir "Dado[2] Jugador 3: ", d2j3
			Escribir "Paso del Jugador 3: ", paso3
			
			Si d1j2 = d1j2 Entonces
				estado2 <- Verdadero
			FinSi
			Si d1j1 = d1j1 Entonces
				estado1 <- Verdadero
			FinSi
			Si d1j3 = d1j3 Entonces
				estado3 <- Verdadero
			FinSi
			
			Si (estado2 = Verdadero O estado1 = Verdadero O estado3 = Verdadero) Entonces
				
				Si (estado1 = Verdadero Y paso1 < otp Y (paso1 + (d1j1 + d2j1) <= otp) ) Entonces
					paso1 <- paso1 + (d1j1 + d2j1)
				FinSi
				
				Si (estado2 = Verdadero Y paso2 < otp Y (paso2 + (d1j2 + d2j2) <= otp) ) Entonces
					paso2 <- paso2 + (d1j2 + d2j2)
				FinSi
				
				Si (estado3 = Verdadero Y paso3 < otp Y (paso3 + (d1j3 + d2j3) <= otp) ) Entonces
					paso3 <- paso3 + (d1j3 + d2j3)
				FinSi
				
				Si (paso2 = otp) Entonces
					FinJuego <- Verdadero
					ganador <- 2
				SiNo
					Si (paso2 = otp-1 y paso1 = otp-1 y paso3 = otp-1) Entonces
						FinJuego <- Verdadero
						Escribir "No hubo ganador"
					FinSi
				FinSi
				
				Si (paso1 = otp) Entonces
					FinJuego <- Verdadero
					ganador <- 1
				FinSi
				Si (paso3 = otp) Entonces
					FinJuego <- Verdadero
					ganador <- 3
				FinSi
			FinSi
		FinSi
	FinMientras
	
	Mientras ( d <> 0 Y FinJuego = Falso Y Jugadores = 4 )
		
		Si ( d = 1 ) Entonces
			
			d1j1 <- Aleatorio(1,6)
			d2j1 <- Aleatorio(1,6)
			d1j2 <- Aleatorio(1,6)
			d2j2 <- Aleatorio(1,6)
			d1j3 <- Aleatorio(1,6)
			d2j3 <- Aleatorio(1,6)
			d1j4 <- Aleatorio(1,6)
			d2j4 <- Aleatorio(1,6)
			Escribir ""
			Escribir "Dado[1] Jugador1: ", d1j1
			Escribir "Dado[2] Jugador1: ", d2j1
			Escribir "Paso del Jugador 1: ", paso1
			Escribir ""
			Escribir "Dado[1] Jugador 2: ", d1j2
			Escribir "Dado[2] Jugador 2: ", d2j2
			Escribir "Paso del Jugador 2: ", paso2
			Escribir ""
			Escribir "Dado[1] Jugador 3: ", d1j3
			Escribir "Dado[2] Jugador 3: ", d2j3
			Escribir "Paso del Jugador 3: ", paso3
			Escribir ""
			Escribir "Dado[1] Jugador 4: ", d1j4
			Escribir "Dado[2] Jugador 4: ", d2j4
			Escribir "Paso del Jugador 4: ", paso4
			
			Si d1j2 = d1j2 Entonces
				estado2 <- Verdadero
			FinSi
			Si d1j1 = d1j1 Entonces
				estado1 <- Verdadero
			FinSi
			Si d1j3 = d1j3 Entonces
				estado3 <- Verdadero
			FinSi
			Si d1j4 = d1j4 Entonces
				estado4 <- Verdadero
			FinSi
			
			Si (estado2 = Verdadero O estado1 = Verdadero O estado3 = Verdadero) Entonces
				
				Si (estado1 = Verdadero Y paso1 < otp Y (paso1 + (d1j1 + d2j1) <= otp) ) Entonces
					paso1 <- paso1 + (d1j1 + d2j1)
				FinSi
				
				Si (estado2 = Verdadero Y paso2 < otp Y (paso2 + (d1j2 + d2j2) <= otp) ) Entonces
					paso2 <- paso2 + (d1j2 + d2j2)
				FinSi
				
				Si (estado3 = Verdadero Y paso3 < otp Y (paso3 + (d1j3 + d2j3) <= otp) ) Entonces
					paso3 <- paso3 + (d1j3 + d2j3)
				FinSi
				
				Si (estado4 = Verdadero Y paso4 < otp Y (paso4 + (d1j4 + d2j4) <= otp) ) Entonces
					paso4 <- paso4 + (d1j4 + d2j4)
				FinSi
				
				Si (paso2 = otp) Entonces
					FinJuego <- Verdadero
					ganador <- 2
				SiNo
					Si (paso2 = otp-1 y paso1 = otp-1 y paso3 = otp-1 y paso4 = otp-1) Entonces
						FinJuego <- Verdadero
						Escribir "No hubo ganador"
					FinSi
				FinSi
				
				Si (paso1 = otp) Entonces
					FinJuego <- Verdadero
					ganador <- 1
				FinSi
				Si (paso3 = otp) Entonces
					FinJuego <- Verdadero
					ganador <- 3
				FinSi
				Si (paso4 = otp) Entonces
					FinJuego <- Verdadero
					ganador <- 4
				FinSi
			FinSi
		FinSi
	FinMientras
	Si (ganador = 1) Entonces
		Escribir "El ganador fue el jugador 1"
	SiNo Si (ganador = 2) Entonces 
			Escribir "El ganador fue el jugador 2"
		Sino Si (ganador = 3) Entonces
				Escribir "El ganador fue el juagdor 3"
			SiNo Si (ganador = 4) Entonces
					Escribir "El ganador fue el jugador 4"
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
