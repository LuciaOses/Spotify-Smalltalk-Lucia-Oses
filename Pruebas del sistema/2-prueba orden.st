spotify:= MpSpotify crearSpotify: 'Spotify'.
susc:= MpSuscriptor crearSuscriptorId: 7890 nom: 'Irene' nac: 'Paraguaya' edad: 18 mail: 'luciaoses@gmail.com' fecha: 2020.
susc1:= MpSuscriptor crearSuscriptorId: 7891 nom: 'Lucia' nac: 'Brasil' edad: 18 mail: 'hola@gmail.com' fecha: 1997.
susc2:= MpSuscriptor crearSuscriptorId: 7892 nom: 'Luna' nac: 'Paraguaya' edad: 24 mail: 'luna@gmail.com' fecha: 2025.
susc3:= MpSuscriptor crearSuscriptorId: 7893 nom: 'Pedro' nac: 'Paraguaya' edad: 25 mail: 'loop@gmail.com' fecha: 2022.

spotify AgregarSuscriptor: susc.
spotify AgregarSuscriptor: susc1.
spotify AgregarSuscriptor: susc2.
spotify AgregarSuscriptor: susc3.

one:= spotify todosLosSuscriptores.
one inspect.
sc:= (spotify todosLosSuscriptores) asSortedCollection: [:x :y| x ver_FechaSuscripcion > y ver_FechaSuscripcion ].
sc inspect.


