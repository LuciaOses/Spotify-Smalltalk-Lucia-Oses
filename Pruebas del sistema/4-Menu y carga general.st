"Menu Spotify"
spotify:= MpSpotify crearSpotify: 'Spotify'.
Transcript show: '¿Que opcion desea ejecutar?
1) Crear Artista.
2) Crear Usuario.
3) Crear Cancion.
4) Salir.
'.
respuesta:= (Prompter prompt: 'Ingrese Opcion')asNumber.
[respuesta = 4 ] whileFalse: [
	
	(respuesta = 1) ifTrue: [ 
		id:= Prompter prompt: 'Ingrese su Id'.
		nombre:= Prompter prompt: 'Ingrese su nombre'.
		nacionalidad:= Prompter prompt: 'Ingrese su nacionalidad'.
		descripcion:= Prompter prompt: 'Ingrese su descripcion'.
		genero:= Prompter prompt: 'Ingrese su genero musical'.
		artista:= MpArtista crearArtistaId: id nom: nombre nac: nacionalidad des: descripcion gen: genero.
		spotify agregaArtista: artista.
		Transcript show: 'Artista creado correctamente'
		].
respuesta:= Prompter prompt: 'Ingrese Opcion'].


spotify inspect.