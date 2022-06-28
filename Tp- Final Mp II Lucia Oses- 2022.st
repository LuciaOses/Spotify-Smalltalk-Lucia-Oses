"Menu Spotify"
spotify:= MpSpotify crearSpotify: 'Spotify'.
Transcript clear.
Transcript show: '¿Que opcion desea ejecutar?
1) Crear Artista.
2) Crear Suscriptor.
3) Crear Play List.
4) Ver Nombre todos los Artistas.
5) Ver Nombre todos los Suscriptores.
6) Ver Genero Musical Artistas
7) Ver Suscriptores No ingresaron en el año 2022.
8) Ver Primer puesto de Play List.
9) RanKing Canciones Top 5.
10) Lista Todos Los Suscriptores Recientes a más Antiguos en Spotify.
0) Salir.
'.
opcion:= (Prompter prompt: 'Ingrese Opcion').
[opcion = '0' ] whileFalse: [
        respuesta:= true.
	opcion= '1' ifTrue: [
		id:= Prompter prompt: 'Ingrese su Id'.
		nombre:= Prompter prompt: 'Ingrese su nombre'.
		nacionalidad:= Prompter prompt: 'Ingrese su nacionalidad'.
		descripcion:= Prompter prompt: 'Ingrese su descripcion'.
		genero:= Prompter prompt: 'Ingrese su genero musical'.
		artista:= MpArtista crearArtistaId: id nom: nombre nac: nacionalidad des: descripcion gen: genero.
		spotify agregaArtista: artista.
		Transcript show: 'Bienvenid@!! en Spotify nos encata recibir nuevos Artistas.';cr.
		respuesta:= Prompter prompt: '¿Desea crear otro artista (si/no) ?'.
		
	].
	opcion= '2' ifTrue: [
		id:= Prompter prompt: 'Ingrese su Id'.
		nombre:= Prompter prompt: 'Ingrese su nombre'.
		nacionalidad:= Prompter prompt: 'Ingrese su nacionalidad'.
		edad:= Prompter prompt: 'Ingrese su edad'.
		mail:= Prompter prompt: 'Ingrese su mail'.
		fecha:= Prompter prompt: 'Ingrese su fecha de suscripcion'.
		suscriptor:= MpSuscriptor crearSuscriptorId: id nom: nombre nac: nacionalidad edad: edad mail: mail fecha: fecha.
		spotify AgregarSuscriptor: suscriptor.
		Transcript show: 'Bienvenid@!! en Spotify nos encata recibir nuevos Suscriptores.';cr.
		respuesta:= Prompter prompt: ' ¿Desea crear otro Suscriptor (si/no) ? '.
		
	].
	opcion= '3' ifTrue: [
		id:= Prompter prompt: 'Ingrese su Id'.
		nombre:= Prompter prompt: 'Ingrese su nombre Play List'.
		fecha:= Prompter prompt: 'Ingrese su fecha de cracion de la Play List'.
		playlist:= MpPlayList crearPlayList: id nombre: nombre fecha: fecha.
		spotify AgregarPlayList: playlist.
		Transcript show: '¡¡Play List creada correctamente!!.';cr.
		respuesta:= Prompter prompt: ' ¿Desea crear otra Play List (si/no) ? '.
	].
	opcion= '4' ifTrue: [
		listados:= spotify todosLosArtistas collect: [:ar | ar ver_Nombre ].
		listados inspect.
	].
	opcion= '5' ifTrue: [
		listauno:= spotify todosLosSuscriptores collect: [:su | su ver_Nombre ].
		listauno inspect.
	].
	opcion= '6' ifTrue: [
		opc:= Prompter prompt: 'Ingrese genero musical que desea ver'.
		listatres:= spotify todosLosArtistas select: [:ar | ar ver_GeneroMusical = opc ].
		listatres inspect.
	].
	opcion= '7' ifTrue: [
		listacua:= spotify todosLosSuscriptores reject: [:su | su ver_FechaSuscripcion = '2022'].
		listacua inspect.
	].
	opcion= '8' ifTrue: [
		listacinco:= spotify todasPlayList detect: [:pla | pla Ver_FechaCreacion = '2022'] ifNone: [^nil ].
		listacinco inspect.
	].
	opcion= '9' ifTrue: [
		"Key: Ranking, Value:Canciones"
		dicranking:= spotify VerRanking.
					dicranking inspect.
	].
	opcion= '10' ifTrue: [
		susc:= MpSuscriptor crearSuscriptorId: 7890 nom: 'Irene' nac: 'Paraguaya' edad: 18 mail: 'luciaoses@gmail.com' fecha: 2020.
		susc1:= MpSuscriptor crearSuscriptorId: 7891 nom: 'Lucia' nac: 'Brasil' edad: 18 mail: 'hola@gmail.com' fecha: 2016.
		susc2:= MpSuscriptor crearSuscriptorId: 7892 nom: 'Luna' nac: 'Paraguaya' edad: 24 mail: 'luna@gmail.com' fecha: 2014.
		susc3:= MpSuscriptor crearSuscriptorId: 7893 nom: 'Pedro' nac: 'Paraguaya' edad: 25 mail: 'loop@gmail.com' fecha: 2022.

		spotify AgregarSuscriptor: susc.
		spotify AgregarSuscriptor: susc1.
		spotify AgregarSuscriptor: susc2.
		spotify AgregarSuscriptor: susc3.

		one:= spotify todosLosSuscriptores.
		one inspect.
		sc:= (spotify todosLosSuscriptores) asSortedCollection: [:x :y| x ver_FechaSuscripcion >= y ver_FechaSuscripcion ].
		sc inspect.
		
		
	].

	opcion:= Prompter prompt: 'Ingrese Opcion'].




spotify inspect.