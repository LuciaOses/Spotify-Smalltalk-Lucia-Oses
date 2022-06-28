|suscriptores artistas|
suscriptores:= OrderedCollection new.
artistas:= OrderedCollection new.

artis:= MpArtista crearArtistaId: 3456 nom: 'Chango Spasiuk' nac: 'Argentina' des: 'Musico/compositor' gen: 'Folclore'.
artis1:= MpArtista crearArtistaId: 3457 nom: 'Bruno Arias' nac: 'Argentina' des: 'Musico' gen: 'Folclore'.
artis2:= MpArtista crearArtistaId: 3458 nom: 'Raly Barrionuevo' nac: 'Argentina' des: 'Cantautor' gen: 'Folclore'.
artis3:= MpArtista crearArtistaId: 3459 nom: 'Milena Salamanca' nac: 'Argentina' des: 'Interprete/compositora' gen: 'Folclore'.
artis4:= MpArtista crearArtistaId: 3460 nom: 'Charly Garcia' nac: 'Argentina' des: 'Cantautor' gen: 'Rock Nacional'.
artis5:= MpArtista crearArtistaId: 3461 nom: 'Pablo Alboran' nac: 'Español' des: 'Cantautor' gen: 'Pop'.


susc:= MpSuscriptor crearSuscriptorId: 7890 nom: 'Irene' nac: 'Paraguaya' edad: 18 mail: 'luciaoses@gmail.com' fecha: 2022.
susc1:= MpSuscriptor crearSuscriptorId: 7891 nom: 'Lucia' nac: 'Brasil' edad: 18 mail: 'hola@gmail.com' fecha: 2022.
susc2:= MpSuscriptor crearSuscriptorId: 7892 nom: 'Luna' nac: 'Paraguaya' edad: 24 mail: 'luna@gmail.com' fecha: 2022.
susc3:= MpSuscriptor crearSuscriptorId: 7893 nom: 'Pedro' nac: 'Paraguaya' edad: 25 mail: 'loop@gmail.com' fecha: 2022.

artistas add: artis.
artistas add: artis1.
artistas add: artis2.
artistas add: artis3.
artistas add: artis4.
artistas add: artis5.

suscriptores add: susc.
suscriptores add: susc1.
suscriptores add: susc2.
suscriptores add: susc3.


"******** Prueba Select*******"
"Retorna suscriptor con 18 años"
pruebasus:= suscriptores select: [:su |su ver_Edad = 18].


"******** Prueba reject*******"
"Retorna suscriptor con edad distinta a 18 años"
pruebasus1:= suscriptores reject: [:su |su ver_Edad = 18].

"******** Prueba detct*******"
"Retorna primer nombre de los suscriptores del 2022  "
pruebasusc3:= suscriptores detect: [:su |su  ver_FechaSuscripcion = 2022 ] ifNone:[ ^nil ].

"******** Prueba collect*******"
"Retorna nombre de los Artistas"
pruebartistas:= artistas collect: [:ar |ar ver_Nombre ].
pruebartistas inspect.
