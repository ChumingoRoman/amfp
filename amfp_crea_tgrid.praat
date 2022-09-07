
# Crea textGrid que no fueron creados previamente
# o TetGrid sin información

directorio_meta$ = "/Users/historiadores/Desktop/meta/"

extension_etiqueta$ = ".TextGrid"

sonido = selected("Sound")

tono_total = To Pitch: 0, 75, 600

dur_sonido = Get total duration

tg = To TextGrid: "voc enun sil", "voc"

tg$ = selected$("TextGrid")



form oracion
	choice frase: 1
		button 1
		button 2
		button 4
		button 11
		button 29
		button 34
		button 48
endform


if frase == 1
	frase$ = "1"
	texto$ = "Estuvo tres meses sin tomar agua"
	n_marcas = 12
	intervalo = dur_sonido/(n_marcas+1)
elsif frase == 2
	frase$ = "2"
	texto$ = "Caminó cien mil kilómetros"
	n_marcas = 10
	intervalo = dur_sonido/(n_marcas+1)
elsif frase == 3
	frase$ = "4"
	texto$ = "Esa canción suena bastante bien"
	n_marcas = 11
	intervalo = dur_sonido/(n_marcas+1)
elsif frase == 4
	frase$ = "11"
	texto$ = "El año dos mil se conocieron"
	n_marcas = 11
	intervalo = dur_sonido/(n_marcas+1)
elsif frase == 5
	frase$ = "29"
	texto$ = "Me costó mil cien pesos chilenos"
	n_marcas = 11
	intervalo = dur_sonido/(n_marcas+1)
elsif frase == 6
	frase$ = "34"
	texto$ = "Esa canción típica no me gusta"
	n_marcas = 12
	intervalo = dur_sonido/(n_marcas+1)
elsif frase == 7
	frase$ = "48"
	texto$ = "Corrió seis mil metros"
	n_marcas = 7
	intervalo = dur_sonido/(n_marcas+1)
endif


#	for i to n_marcas
#		select tg
#		Insert point: 1, intervalo*i, ""
#	endfor




select tg


for i to n_marcas
	Insert boundary: 3, intervalo*i
endfor


if frase$ == "1"
	Set interval text: 3, 2, "Es"
	Set interval text: 3, 3, "tu"
	Set interval text: 3, 4, "vo"
	Set interval text: 3, 5, "tres"
	Set interval text: 3, 6, "me"
	Set interval text: 3, 7, "ses"
	Set interval text: 3, 8, "sin"
	Set interval text: 3, 9, "to"
	Set interval text: 3, 10, "ma"
	Set interval text: 3, 11, "ra"
	Set interval text: 3, 12, "gua"

elsif frase$ == "2"
	Set interval text: 3, 2, "Ca"
	Set interval text: 3, 3, "mi"
	Set interval text: 3, 4, "nó"
	Set interval text: 3, 5, "cien"
	Set interval text: 3, 6, "mil"
	Set interval text: 3, 7, "ki"
	Set interval text: 3, 8, "ló"
	Set interval text: 3, 9, "me"
	Set interval text: 3, 10, "tros"

elsif frase$ == "4"
	Set interval text: 3, 2, "E"
	Set interval text: 3, 3, "sa"
	Set interval text: 3, 4, "can"
	Set interval text: 3, 5, "ción"
	Set interval text: 3, 6, "sue"
	Set interval text: 3, 7, "na"
	Set interval text: 3, 8, "bas"
	Set interval text: 3, 9, "tan"
	Set interval text: 3, 10, "te"
	Set interval text: 3, 11, "bien"

elsif frase$ == "11"
	Set interval text: 3, 2, "E"
	Set interval text: 3, 3, "la"
	Set interval text: 3, 4, "ño"
	Set interval text: 3, 5, "dos"
	Set interval text: 3, 6, "mil"
	Set interval text: 3, 7, "se"
	Set interval text: 3, 8, "co"
	Set interval text: 3, 9, "no"
	Set interval text: 3, 10, "cie"
	Set interval text: 3, 11, "ron"

elsif frase$ == "29"
	Set interval text: 3, 2, "Me"
	Set interval text: 3, 3, "cos"
	Set interval text: 3, 4, "tó"
	Set interval text: 3, 5, "mil"
	Set interval text: 3, 6, "cien"
	Set interval text: 3, 7, "pe"
	Set interval text: 3, 8, "sos"
	Set interval text: 3, 9, "chi"
	Set interval text: 3, 10, "le"
	Set interval text: 3, 11, "nos"

elsif frase$ == "34"
	Set interval text: 3, 2, "E"
	Set interval text: 3, 3, "sa"
	Set interval text: 3, 4, "can"
	Set interval text: 3, 5, "ción"
	Set interval text: 3, 6, "tí"
	Set interval text: 3, 7, "pi"
	Set interval text: 3, 8, "ca"
	Set interval text: 3, 9, "no"
	Set interval text: 3, 10, "me"
	Set interval text: 3, 11, "gus"
	Set interval text: 3, 12, "ta"

elsif frase$ == "48"
	Set interval text: 3, 2, "Co"
	Set interval text: 3, 3, "rrió"
	Set interval text: 3, 4, "seis"
	Set interval text: 3, 5, "mil"
	Set interval text: 3, 6, "me"
	Set interval text: 3, 7, "tros"

endif

n_intervalos_t_3 = Get number of intervals: 3



plus sonido
View & Edit


select tono_total
View & Edit


pause Intervenga en el estrato 3

select tg

for i_intervalo  from 2 to n_intervalos_t_3

	ini_i_t_3 = Get start time of interval: 3, i_intervalo
	fin_i_t_3 = Get end time of interval: 3, i_intervalo
	centro_i_t_3 = ini_i_t_3 + ((fin_i_t_3 - ini_i_t_3)/2)

	Insert point: 1, centro_i_t_3, ""

endfor

n_puntos_t_1 = Get number of points: 1


for i to n_puntos_t_1


	if frase$ == "1"
	Set point text: 1, 1, "e"
	Set point text: 1, 2, "u"
	Set point text: 1, 3, "o"
	Set point text: 1, 4, "e*"
	Set point text: 1, 5, "e*"
	Set point text: 1, 6, "e"
	Set point text: 1, 7, "i"
	Set point text: 1, 8, "o"
	Set point text: 1, 9, "a*"
	Set point text: 1, 10, "a*"
	Set point text: 1, 11, "a"
	Set point text: 1, 12, "fn"
	
elsif frase$ == "2"

	Set point text: 1, 1, "a"
	Set point text: 1, 2, "i"
	Set point text: 1, 3, "o*"
	Set point text: 1, 4, "e*"
	Set point text: 1, 5, "i*"
	Set point text: 1, 6, "i"
	Set point text: 1, 7, "o*"
	Set point text: 1, 8, "e"
	Set point text: 1, 9, "o"
	Set point text: 1, 10, "fn"


elsif frase$ == "4"

	Set point text: 1, 1, "e"
	Set point text: 1, 2, "a"
	Set point text: 1, 3, "a"
	Set point text: 1, 4, "o*"
	Set point text: 1, 5, "e*"
	Set point text: 1, 6, "a"
	Set point text: 1, 7, "a"
	Set point text: 1, 8, "a*"
	Set point text: 1, 9, "e"
	Set point text: 1, 10, "e*"
	Set point text: 1, 11, "fn"


elsif frase$ == "11"
	Set point text: 1, 1, "e"
	Set point text: 1, 2, "a*"
	Set point text: 1, 3, "o"
	Set point text: 1, 4, "o*"
	Set point text: 1, 5, "i*"
	Set point text: 1, 6, "e"
	Set point text: 1, 7, "o"
	Set point text: 1, 8, "o"
	Set point text: 1, 9, "e*"
	Set point text: 1, 10, "o"
	Set point text: 1, 11, "fn"


elsif frase$ == "29"

	Set point text: 1, 1, "e"
	Set point text: 1, 2, "o"
	Set point text: 1, 3, "o*"
	Set point text: 1, 4, "i*"
	Set point text: 1, 5, "e*"
	Set point text: 1, 6, "e*"
	Set point text: 1, 7, "o"
	Set point text: 1, 8, "i"
	Set point text: 1, 9, "e*"
	Set point text: 1, 10, "o"
	Set point text: 1, 11, "fn"


elsif frase$ == "34"

	Set point text: 1, 1, "e"
	Set point text: 1, 2, "a"
	Set point text: 1, 3, "a"
	Set point text: 1, 4, "o*"
	Set point text: 1, 5, "i*"
	Set point text: 1, 6, "i"
	Set point text: 1, 7, "a"
	Set point text: 1, 8, "o*"
	Set point text: 1, 9, "e"
	Set point text: 1, 10, "u*"
	Set point text: 1, 11, "a"
	Set point text: 1, 12, "fn"


elsif frase$ == "48"

	Set point text: 1, 1, "o"
	Set point text: 1, 2, "o*"
	Set point text: 1, 3, "e*"
	Set point text: 1, 4, "i*"
	Set point text: 1, 5, "e*"
	Set point text: 1, 6, "o"
	Set point text: 1, 7, "fn"

endif




endfor




#nombreTG$ = tg$ + extension_etiqueta$

#appendInfoLine: tg$, tab$, nombreTG$

#Save as text file... 'directorio_meta$'/'nombreTG$'

