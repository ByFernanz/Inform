"Tuuli (Spanish)" by Daurmith and Ruber Eaglenest (in Spanish).
 
Include Quip-Based Conversation Sp by Michael Martin.
Include Basic Screen Effects by Emily Short.
  
[Historia interactiva para la jam "Canciones del desierto, la tormenta y el mar". 
Más información en https://itch.io/jam/canciones-del-desierto-la-tormenta-y-el-mar]
 
The story headline is "Un ritual interactivo".
The story genre is "Fantasy".
The release number is 4.
The story description is "Mákke, la vieja bruja del pueblo y tu maestra, ha muerto. Si quieres salvar a tu aldea vas a tener que destruir la flotilla que se acerca por el mar. ¿Podrás, joven Lenne-que-quiere-ser-bruja?"
The story description is "Mákke, la vieja bruja del pueblo y tu maestra, ha muerto. Si quieres salvar a tu aldea vas a tener que destruir la flotilla que se acerca por el mar. ¿Podrás, joven Lenne-que-quiere-ser-bruja?"
The story creation year is 2017.
 
Release along with an interpreter and cover art.

[Use memory economy.]

When play begins:
		say "[line break][italic type]Tuulen Ukko tuulen Akka[line break]
Tuulen kaikki ristikansa

Miestä mustoa rukoilen[line break]
Suuren tuulen nostajaksi --

	-- Tuuli, Hedningarna[line break]";
	say "[line break][italic type]'Dicen que las brujas contamos las historias que importan. Así lo han dispuesto los dioses.[line break]
Si es así, escuchad. Soy Lenne. Soy la bruja. Esta es la historia.'[roman type][line break]".

After printing the banner text:
	say "[line break][bracket]Si es la primera vez que juegas Ficción Interactiva puedes usar el comando AYUDA para más información.[close bracket][line break]".

Chapter 0 - Definiciones e inicializaciones

[Rule for deciding whether all includes scenery: it does not.]

[The grammatical gender of an object is usually masculine gender.]

[ Lenne ]

The player is female.

Instead of examining the player:
	if Muertos is not happening:
		say "Tu aspecto no tiene nada de especial. Eres la joven-Lenne-que-quiere-ser-bruja. Poquita cosa, flaca, pálida y que aún lleva sus trenzas de muchacha."

The vestido (m) is worn by the player. The description is "Un vestido oscuro de lana de una sola pieza, manchado de barro." The printed name is "vestido de lana". Understand "vestido de lana" as the vestido. Instead of taking off the vestido, say "No, no piensas ir desnuda por ahí."

Some botas (f) are worn by the player. The description is "Son un un regalo de Mákke de cuando entraste a ser su discípula. Ventajas de ser la alumna de la bruja." Understand "Botas de piel de reno" or "botas de piel" or "mis botas" as the botas. The printed name is "botas de piel de reno". Instead of taking off the botas, say "No, no piensas ir por ahí pisando la nieve con los pies desnudos."

Instead of sleeping, say "Estás completamente despierta."

Instead of rubbing the player, say "No es el momento."  Instead of cleaning the player, say "No es el momento."

[ Inventario largo ]

Instead of taking inventory:
	if the number of things carried by the player is 0:
		say "";
	otherwise:
		say "Tienes ";
		now all things carried by the player are marked for listing;
		now all things worn by the player are unmarked for listing;
		[if no things carried by the player are marked for listing, say "nothing";]
		[otherwise:]
		list the contents of the player, as a sentence, tersely, giving brief inventory information, including contents, listing marked items only;
	if the number of things carried by the player is 0:
		say "Todo lo que llevas encima ahora mismo es ";
	otherwise:
		say ". Además llevas puesto ";
	now all things enclosed by the player are unmarked for listing;
	now all things worn by the player are marked for listing;
	if no things worn by the player are marked for listing, say "nada";
	otherwise list the contents of the player, as a sentence, listing marked items only;
	say ".[paragraph break]".

[ Deserted ]

A room can be populated or deserted. A room is usually deserted. 

[ Out of reach ]

A thing can be outofreach. Instead of taking or touching or pushing or rubbing or pulling or tasting or cutting a thing that is outofreach: say "Está[n] fuera de tu alcance."

Instead of smelling something that is outofreach: say "Lo único que hueles es a mar."

[ Lo siguiente se necesita por un error de la librería Include Quip-Based Conversation Sp by Michael Martin. Que genera un error en tiempo de ejecución al tratar de examinar con objetos no vivos.

Esta regla lo soluciona PERO hará que todo Instead of talking quede invalidado. Por tanto en adelante hay que usar Before talking to Objeto en concreto, instead.]

Instead of talking to something when the noun is not a person, say "Por lo general, es mejor hablar con cosas vivas."

you-can-also-see rule response (A) is "Además puedes ".


Section 1 - Objetos mágicos

A magical object is a kind of thing. A magical object can be charged or uncharged. A magical object is usually uncharged. 

Section 2 - Verbos

parser error internal rule response (A) is "No conozco ese verbo."

[ USAR mistakes varios y SACRIFICAR ]

Understand "usa [text]" as a mistake ("[bracket]El verbo USAR es demasiado genérico. Trata de expresar lo que quieres hacer con un verbo más concreto. Para más información escribe AYUDA.[close bracket]")

Understand "prepara [text]" as a mistake ("[bracket]El verbo PREPARAR es demasiado genérico. Trata de expresar lo que quieres hacer paso a paso con verbos más concreto. Por ejemplo, en el caso de PREPARAR A MÁKKE necesitas indicar los pasos de esa preparación. Para más información escribe AYUDA.[close bracket]")

Understand "quien" or "que" or "cuando" or "donde" or "por que" or "como" or "quiero" or "pues" or "que" as "[query]". 

Understand "[query] [text]" as a mistake ("[bracket][story title] entiende comandos directos, tales como '[command prompt]examinar [a random thing that can be seen by the player]', no frases elaboradas o preguntas. Intenta comunicarte dando órdenes al juego para que el personaje las realice. Para más información, teclea AYUDA.[close bracket]"). 

Understand "sacrifica" or "sacrifica [text]" as a mistake ("[bracket]En esta historia no es necesario sacrificar ningún tipo de animal o ser humano. A pesar del contexto de la historia el único sacrificio que hay que hacer es el sacrificio de tu propia sangre, que puedes realizar con la acción 'cortarme'.[close bracket]")


[ Comando salidas ]

Getting bearings is an action out of world. Understand "salidas" as getting bearings.

Understand the command "x" as something new. Understand the command "x" as "salidas".

Include (-
VerboIrregular "salidas" with imperativo 'salidas';
-)

Definition: a direction (called thataway) is viable if the room thataway from the location is a room.

Report getting bearings:
	say "Puedes ir hacia [the list of viable directions]." 


[ EXAM ]

Understand the command "exam" as "examina".

Include (-
VerboIrregular "examinar" with imperativo 'exam';
-)

[ AYUDA ]

Getting help is an action out of world. Understand "ayuda" as getting help.

Report getting help: say "[italic type]Tuuli[roman type] es una obra de ficción interactiva con parser. Esto quiere decir que debes introducir las órdenes para controlar al personaje usando verbos preferiblemente en infinitivo. Por lo general, en cada turno, considera que estás respondiendo a la pregunta '¿Qué vas a hacer a continuación?'[paragraph break]
'[command prompt]examinar el cofre', por ejemplo.[paragraph break]
Para moverte por el escenario debes usar el verbo IR, seguido de los puntos cardinales. IR HACIA EL NORTE. Aunque puedes abreviarlo escribiendo directamente las abreviaturas de los puntos cardinales N, S, E, O, SALIR, ENTRAR, SUBIR y BAJAR. Puedes conocer las salidas disponibles usando el comando SALIDAS o X.[paragraph break]
Algunos verbos comunes son: INVENTARIO, cuya abreviatura es la letra I, te dirá qué objetos llevas. MIRAR te describe lo que hay a tu alrededor en la localidad actual. COGER o TOMA y DEJAR para manejar objetos. Y sobre todo EXAMINAR, para extraer más información de cada objeto y del escenario.[paragraph break]
Y más verbos que deberás encontrar.[paragraph break]
Llegado el momento el juego indicará que se necesita un comando especial: RECITAR CONJURO. Ese será un buen momento para GUARDAR la partida que puedes RECUPERAR más tarde.[paragraph break]
Algunos verbos adicionales que se pueden usar en esta historia son: ABRIR, CERRAR, PONERME, QUITARME, QUITAR, FROTAR, UNTAR, LIMPIAR, CORTAR, CLAVAR, ROMPER, MOVER, OLER, TOCAR, BESAR, NADA o COMER. Además debes de usar el comando HABLAR CON para interactuar con los personajes. Una vez iniciada conversación, usa los números del menú para elegir qué decir al personaje.[paragraph break]
Escribe ACERCA DE para saber más detalles sobre el juego, quién lo ha hecho y cómo contactar con los autores."

Getting info is an action out of world. Understand "acerca de" and "info" and "créditos" as getting info.

Report getting info: say "[italic type]Tuuli[roman type], un ritual interactivo.[paragraph break]
Daurmith: Historia, letras y programación adicional.[line break]
Ruber Eaglenest: Programación, historia adicional y letras adicionales.[line break]
Benjamin Sloth Lindgreen: Foto de portada.

Producida durante el mes de Junio de 2017 para la JAM Canciones del desierto la tormenta y el mar. El juego está inspirado en la canción Tuuli, del grupo escandinavo Hedningarna.

Se ha mejorado, ampliado y traducido durante tres meses más de trabajo para la IF Comp del 2017.

La actual versión de mayo de 2018 tiene seis meses de trabajo adicional como versión post-competición, esperamos que definitiva.

Agradecimientos a las personas que han aportado sugerencias o errores con los cuales hemos podido mejorar el juego: Baltasar el Arquero, Johan Paz, No-nonsense, Comely, Chaky, Mariela Scullywen, Joey Jones, Verity Virtue, Pseudavid, Dan Fabulich, Craiglocke, Catacalypto, and Jack Welch.

Puedes encontrar a los autores del juego en twitter [italic type]@Daurmith y @RuberEaglenest[roman type].

[bold type]Advertencia de contenido:[roman type] [italic type]Tuuli[roman type] es una pieza corta de fantasía con elementos de horror: descripción de imágenes gráficas y brujería. El juego dura en torno a treinta minutos. No hay necesidad de hacerse un mapa, pero grabar la partida es conveniente."


[ CORTAR CON ]

Understand "corta [something] con [something]" as cutting it with.

Understand the command "raja" as "corta".

Cutting it with is an action applying to one touchable thing and one carried thing.

Check cutting it with:
	if the second noun is not the cuchillo:
		say "Necesitas un objeto cortante." instead.
		
Carry out cutting it with:
	say "Cortándolo no lograrás gran cosa."

Instead of cutting something:
	if the player has the cuchillo:
		try cutting the noun with the cuchillo;
	otherwise:
		say "Necesitas un objeto cortante."

Instead of cutting the player with the cuchillo, say "No necesitas derramar tu sangre. De momento."

[ CLAVAR ]

Understand "clava [something] con [something]" as stabbing it with.

Understand the command "acuchilla" and "apunala" as "clava".

Include (-
VerboIrregular "apuñalar" with imperativo 'apunala';
-)

Stabbing it with is an action applying to one touchable thing and one touchable thing.

Check stabbing it with:
	if the second noun is not the cuchillo:
		say "Necesitas un objeto punzante." instead.
		
Carry out stabbing it with:
	say "Clavándolo no lograrás gran cosa."

Understand "clava [something]" as stabbing.

Stabbing is an action applying to one touchable thing.

Carry out stabbing:
	say "No tienes nada para clavar."	

Instead of stabbing something:
	if the player has the cuchillo:
		try stabbing the noun with the cuchillo;
	otherwise:
		say "Necesitas un objeto punzante."
		
Understand "clava [something] en/a/al [something]" as stabbing it with (with nouns reversed).

[ UNGIR CON ]

Understand "unge [something] con [something]" as anointing it with.

Include (-
VerboIrregular "ungir" with imperativo 'unge';
-)

Understand the command "unta" as "unge".

anointing it with is an action applying to one touchable thing and one carried thing.

Check anointing it with:
	if the second noun is not the frasco:
		say "Necesitas el frasco de aceites aromatizados." instead.
		
Carry out anointing it with:
	say "Untándolo con el preciado aceite no conseguirás gran cosa."
	
report rubbing rule response (A) is "No es necesario frotar eso.".

[ CLEAN different from RUB ]

Understand the commands "lava", "limpia" as something new.

Cleaning is an action applying to one thing.

Understand "limpia [something]" as cleaning.

Carry out cleaning:
	say "No hay necesidad de lavar eso ahora."
	
Understand the commands "lava" as "limpia".
	
[ DESNUDAR DESVESTIR]

Understand "desviste [something]" as undress.

Include (-
VerboIrregular "desvestir" with imperativo 'desviste';
-)

Understand the command "desnuda" as "desviste".

Undress is an action applying to one touchable thing.

Carry out undress:
	say "Eso no se puede desvestir."
	
Instead of undress yourself, try taking off the vestido.

Instead of undress vestido, try taking off the vestido.

[ QUITAR ]

Definition: a thing is removable if it is part of something. Understand "quita [removable thing]" as removing it from. 

[ DESPELLEJAR ]

Understand "despelleja [something]" as flaying.

Understand the command "desolla" as "despelleja"

Flaying is an action applying to one touchable thing.

Carry out flaying:
	say "No es necesario despellejar eso."

[ NADAR ]

swimming is an action applying to nothing.

Understand "nada" and "bucea" as swimming.

Carry out swimming:
	say "No hay agua en la que nadar."
	
[ BESAR ]

Understand nothing as kissing.
Understand "besa a/- [a thing]" as kissing.
Understand "besa [a thing]" as kissing.

Instead of kissing a thing that is not a person:
	say "No es necesario besar eso."
	
Instead of kissing a person:
	say "No es lo más apropiado en este momento."

[ ROMPER distinto de MATAR ]

Understand the command "mata" as something new.

[ Nada de Saltar. ]

Understand the command "salta" as something new.

[ No waving ]

Understand the command "saluda" as something new.

[ No estrujar ]

Understand the command "estruja" as something new.

[ No chupar... bueno sí ]

Understand the command "chupa" as "prueba".

report tasting rule response (A) is "No es apropiado probar eso.".

[ TATUAR ]

Understand "tatua [something]" as tattooing.

Tattooing is an action applying to one touchable thing.

Carry out tattooing:
	say "No hay nada que tatuar ahí."

[ ASOMAR ]

Understand "asoma a/al [something]" as peering over.

Understand the command "asomarse" and "asomarte" and "asomarme" and "asomate" as "asoma".

Peering over is an action applying to one visible thing.

Carry out peering over:
	say "No ves nada especial."
	
[ WARM ]

Warming is an action applying to one visible thing.

Understand "calienta [something]" as warming.

Include (-
VerboIrregular "calentar" with imperativo 'calienta';
-)

Carry out warming:
	say "No hay necesidad de calentar eso."


Section 3 - This section intentionally left blank


















Section 4 - Escenas

Encontrar is a scene. Encontrar begins when Choza is visited. 

Conversación is a scene. Conversación begins when Encontrar ends.

Ascenso is a scene. Ascenso begins when Acantilado is visited and the rocas are charged.

BuscaPoder is a scene. BuscaPoder begins when Conversación ends. BuscaPoder ends when the elements are present and the player is in Acantilado.

Preparación is a scene. Preparación begins when the elements are present and the player is in Acantilado.

To decide if the elements are present:
	if the player has the odre and the player can see the cuchillo and the player can see the frasco:
		decide yes;
	otherwise:
		decide no.

Ritual is a scene. Ritual begins when Preparación ends.

Muertos is a scene. Muertos begins when Ritual ends.


Chapter 1 - Encontrar a Mákke


Section 1- Choza
 
Choza is a room. "[if unvisited]Despiertas en tu jergón, el grito aún doliendo en tu garganta.

Vas a donde duerme Mákke, a contarle el sueño. No está en su cama, y sabes que está muerta antes de saber dónde está. La habitación está negra, como sus ojos. Fría, como sus huesos. Vacía, como su cuerpo.[otherwise]La cabaña no es diferente a las demás de la aldea: paredes de troncos sellados con barro y corteza y una única sala con suelo de tierra apisonada. Has pasado más tiempo en esta habitación que en casa de tus padres y la conoces mejor que la palma de tu mano; una tosca zona de trabajo, la cama de Mákke y tu jergón, además de algunos enseres cotidianos y algunas hierbas secas que os quedan de la colecta de primavera. Los pocos tesoros que Mákke apreció en vida parecen poca cosa tras su muerte: el arcón de madera pintada, el pequeño altar con las runas rituales." The printed name of Choza is "En la cabaña de Mákke".
 
Choza is inside of Aldea.

Instead of going nowhere in Choza, say "El único camino posible es salir afuera."

The arcon (m) is a closed openable container in Choza.  The arcon is scenery. Understand "baul" as the arcon. The printed name is "arcón". The description of the arcon is "Un baúl grande, parecido a los arcones de ajuar de las jóvenes. La pintura azul y roja y verde está descolorida y desconchada pero aún se ve el motivo de flores y hojas que tanto gustaba a Mákke. No tiene llave: ¿quién iba a robar a la bruja?".

Some ropas de las estaciones (f) are in the arcon. The description is "El arcón contiene toda la ropa de Mákke para las diferentes estaciones del año." Understand "ropa" as the ropas. Instead of taking or searching the ropas, say "No te apetece hacer eso. De repente, todo lo que Mákke ha dejado atrás te inspira el mayor de los respetos."
 
The zona (f) is a supporter in Choza. It is scenery. The description of the zona is "Es la zona de la choza donde Mákke preparaba la comida diaria y sus mezclas para pociones y rituales, apenas una piedra plana, pero Mákke no necesitaba gran cosa más." Understand "zona de trabajo" and "piedra plana" and "piedra" as the zona.

The cofrecillo (m) is a closed openable container in Choza. "Su mayor tesoro, el cofrecillo de marfil tallado, permanece olvidado en un rincón." The printed name of the cofrecillo is "cofrecillo". Understand "cofre", "caja", "cajita" as the the cofrecillo. The description of the cofrecillo is "La más preciada posesión de Mákke: un precioso cofrecito del más blanco marfil, delicadamente tallado con bestias fantásticas persiguiéndose unas a otras."

The tallas (f) is a part of the cofrecillo. Understand "bestias/marfil/figuras" as the tallas. The description is "El marfil está tallado con formas de osos, águilas, serpientes y otras bestias que nunca has visto en los bosques ni en las costas. Se persiguen unas a otras en un baile interminable que nunca supiste si era alegre o sangriento. Nunca has visto nada más hermoso o delicado, y casi te da miedo pensar que un objeto tan precioso es ahora tuyo."

Instead of touching the tallas, say "Su tacto es extremadamente suave. Así de fino es el trabajo que tiene el marfil." Instead of touching the cofrecillo, try touching the tallas.
 
The cuchillo (m) is a magical object in the cofrecillo. Understand "daga/hoja" as the the cuchillo. Understand "cuchillo de makke" as the cuchillo. The printed name is "cuchillo de Mákke". The description is "El cuchillo de Mákke. Pequeño, afilado como la mente de las brujas, con una hoja de piedra negra y fría como la muerte. Siempre te ha maravillado la cualidad translúcida de la hoja, los reflejos de oro pálido que se ven en su interior." The indefinite article is "el".

Some reflejos dorados are part of the cuchillo. Understand "reflejos de oro palido" as the reflejos.

Instead of searching the cuchillo, try examining the reflejos.

Instead of examining the reflejos:
	if the location is Choza:
		say "Con luz directa se distinguen mejor; en la penumbra de la cabaña apenas distingues leves destellos fugaces.";
	otherwise if the location is Playa:
		if Muertos is happening:
			say "Los reflejos dorados de la hoja apenas se vislumbran en su interior, un mortecino espectro amarillento.";
		otherwise:
			say "Los reflejos de la hoja reflejan el vaivén de las olas con destellos verdosos.";
	otherwise if the location is Aldea or the location is Sendero:
		say "Los reflejos dorados de la hoja apenas se vislumbran en su interior, un espectro de colores amarillentos apagados.";
	otherwise:
		if Ritual is happening:
			say "Los reflejos dorados parecen responder al batir furioso de las olas y el violento sonido del trueno, ardiendo con un fuego azufrado unas veces, ambarino otras.";
		otherwise:
			say "Los reflejos dorados de la hoja apenas se vislumbran en su interior, un mortecino espectro amarillento.".

After taking the cuchillo for the first time:
	say "Empuñas el cuchillo de Mákke. Observas el brillo de la hoja negra y recuerdas las enseñanzas de tu maestra: 'Esta hoja separa tanto como une, conecta tanto como apuñala.'";
	stop the action.
 
 The frasco (m) is in the cofrecillo. The printed name of the frasco is "frasco de aceite". Understand "aceite/aceites" as the frasco. Understand "frasco de aceite" as the frasco. The description is "Un frasco de barro esmaltado y bien cerrado con un tapón de cera guarda los aceites aromatizados que Mákke preparó la estación anterior con tu ayuda. Huele a primavera y a muerte: con ellos las brujas limpian a los muertos antes de devolverlos a la Madre." Instead of opening the frasco, say "Abres un momento el frasco y el aroma a las hierbas muertas de la primavera te embriaga. Lo vuelves a cerrar." Instead of closing the frasco, say "Ya está cerrado."

Instead of smelling the frasco, try opening the frasco.

The esponja marina amarilla (f) is in the cofrecillo. The description is "Es la esponja marina que Mákke usaba para lavar a los muertos. Es amorfa, redondeada, amarilla y porosa. Siempre te ha maravillado la sabiduría de la vieja Madre, que provee de animales extraordinarios para las necesidades de los hombres."

Instead of putting the frasco on the esponja, say "Abres el frasco y echas algo de aceite aromatizado sobre la esponja. El olor te embriaga. Vuelves a cerrar el frasco."

The altar (m) is a scenery supporter in Choza. The description is "Un pequeño altar de roca negra donde Mákke realizaba rituales y sacrificios."

Some runas decorativas (f) are part of the altar. The description is "Son runas decorativas aquí y allá en diversos lugares de la cabaña. Con ellas Mákke te enseñaba sobre los dioses que gobiernan la tierra, los océanos y todos los seres vivos y muertos, incluso el cielo que hay sobre nuestras cabezas. Ahí distingues la runa de Mana, la temible gobernante de Tuonela, que tantas pesadillas te ha provocado. La runa de Mielikki, diosa de los lejanos bosques pantanosos. Kuu, aquel que ilumina nuestras noches[if the elements are present or BuscaPoder is not happening].[otherwise].

Cada runa cuenta una historia, y sí, a su manera todas las runas tienen poder, el poder de cambiar el espíritu de quienes las escuchan, pero no son las runas que necesitas. Necesitas las runas de los dioses supremos: la runa de Ukko en el odre de Mákke, y la runa de Akka tatuada sobre la piel de tu maestra." Understand "runa/de/Kuu/Mielikki/Tuonela/Akka/Ukko/Mana" as the runas decorativas.

Some cacharros (m) are scenery in the Choza. Understand "enseres" as the cacharros. The description is "Los pocos cacharros de barro y madera que Mákke y tú usábais para vuestras necesidades cotidianas están pulcramente apilados en un rincón. Ahora no quieres pensar en cómo tu maestra jamás volverá a usarlos."

Some hierbas (f) are scenery in the Choza. Understand "hierbas secas" or "salvia/hinojo/perejil/manojo/manojos"as the hierbas. The description is "Manojos ya grisáceos de salvia, hinojo y perejil silvestre cuelgan del techo. Todo el mundo cree que Mákke las usaba para sus hechizos, pero tú sabes bien que son para cocinar." Instead of taking the hierbas, say "Tienes cosas más urgentes que hacer que pensar en la comida." Instead of smelling the hierbas, say "Su aroma te recuerda al pescado estofado, o a la carne macerada de tiempos más felices cuando la aldea era próspera y había comida en abundancia."

The jergon (m) is scenery in Choza. The description is "Tu jergón está hecho de tela de algodón rellena de lana." The printed name is "jergón". Instead of entering the jergon, say "No es el momento de dormir."

The cama (f) is scenery in Choza. The description is "La cama de Mákke está vacía, fría. La abandonó en mitad de la noche." Understand "cama de Mákke" or "cama de makke" or "mákke/makke" as the cama. Instead of entering the cama, say "Es la cama de la bruja. Mientras no demuestres lo contrario tu sitio está en el suelo, en tu jergón."

After examining abajo in Choza, say "Bueno, salvo el suelo de tierra apisionada. Es complicado pero tu maestra te obliga a tenerlo limpio todos los días."

Instead of examining up in Choza, say "No observas nada inusual en el techo."

The cabana_interior (f) is scenery in Choza. Understand "cabaña/cabana" as the cabana_interior. Understand "cabaña de makke" or "cabaña de Mákke" as the cabana_interior. The description is "Las cuatro paredes de la cabaña de Mákke han sido tu hogar desde que puedes recordar. Todo, desde las paredes de troncos hasta los pocos enseres que contiene, te son tan familiares como la cara arrugada de tu maestra.". The printed name is "cabaña". The indefinite article is "la". Instead of getting off the cabana_interior, try exiting.


After going to Aldea for the first time: 
	say "Sales al exterior, al aire gélido de la mañana. Notas el frío de la nieve a través de tus botas.";
	continue the action.

Section 2 - Aldea

Aldea is a room. "[if Aldea is deserted]En la hora fría antes del largo amanecer, la aldea todavía dormita. El sol no ha salido aún, pero un leve resplandor se refleja bajo las nubes grises arrojando sobre las cabañas una luz mortecina bajo la cual la nieve acumulada durante la noche hace lucir el suelo y los tejados con un blanco sobrenatural.[otherwise]La aldea ha despertado ya y poco a poco se llena de vida. Un día largo y gris espera por delante. La aldea se compone de quizá treinta casas en total, desde endebles cabañas de tablas hasta casas más sólidas, recuerdo de épocas más prósperas. De vez en cuando se ve un huertecillo en vez de una casa, o un corral con cabras que miran altivas a su alrededor. Las mujeres preparan pescado para ahumar o salar, y los hombres arreglan los aperos de pesca o reparan agujeros en los tejados de ramas. Notas algunas miradas furtivas que te siguen el paso junto con algún susurro que otro.[end if]

[if Aldea is deserted]Un sendero casi tapado por la nieve[otherwise]El sendero[end if] viene desde la playa en el oeste y continúa hacia el norte, trepando la montaña.

La cabaña de Mákke está aquí, algo apartada del resto aunque integrada en la aldea." The printed name is "En la aldea".

The cabaña (f) is scenery in Aldea. The description is "Siempre pensaste que Mákke hacía mal en no diferenciar más su cabaña de las demás. La madera tiene algunos restos de pintura que quizá hace años fueron runas, y del alero cuelgan algunos tristes huesecillos de conejo, pero aparte de esto nada hace pensar que allí vivía la bruja." Understand "cabaña de makke" as the cabaña. Instead of entering Cabaña, try going inside.

Some huesecillos (m) are part of the cabaña. Understand "pintura/runas/alero/conejo" as the huesecillos. The description is "Definitivamente la cabaña de la bruja necesita una nueva decoración."

Aldea is east of Playa.

The beach_far is scenery in Aldea. The description is "Al oeste está la playa que se abre a la bahía. Desde allí sopla el viento helado y cargado de sal que trae al pueblo los sonidos de las olas." Understand "bahía/playa" as the beach_far. Instead of entering the beach_far, try going west.

The nieve (f) is a backdrop. It is in Aldea, Sendero and Acantilado. The description is "[if the location is Aldea]Ves las huellas de Mákke en la nieve tras la cabaña: sus pies diminutos se dirigen vacilantes hacia el norte.[otherwise if the location is Sendero]Ves las huellas de Mákke: sus pies primero, los surcos de sus rodillas y manos después. Se ha arrastrado por el sendero, ascendiendo a duras penas hasta el acantilado que da a la bahía, junto a la vieja piedra de las brujas. Ya no queda mucha distancia.[otherwise if the location is Acantilado]Las huellas de Mákke llevan hasta el borde del acantilado. Allí se detuvo, pero justo en el borde hay un revoltijo en la nieve y se pierde su rastro.[otherwise]La nieve caída durante la noche se posa como un manto blanco aquí y allá. En algunas zonas ya ha empezado a fundirse." Understand "huellas" and "revoltijo" and "manto" and "manto de nieve" as the nieve.

After examining the nieve for the first time:
	now the nieve is handled.

After going to Aldea for the fifth time during Encontrar:
	if the nieve has not been handled:
		say "Te percatas de un rastro en la nieve que te había pasado desapercibido, y que por suerte, no has ocultado con tus propias huellas.";
	otherwise:
		say "Aún puedes observar en la nieve las huellas de Mákke. Se alejan vacilantes hacia el norte, hacia lo alto del acantilado.";
	continue the action.

Some nubes (f) are a backdrop. It is in the Aldea, Sendero, Acantilado and Playa. Instead of examining the nubes, try examining up.
		
Instead of examining abajo when the player can see the nieve, try examining the nieve.

Instead of examining arriba when the Aldea is populated:
	if Ritual is not happening:
		try examining the albatros;
	otherwise:
		continue the action.

Instead of examining arriba when the Aldea is deserted, say "Las nubes grises reflejan la luz mortecina que proviene del sol oculto en el este."

The sendero_obj (m) is a backdrop. Understand "sendero/camino" as sendero_obj. It is in Aldea, Sendero and Acantilado. The printed name is "sendero".

Instead of examining the sendero_obj:
	if the location is Acantilado:
		continue the action;
	otherwise:
		try examining the nieve.
		
Instead of entering the sendero_obj:
	if the location is Acantilado:
		say "El sendero parte hacia el sur, descendiendo de la montaña.";
	otherwise if location is Sendero:
		say "El sendero asciende de sur a norte.";
	otherwise if location is Aldea:
		say "El sendero transcurre desde la playa en el oeste, hacia la montaña en el norte."

Instead of going nowhere in Aldea, say "Puedes ir al norte hacia el acantilado, al oeste hacia la playa, o entrar en la cabaña de Mákke."

[ Escenario ]

Some cabañas (f) are scenery in Aldea. Understand "aldea/casas/casa" as the cabañas. The description is "Las cabañas de la aldea están hechas con grandes troncos y están selladas con barro y corteza de abedul. Otras más modestas usan tablas y ramas y tienen un acabado más pobre."

Instead of entering the cabañas, say "No necesitas ir a la aldea."

The tejado (m) is part of the cabañas. The description is "Los tejados están construídos con ramas y hojas trenzadas." Understand "hojas/ramas/tejados" as the tejado.

Some tablas (f) are part of the cabañas. The description is "Las cabañas están construídas con madera de los bosques cercanos." Understand "troncos" as the tablas.

The corteza (f) is part of the cabañas. The description is "Barro, y corteza de abedul se usan para sellar las superficies de las cabañas." Understand "barro/corteza/abedul" and "corteza de abedul" as the corteza.

Some aldeanos (m) are persons. The description is "Hombres duros curtidos por el duro trabajo del mar.[one of] Algunos de ellos me miran con una mezcla de curiosidad y miedo, pero pronto vuelven a sus quehaceres.[or][stopping]". Understand "hombres/hombre" as aldeanos. The printed name is "hombres".

Some aldeanas (f) are persons. The description is "[one of]Desde el primer día que empezaste a ser la discípula de Mákke has notado las miradas y los cuchicheos en los corrillos de vecinas y las conversaciones silenciadas a tu paso. Hoy día las mujeres lo disimulan mejor que los hombres, y hoy si hablan de ti o si miran furtivamente no lo parece al estar concentradas en su trabajo.[or]Las mujeres se concentran en su trabajo, innumerables tareas que mantienen viva la aldea.[stopping]". Understand "mujeres/mujer" as aldeanas. The printed name is "mujeres".

Some niños (m) are persons. The description is "Los niños continúan sus juegos como de costumbre, ajenos a los problemas que sufre la aldea.[first time] No echas de menos jugar con ellos, una vez que entraste bajo la tutela de Mákke, esa época acabó para tí.[only]". Understand "niñas/niño/niña" as the niños.

When Encontrar ends:
	move aldeanos to Aldea;
	move aldeanas to Aldea;
	move niños to Aldea.

Some huertos (m) are scenery in the Aldea. Understand "huerto/huertecillo/cebollas/berzas/coles/nabos/bayas" as the huertos. The description is "Pequeñas porciones de tierra que proporcionan algo de variedad a la dieta de pescado de la aldea: berzas, coles, cebollas silvestres y alguna que otra hirsuta mata de bayas." Instead of taking the huertos, say "Forma parte de los huertos."

The corral (m) is scenery in the Aldea. The description is "Unas cuantas tablas y ramas para evitar que los animales se dispersen. Algo que no siempre se logra. Las cabras gustan de escapar y trepar al acantilado."

Some cabras (f) are animals in Aldea. The description is "Unos animales mezquinos y desconfiados. Te pueden arrancar la mano de un mordisco a menos que te descuides." Understand "cabra" as the cabras.

Before listing nondescript items of the Aldea: 
	if aldeanos is marked for listing: 
		now aldeanos is not marked for listing;
	if aldeanas is marked for listing: 
		now aldeanas is not marked for listing;
	if niños is marked for listing:
		now niños is not marked for listing;
	if cabras is marked for listing: 
		now cabras is not marked for listing.
		
	
Section 3 - Sendero
 
Sendero is a room. The description is "El estrecho sendero que lleva desde la aldea al acantilado es apenas un trazo en la nieve. Las cabras lo usan cuando van a ramonear las hierbas duras que crecen en la planicie barrida por el viento, y las brujas lo usan cuando van a la piedra negra en la que realizan los rituales de invierno y primavera, de vida y de muerte. Hacia el norte, asciende serpenteante por la ladera de la montaña hasta llegar a la cima del acantilado. Hacia el sur retorna a la aldea."
 
Sendero is north of Aldea. Instead of going up in Sendero, try going north.
Instead of going down in Sendero, try going south.

Section 4 - Acantilado
 
Acantilado is a room. The description is "Una pequeña explanada que cae vertiginosamente hasta el mar, hacia el oeste. Si te asomas verás las rocas de la pared casi vertical, donde anidan los albatros que han blanqueado las peñas con sus excrementos. Hay poco que ver desde aquí: la pequeña bahía de la aldea abajo, la extensión hostil del mar al oeste y al norte, el sendero que retorna a la aldea hacia el sur, la nieve que lo cubre todo. Y la piedra, la piedra de las brujas."

[ Descripción alternativa durante la tormenta:

“El acantilado es exactamente el lugar en el que no quieres estar durante una tormenta. Aquí el viento abofetea como un dios iracundo, aquí la negrura del cielo parece una gran boca que desea devorarte. Los trazos cegadores de los rayos te buscan, y el crujido del trueno sobre tu cabeza te hace dudar hasta de la solidez de la mismísima roca.”]
 
Acantilado is north of Sendero. Instead of going down in Acantilado, try going south. 

Instead of going west in Acantilado, say "No quieres precipitarte al vacío y [if the rocas are handled]seguir la misma suerte que tu maestra.[otherwise]sufrir una terrible caída."
Instead of going north in Acantilado, say "No piensas precipitarte al vacío y [if the rocas are handled]seguir la misma suerte que tu maestra.[otherwise]sufrir una terrible caída."
 
Some rocas (f) are a magical object in Acantilado. The rocas are scenery. The rocas are outofreach. The description is "Te asomas con cuidado, consciente de las rachas traidoras de viento que podrían despeñarte. Ves los nidos de albatros, las piedras apenas cubiertas de hierbas resecas y musgo." Understand "nidos/nido" as the rocas.

Understand "borde" or "borde del acantilado" as the rocas.

Instead of examining down in Acantilado for the second time, try examining the rocas.

Instead of peering over the montaña in Acantilado, try examining the rocas.

Instead of peering over the rocas, try examining the rocas.

Instead of searching the rocas, try examining the rocas.

The piedra negra (f) is an enterable supporter in Acantilado. It is scenery. Understand "altar/peñasco" as the piedra negra. The description is "La piedra de las brujas es un peñasco bajo y ancho, del tamaño de un hombre. Oscura y lisa, tallada en otro tiempo por manos duras, y ennegrecida por los rituales, es un lugar de poder para las brujas. Pocos se acercan a ella, menos aún la tocan sin permiso."

Instead of touching the piedra negra, say "Alargas la mano y... está fría."

Instead of rubbing the piedra negra, say "Alargas la mano... [first time]acaricias la piedra fría con expectación. [only]Está áspera."

Instead of tasting the piedra negra, say "Te inclinas expectante sobre la piedra negra de las brujas y... [one of]sabe como en tus sueños.[or]sabe igual que antes[or]¿A qué sabe una piedra con sangre reseca de eras pasadas?[or]La lengua se te queda como una berza reseca.[stopping]"

The sangre (f) is part of the piedra negra. Instead of doing something to the sangre, say "Aquí hay sangre por todas partes: sangre reseca de eras pasadas en la piedra de las brujas[if the herida is part of the player], sangre de tu herida goteando sobre la piedra[end if][if the cuchillo is charged], sangre negra de bruja en la hoja del cuchillo[end if][if the player can see Mákke], sangre coagulada en las heridas de Mákke[end if], la sangre viva que corre por tus venas[if level is greater than ráfaga], incluso puede que haya sangre de albatros[otherwise], la sangre que mueve y da la vida a los albatros y a todas las criaturas del mundo[end if]. [one of]Hay sangre por todas partes.[or]En serio, no es necesario hacer nada con la sangre.[stopping]".

The manto (m) is a thing in Acantilado. "El manto de piel de foca de Mákke está tirado a un lado de la piedra negra. No sabes si dejado allí o arrastrado por el viento." The manto is wearable. Understand "manto de piel" and "manto de piel de foca" and "manto de makke" as the manto. The description is "El manto de piel de foca de Mákke. Suave y gris." Instead of touching the manto, say "Muy suave y cálido al tacto." The printed name is "manto de piel de foca".

After wearing the manto, say "Te pones el manto alrededor de los hombros y la espalda. Al instante notas el beneficio de su abrigo."

Instead of smelling the manto, say "El manto de Mákke huele a grasa de animal mojada."

The bahia_far (f) is scenery in Acantilado. Understand "bahia/bahía/playa" as the bahia_far. The description is "Desde esta altura la bahía parece una luna creciente de bordes oscuros. Hacia el oeste se abre al mar." The bahia_far is outofreach.

The mar is scenery in Acantilado. Understand "olas/agua/aguas" as the mar. The description is "El mar azota el acantilado, lento pero inexorable." The mar is outofreach.

Some albatros are a backdrop. They are in Aldea, Sendero, Playa and Acantilado. The description is "[if the location is Aldea]Los albatros surcan el cielo de la aldea en busca de comida para sus crías.[otherwise if the location is Sendero]Los albatros se dejan llevar por las corrientes de aire, suspendidos en el cielo.[otherwise if the location is Playa]De vez en cuando se ve el rápido trazo blanco de un albatros zambulléndose en el mar para pescar.[otherwise if the location is Acantilado]Desde aquí se ve a los albatros desaparecer contra el borde del acantilado, un espectáculo que siempre te ha dado vértigo. Allí tienen sus nidos en los que aterrizan con engañosa suavidad.[otherwise]Los albatros explotan debido al BUG que hacen que los veas donde no deberían de estar. Se llena todo de sangre y plumas." The albatros are outofreach.

Instead of examining the albatros for the first time:
	if Ritual is not happening and Muertos is not happening and Encontrar is not happening:
		say "Los albatros cruzan el cielo en elegantes curvas, las alas como hojas de espadas negras como el carbón cortando el aire frío sin aparente esfuerzo. Sus penetrantes silbidos y tableteos, y sus hermosos plumajes blancos, han sido la música y el color de la aldea desde que tienes memoria.";
	otherwise:
		continue the action.

Instead of taking the albatros:
	if location is Playa and Encontrar is not happening:
		say "Los albatros se mantienen fuera de tu alcance. Fácilmente, además.";
	otherwise:
		say "Los albatros están fuera de tu alcance."

Instead of throwing something at the albatros:
	if Encontrar is happening:
		say "No ves a ninguno por aquí.";
	otherwise:
		if the player is wearing the noun:
			say "Primero tienes que quitarte [the noun].";
			stop the action;
		say "Lanzas [the noun] a un albatros, pero este lo esquiva fácilmente[one of] y sale volando[or], te gruñe y sale volando[or] de un salto y se aleja unos metros[or] de un salto y sigue a lo suyo ignorándote[purely at random] fuera de alcance[one of][or][or]. Los albatros son especialmente buenos en no dejarse cazar[or]. En serio, no vas a lograr nada así[or]. De verdad, es casi imposible cazar un albatros de esa manera[or]. En serio, para esta historia no necesitas cazar ningún albatros[stopping].";
		move the noun to the location.

Instead of examining the albatros during Encontrar, say "Los albatros son algunas de las criaturas que más temprano surcan los cielos, pero aún así no ves a ninguno por aquí."

Instead of examining the albatros during Ritual , say "Los albatros han desaparecido del cielo, probablemente buscando refugio de la tormenta al abrigo de las rocas del acantilado."

Instead of examining the albatros during Muertos, say "Los albatros surcan el cielo, sobrevuelan la bahía y se lanzan sobre la playa. Tanta carne muerta y fresca es para ellos un inesperado festín."

The horizonte (m) is a backdrop. It is in Acantilado and Playa. It is outofreach. The description is "Allí el mar de nubes grises se funde con el gris-azul del mar en un todo desconocido que presagia lo peor de tu pesadilla."

Section 5 - Mákke entre las rocas

The cuerpo_makke is part of the rocas. It is outofreach. The description is "[if cuerpo_makke is part of the rocas]Tiene los ojos abiertos y llenos de nieve, y un odre vacío en la mano. Su boca es miedo.[otherwise]Mákke está rígida y fría." Understand "cuerpo/makke/maestra" or "cuerpo de makke" as cuerpo_makke. The printed name is "cuerpo de Mákke". The indefinite article is "el".

Instead of searching Mákke, try examining Mákke.

After examining the rocas when cuerpo_makke is part of the rocas:
	now the rocas are handled;
	say "Mákke ha caído por pendiente abajo pero no ha llegado al mar. Ves su cuerpo entre las peñas blancas, entre los nidos de albatros. Tiene los ojos abiertos y llenos de nieve, y un odre vacío en la mano. Su boca es miedo."
	
Instead of doing something to the cuerpo_makke when the rocas are not handled, say "No la ves aquí arriba, pero temes lo peor."

Instead of taking or cleaning or touching or pushing or rubbing or pulling or tasting or undress or cutting the cuerpo_makke when cuerpo_makke is on the piedra, say "No, aún necesitas los elementos para preparar a tu maestra para entrar en la otra vida."

Instead of kissing cuerpo_makke when cuerpo_makke is on the piedra, say "[one of]Te inclinas sobre tu maestra y la besas en la frente. Mentalmente le agradeces sus enseñanzas y le pides perdón por tan atribulada entrada en la otra vida.[or]Ya te has despedido de tu maestra.[stopping]"

Encontrar ends when the rocas are handled.

When Encontrar ends:
	say "Debes hablar con Árvet sobre la pesadilla y la muerte de Mákke. Y sabes lo que está por venir, lo que debes hacer luego. Y lo temes como jamás has temido nada.";
	now Aldea is populated;
	now Sendero is populated;
	now Playa is populated;
	now Acantilado is populated;
	pause the game;
	say "[line break]".
 
Chapter 2 - Playa y el jefe
 
Section 1 - Playa
 
Playa is a room. "Una estrecha lengua de guijarros oscuros es la salida del pueblo al mar. A ambos lados los muelles para las barcas delimitan una pequeña bahía de aguas frías y desapacibles. [if the playa is deserted]El cielo oscurecido y nubloso se extiende sobre el mar hasta donde alcanza la vista. Hacia el este la aldea aún duerme.[otherwise]El cielo cubierto de nubes grises es surcado por el poderoso vuelo de los albatros. Hacia el este puedes ver la aldea.[end if]". The printed name is "En la playa".

The guijarros oscuros (m) is scenery in Playa. "Piedras pulidas por el mar, de distintas tonalidades oscuras." Instead of taking the guijarros, say "No es necesario llevarte eso." Understand "piedras/pulidas" as the guijarros.

Instead of examining abajo in Playa:
	if Muertos is happening:
		say "Los restos de la flota de naves negras cubre la playa hasta donde alcanza la vista.";
	otherwise:
		try examining the guijarros.

The muelles (m) are scenery in Playa. "Muelles de madera. Las barcas son modestas y utilitarias." Understand "barcas/barca/bote/botes" as the muelles.

The bahía (f) is scenery in Playa. "La bahía está delimitada por la tierra hacia el sur, por la aldea hacia el este y por la montaña y el acantilado hacia el norte. Hacia el oeste se abre al mar." Understand "bahia" as bahía.

The montaña (f) is a backdrop. It is in Playa, Aldea, Sendero and Acantilado. Understand "acantilado" as the montaña. The description is "[if Encontrar is happening]La mole oscura del acantilado abriga al pueblo de los vientos más fríos. El mar susurra y se deshace en espuma blanca contra las rocas.[otherwise if the location is Playa]Desde la playa se ve la cuña de tierra y rocas a contraluz, una silueta oscura encajada entre las nubes grises y el mar del color del hierro. Los ojos agudos pueden ver en la cima la forma cuadrada de la piedra de las brujas.[otherwise]La mole oscura del acantilado abriga al pueblo de los vientos más fríos. El mar susurra y se deshace en espuma blanca contra las rocas, cruzadas por el vuelo poderoso de los albatros." The montaña is outofreach.

The piedra_lejos is scenery in Playa. Understand "piedra de las brujas" or "piedra" as the piedra_lejos. The piedra_lejos is outofreach. The description is "La piedra de las brujas está demasiado lejos para discernir más detalle."

Instead of examining the montaña in Acantilado, try examining the rocas. [Lo más probable es que se examine acantilado.]

Instead of going north in Playa, say "El escarpado acantilado corta la playa en esa dirección."

Instead of going south in Playa, say "Los peñascos de la bahía hacen de esa dirección un paso intransitable."

Instead of going west in Playa, say "El agua de la bahía se extiende en esa dirección."

The agua is scenery in Playa. Understand "mar/playa/aguas" as the agua. The description is "Las inhóspitas y heladas aguas acometen con fiereza la playa."

Instead of swimming in Playa, say "No estamos en la estación apropiada. El agua de la bahía está mortalmente helada y la fuerza de las olas previene el baño."
	
After going to Playa for the third time during Encontrar:
	say "[line break][bold type]En la playa[roman type][line break]No, no parece haber rastro de tu maestra en la bahía. Debes seguir buscando en otra parte.".
 
Section 2 - Árvet, el jefe

When Conversación begins:
	now Arvet is in Playa;
	now the description of the nieve is "[if the location is Aldea]La nieve caida durante la noche se posa como un manto blanco aquí y allá. En algunas zonas ya ha empezado a derretirse y muestra las huellas de la vida en la aldea.[otherwise if the location is Sendero]En la nieve puedes ver las huellas de varias personas que suben y bajan al acantilado, incluyendo las tuyas.[otherwise if the location is Acantilado]El trabajo realizado aquí ha borrado las huellas de la tragedia.[otherwise]La nieve caída durante la noche se posa como un manto blanco aquí y allá. En algunas zonas ya ha empezado a derretirse.";
	now the player is in Playa.
	
 
Arvet is a man. "[if playa is unvisited]Árvet es el jefe. Lo encuentras en la bahía remendando una red y mirando al mar agitado y gris.[otherwise]Árvet, el jefe, está aquí." Understand "jefe" as Arvet. The printed name of Arvet is "Árvet". The description is "Ya no es joven: su pelo está tocado por la nieve. Pero su barba es negra, sus brazos son fuertes, y todavía es capaz de arrastrar sus redes llenas hasta la playa sin ayuda. Mákke le aconsejaba y él aprendió mucho de ella."
  
The litany of Arvet is the Table of Arvet Conversation.

Before going: terminate the conversation.
 
Table of Arvet Conversation
prompt					response		enabled
"'He visto la muerte.'"					hevisto		1
"'Mákke está muerta.'"					hola		1
"'Es cierto, soy demasiado joven.'"					escierto		0
"'Mákke ya no es la bruja.'"					yosoy		0
"'¿Por qué me preguntas lo que ya sabes?'"					yasabes		0
"'Gritaba la bruja, gritaba yo...'"					gritos		0
"'¿Qué te despertó?'"					desperto		0
"Árvet es sabio..."					arvetsabio		0
"Esperar en silencio."					sueño		0
"'Los tres hemos tenido el mismo sueño.'"					lostres		0
"'¿Entonces esperaremos a la muerte?'"					muerte		0
"'Yo seré la bruja.'"					yosere		0
"'Conozco...'"					conozco		0
"'Pagaré.'"					pagare		0
"No sabes qué decir."					silencio2		0
"No hay más que decir."					silencio3		0
"Terminar la conversación."					silence		1

 
After quipping when the current quip is silence:
	enable the silence quip;
	terminate the conversation.
After quipping when the current quip is hola:
	disable the hevisto quip;
	enable the yosoy quip;
	enable the escierto quip.
After quipping when the current quip is yosoy:
	disable the escierto quip;
	enable the yasabes quip;
	enable the gritos quip.
After quipping when the current quip is gritos:
	disable the yasabes quip;
	enable the desperto quip.
After quipping when the current quip is desperto:
	enable the arvetsabio quip;
	enable the sueño quip.
After quipping when the current quip is arvetsabio:
	disable the sueño quip;
	enable the lostres quip.
After quipping when the current quip is sueño:
	disable the arvetsabio quip;
	enable the muerte quip;
	enable the yosere quip.
After quipping when the current quip is lostres:
	enable the muerte quip;
	enable the yosere quip.
After quipping when the current quip is yosere:
	disable the muerte quip;
	enable the conozco quip.
After quipping when the current quip is conozco, enable the pagare quip.
After quipping when the current quip is pagare:
	enable the silencio2 quip;
	disable the silence quip.
 
After quipping when the current quip is silencio2:
	now the rocas are charged;
	disable the silence quip;
	enable the silencio3 quip;
	terminate the conversation.

After quipping when the current quip is silencio3:
	enable the silencio3 quip;
	terminate the conversation. 

Table of Quip Texts (continued)
quip	quiptext 
hola	"—La vieja Mákke está muerta. Cayó por el acantilado— le dices —. Debes enviar dos hombres que hayan visto la muerte cara a cara para que recuperen su cuerpo. Y luego debes dejarme a solas con ella.[paragraph break]
Árvet te mira:[paragraph break]
—¿Y por qué debo dejarte a solas con nuestra bruja, joven Lenne?"
yosoy	"—Mákke ya no es la bruja: ahora es cuervo y viento, es hielo y cenizas. La bruja es Lenne ahora, Lenne que aprendió de Mákke. Será Lenne quien cuide de Mákke en la muerte— dices, pero por dentro tiemblas porque sabes que no eres la bruja, aún no, y Árvet es un hombre y es el jefe y sólo la bruja puede decirle a un hombre qué son las cosas.
 
Árvet mira de nuevo al mar, hinchado como un golpe:[paragraph break]
—En la noche oí gritos, joven Lenne-que-quiere-ser-bruja —dice en voz baja —. ¿Quién gritaba?"
gritos	"—Gritaba la bruja —dices —. Gritaba Mákke y gritaba yo. Yo gritaba porque Mákke gritaba, y Mákke gritaba porque soñaba. Y tú nos oíste porque estabas despierto, jefe Árvet, cuando dormía la aldea."
desperto	"—¿Qué te despertó? —preguntas. Sabes que Mákke ha enseñado bien a Árvet y no lo suficiente a ti. Mákke te decía que tenías la boca demasiado grande y las orejas demasiado pequeñas, decía que aprendías rápido pero no sabes esperar. Decía que aún te faltaba tiempo para ser bruja.
 
Pero no queda tiempo.
 
—Me despertó un sueño de barcos negros llenos de hombres altos, un sueño de hombres con hachas que venían por el mar frío —responde Árvet —. Dime, Lenne, ¿era el sueño de un viejo asustado o era el sueño de un hombre despierto?"
sueño	"No respondes porque Árvet ya sabe la respuesta. Y porque has tenido el mismo sueño y Mákke también. Los tres habéis soñado la muerte de la aldea a manos de los hombres con hachas que vienen desde el norte, bordeando el hielo cortante. Por eso Mákke ha ido al acantilado antes del amanecer. Y allí ha muerto.[paragraph break]
—No podemos defendernos de los hombres altos— dice Árvet —. El mar se ha llevado a demasiados jóvenes, las mujeres están débiles por falta de comida, los niños no tienen leche. La muerte llega en los barcos negros, joven Lenne, y no tenemos bruja que nos defienda."
lostres	"—Los tres hemos tenido el mismo sueño. Los tres hemos soñado la muerte de la aldea a manos de los hombres con hachas que vienen desde el norte, bordeando el hielo cortante. Por eso Mákke ha ido al acantilado antes del amanecer. Y allí ha encontrado la muerte.[paragraph break]
—No podemos defendernos de los hombres altos —dice Árvet —. El mar se ha llevado a demasiados jóvenes, las mujeres están débiles por falta de comida, los niños no tienen leche. La muerte llega en los barcos negros, joven Lenne, y no tenemos bruja que nos defienda."
muerte	"—¿Entonces esperaremos la muerte como cabras viejas? —dices, porque aún tienes la boca demasiado grande y las orejas demasiado pequeñas.[paragraph break]
—Si tuviéramos bruja, la bruja podría salvarnos. Si tuviéramos bruja, la bruja podría llamar a la tormenta. Si tuviéramos bruja quizá viviríamos para pescar en la estación del sol, y engordar con grasa de foca y criar más niños y volver a vivir —dice Árvet —. Pero no tenemos bruja, porque Mákke está muerta."
yosere	"—Yo seré la bruja —dices —. Yo llamaré a la tormenta.[paragraph break]
—Tú —Árvet se burla de ti —. Tú no sabes, Lenne. ¿Has aprendido las palabras? ¿Conoces los objetos?"
conozco	"—Mákke me enseñó: conozco las palabras y los objetos —le dices. Es cierto: el odre para recoger el viento. El cuchillo para el sacrificio de sangre. Las runas, que tienen el poder.[paragraph break]
—Pero no conoces a los dioses. No tienes el poder. No sabes el precio.[paragraph break]
Árvet no miente. Tienes trece años y no conoces a los dioses. No como los conocerás en el futuro. Pero a los trece años no hablas de lo que no sabes, porque crees que lo sabes todo."
pagare	"—Conoceré a los dioses y pagaré el precio, jefe Árvet —le dices —. Y si no lo consigo moriremos como cabras que se ofrecen al cuchillo, a manos de los barcos negros y con los dioses mirando.[paragraph break] 
Árvet te mira durante mucho rato. Sabes lo que ve: tus trenzas de muchacha, tu vestido de lana manchado de barro, el pliegue testarudo de tu boca. Ve a una niña de boca grande y orejas pequeñas. No ve a la bruja."
silencio2	"—Así sea —dice Árvet tras un momento de meditación —. Ve al acantilado. Enviaré dos hombres para que recuperen el cuerpo de Mákke. Haz lo que debas, joven Lenne. Si la muerte quiere venir a por nosotros, que venga también a por los hombres en los barcos negros. Y que los dioses determinen quién paga por esa sangre.

No hay más que decir: el jefe ha hablado. Debes hacer el ritual."
silence	"[if the altar is charged]No tienes nada más que tratar con el jefe. Haz tu trabajo, joven Lenne-que-quiere-ser-bruja.[otherwise]Frustrada, das la espalda a Árvet y te alejas unos pasos."
silencio3	"No tienes nada más que tratar con el jefe. Haz tu trabajo, joven Lenne-que-quiere-ser-bruja."
hevisto	"—He visto la muerte en mis sueños, jefe Árvet.

Árvet parpadea.

—Eso lo ven todos los hombres que sueñan, Lenne. Y las mujeres también. ¿Qué quieres decir?

Árvet tiene razón. Ahora eres la bruja y tus palabras tienen peso. Debes considerarlas antes de dejarlas salir.

Árvet espera, con más paciencia de la que esperabas, a que ordenes tus pensamientos.

—Es sobre mi maestra..."
escierto	"—Es cierto -dices, y la ira asoma a tu voz sin que puedas evitarlo —. Soy demasiado joven e inexperta. No nos queda más que esperar la muerte porque nuestro sabio jefe Árvet ha decidido que no puede permitir a la discípula un tiempo a solas con su maestra.

Los ojos oscuros de Árvet relampaguean con furia. Quizá te hayas excedido, sí.

—Perdóname, jefe Árvet -dices —. No debí hablarte así. Pero necesito lo que te he pedido. Y tengo mis razones.

-¿Qué razones, Lenne?"
yasabes	"—¿Por qué preguntas lo que ya sabes, jefe? ¿Quieres saber lo que yo sé? Está bien, te lo diré."
arvetsabio	"Miras un instante a Árvet. Sabes que el jefe es un hombre sabio y que sus ojos están abiertos, duerma o vele. Pero no esperabas que hubiera soñado lo mismo y con tanto detalle. Árvet nota tu sorpresa.

—No soy un viejo decrépito, Lenne —dice, con un resto de humor —. Y sé que este sueño es un aviso. Quizá esperaba que me dijeras que no era más que un desvarío provocado por el hambre."

 
Conversación ends when the rocas are charged.

When Conversación ends:
		say "Árvet manda llamar a Panu y a Mikko. Habla con ellos un momento y los manda a realizar el trabajo necesario. Los hombres emprenden el camino con rostro sombrío, van hacia la aldea y los ves desaparecer al girar hacia el acantilado.

Árvet mira de nuevo al mar, gris como el cielo, y no dice nada más.";
	now the Acantilado is unvisited.

Clue is a kind of object. A clue can be shown. A clue is usually not shown. PistaElementos is a clue.

After of going to the Aldea when Conversación has ended and pistaElementos is not shown:
	now pistaElementos is shown;
	say "Caminando hacia la aldea, repasas mentalmente los elementos necesarios para llamar a la tormenta: las runas de poder, la runa de Ukko y la runa de Akka, aceite aromatizado para ungir el cuerpo de tu maestra, el cuchillo de Mákke de piedra translúcida para realizar la entrega de la sangre. Y lo más importante, ser bruja, algo que no eres. Esperemos que los dioses y el espíritu de tu maestra sean deferentes para contigo y los tuyos.";
	continue the action.

Chapter 3 - El ascenso y el odre

Section 1 - Ascenso

Instead of going to Acantilado when Acantilado is unvisited and the rocas are charged:
	move the player to the Acantilado, without printing a room description;
	say "[line break][bold type]Acantilado[roman type]".
	

Panu is a man. The description is "Panu aún no ha terminado de crecer y algunos dudan de que alguna vez lo haga: es alto como un abedul, rubio y flexible, de dientes prominentes. Tiene la piel blanca, los cabellos pajizos, los ojos de un azul desvaído; lo más colorido de su persona son los granos escarlata que le motean la cara."
Mikko is a man. The description is "Mikko es bajo y ancho como un tocón de abeto, de pelo y barba espesos y negros y ojillos pequeños y vivos, brillantes como trozos de carbón."

When Ascenso begins: 
	say "Panu y Mikko están contigo en el acantilado. Los observas mientras suben con cuerdas el cuerpo de Mákke. Panu, el más joven, baja hasta los nidos de albatros para asegurarla. Mikko, el más viejo, tira y tira hasta que tu maestra vuelve a ti. Está fría y encogida, dura como una piedra, y la nieve gotea de sus ojos al fundirse, como lágrimas.

—¿Quieres que la llevemos a su cama, Lenne?— pregunta Mikko. Y estás a punto de decir que sí, pero niegas con la cabeza.

—Ponedla sobre la piedra de las brujas y dejadme a solas con ella.

Te miran, se miran entre sí. No te tratan como a la bruja, pero no hay nadie más allí y Árvet les ha dicho que te obedezcan. Y lo hacen: dejan el cuerpo de Mákke sobre la piedra de las brujas y se retiran unos pasos. Miras las manos vacías de tu maestra.[line break]";
	move Panu to Acantilado;
	move Mikko to Acantilado;
	now the description of the nieve is "[if the location is Aldea]La nieve caída durante la noche se posa como un manto blanco aquí y allá. En algunas zonas ya ha empezado a derretirse y muestra las huellas de la vida en la aldea.[otherwise if the location is Sendero]En la nieve puedes ver las huellas de varias personas que suben y bajan al acantilado, incluyendo las tuyas.[otherwise if the location is Acantilado]El trabajo realizado aquí ha borrado las huellas de la tragedia.[otherwise]La nieve caida durante la noche se posa como un manto blanco aquí y allá. En algunas zonas ya ha empezado a derretirse.";
	move cuerpo_makke to the piedra;
	now the cuerpo_makke is not outofreach;
	move the odre to Panu;
	move the player to Acantilado, without printing a room description;
	try talking to Panu.

Section 2 - Conversación con Panu

The litany of Panu is the Table of Panu Conversation.

Table of Panu Conversation
prompt							response	enabled
“'Panu, ¿qué se ha hecho del odre?'”							dondeodre	1
"'Debes devolverme ese odre.'"							devuelvelo	0
"'Haz lo que te digo.'"							hazlo	0

After quipping when the current quip is dondeodre, enable the devuelvelo quip.
After quipping when the current quip is devuelvelo, enable the hazlo quip.

After quipping when the current quip is hazlo:
	now the odre is in player;
	now the odre is handled;
	now the odre is charged;
	terminate the conversation.
	
Table of Quip Texts (continued)
quip		quiptext
dondeodre		"—Panu, ¿qué se ha hecho del odre que tenía Mákke en la mano?

—Es un buen odre, Lenne —dice Panu —. Es de buen cuero, muy bien curado y no tiene agujeros y la vieja Mákke ya no lo necesitará."
devuelvelo	"—Debes devolverme ese odre, Panu —le dices, firme. Porque tus ojos están abiertos por fin y sabes qué debes hacer y cómo hacerlo, como si la misma Mákke te lo estuviera susurrando al oído con sus labios muertos —. Debes devolvérmelo porque de ese odre saldrá la tormenta y el vendaval, la galerna y el temporal, la vida y la muerte. Ese odre en mis manos tendrá el aliento de Ukko y la fuerza de Akka.

—Pero si solo es un odre, Lenne."
hazlo		"—Haz lo que te digo —ordenas. Y quizá sí tienes lo necesario para ser la bruja, porque Panu saca el odre de su morral y te lo entrega.

—Volved a la aldea, y pase lo que pase, oigáis lo que oigáis, no os acerquéis a la piedra de las brujas —les dices con firmeza.

Y no lo harán. Los hombres se apresuran por el sendero sin mirar atrás.".


Ascenso ends when the odre is handled.

When Ascenso ends:
	remove Panu from play;
	remove Mikko from play;
	move naves negras to Acantilado;
	say "Ahora estás sola con tu maestra, los dioses, el viento y las naves negras que empiezan a asomar por el horizonte.";
	if the elements are present:
		do nothing;
	otherwise:
		say "[line break]Pero aún necesitas los objetos necesarios para preparar a Mákke y realizar el ritual.".

	 
Chapter 4 - El ritual

Before going south during the Preparación, say "Sabes que no hay vuelta atrás. Hay que seguir con el ritual.[line break]" instead.
 
Before going south during the Ritual, say "Sabes que no hay vuelta atrás. Hay que seguir con el ritual[line break]" instead.

Instead of taking Mákke during Ascenso, say "Mákke porta la runa de Akka, debe estar en el altar."

Instead of taking Mákke during Preparación, say "Mákke porta la runa de Akka, no debe moverse del altar."

Instead of taking Mákke during Ritual, say "Has terminado con Mákke. Debes centrarte en el ritual."

Section 0 - Mákke, la bruja

Mákke (f) is a magical object. Understand "cuerpo/makke/bruja/maestra" or "a makke"  or "cuerpo de Mákke" or "cuerpo de makke" as Mákke. The description is "Mákke está fría y rígida, en una pose grotesca con los brazos y las piernas contraídas en un espasmo de muerte. Mákke posee la runa de Akka en su piel, debajo de la ropa oscura, humedecida, con nieve acumulada en los pliegues."

The runa de Akka (f) is a magical object. The runa de Akka is part of Mákke. The description is "La runa de Akka en la piel de Mákke. Akka es la diosa de la fertilidad, la fuerza y la sexualidad femenina y de las cosechas; y esta su runa de poder, que toda bruja debe de llevar tatuada. Tú aún no la tienes tatuada, así que necesitas la de Mákke." The indefinite article is "la".

Does the player mean doing something to the runa de Akka: it is likely.
[Does the player mean stabbing with runa de Akka: it is likely.]
[Does the player mean cutting with the runa de Akka: it is likely.]
[Rule for clarifying the parser's choice of the runa de Akka: say "".]

Instead of dropping the runa, say "No, la necesitas en tu poder."

Instead of taking the runa when the runa is part of the brazo, say "La runa está sobre tu brazo. Ya la tienes pero aún no forma parte de ti."

Instead of putting the runa on the piedra, say "No, el viento se la llevaría volando."

Instead of eating the runa, say "Comerte la runa solo la destruiría."

The ropa (f) is part of Mákke. The ropa (f) is a thing. The description is "La ropa de Mákke es una sencilla túnica de lana oscurecida. Justo igual que la tuya. La indumentaria de una bruja." Understand "ropas/oscura" as the ropa. Instead of smelling the ropa, say "La ropa de Mákke huele a grasa y a lana vieja mojada, con un toque de lavanda."

The odre (m) is a magical object. It is part of Mákke. The description is "El odre de Mákke. Ella misma le grabó a fuego la runa de Ukko, la runa de poder. Es de buen cuero bien curado, y Mákke siempre lo usó para su reserva de aguardiente de corteza, pero sabes bien que con él se puede llamar a la tormenta. Lo has visto varias veces."

Instead of opening or closing the odre, say "No es necesario en estos momentos."

Instead of inserting anything into the odre, say "No, lo necesitas tal y como está."

Instead of putting anything on the odre, say "No, lo necesitas tal y como está."

Instead of dropping the odre, say "No, necesitas el odre en tu poder."

Instead of putting the odre on, say "No, necesitas el odre en tu poder."

The runa de Ukko (f) is part of the odre. The description is "La runa de poder que representa al dios Ukko, el temible hombre negro. Tejedor del viento, el tiempo y la tormenta."

Instead of cutting the runa de Ukko with the cuchillo, say "No, el odre es un objeto de poder y lo necesitas intacto." 

Instead of cutting the odre with the cuchillo, say "No, el odre es un objeto de poder y lo necesitas intacto."


Section 1 - Preparación

[ Estados de Mákke:
	
	- Ropa is part of Mákke /Ropa is handled
	- Mákke Handled / not handled (cuando está contorsionada con rigor mortis)
	- charged / uncharged (una vez está lavada y ungida) ]

When Preparación begins:
	remove cuerpo_makke from play;
	move Mákke to piedra;
	say "Ya tienes todos los elementos necesarios en tu poder. Es hora de preparar a Mákke."

Instead of kissing Mákke, say "[one of]Te inclinas sobre tu maestra y la besas en la frente. Mentalmente le agradeces sus enseñanzas y le pides perdón por tan atribulada entrada en la otra vida.[or]Ya te has despedido de tu maestra.[stopping]"

Instead of smelling Mákke when the ropa is part of Mákke, try smelling the ropa.
Instead of smelling Mákke when the ropa is not part of Mákke, say "Mákke huele a agrio, a mar y a muerte."
Instead of smelling Mákke when Mákke is charged, say "Huele a pinos, y a lavanda, y a invierno y al aire limpio del mar."

[ Quitar la ropa ]

Instead of undress Mákke, try cutting the ropa.

Instead of taking the ropa, try cutting the ropa.

Instead of undress the ropa, try cutting the ropa.

Instead of removing the ropa from Mákke, try cutting the ropa.

Instead of cutting the ropa, try cutting the ropa with the cuchillo.

[Instead of cutting the ropa with the cuchillo when Mákke is not handled, say "Mákke está demasiado rígida y fría como para quitarle las ropas."]

Instead of cutting the ropa with the cuchillo when the ropa is handled, say "No necesitas hacer nada más con la ropa de Mákke."

Instead of taking the ropa when the ropa is handled, say "No necesitas hacer nada más con la ropa de Mákke."

Instead of putting the ropa on when the ropa is handled, say "No necesitas hacer nada más con la ropa de Mákke."

Instead of cutting the ropa with the cuchillo:
	if Mákke is handled:
		say "Cortas las ropas con el cuchillo de hoja negra de Mákke. Te resulta extraño darte cuenta de que Mákke muerta parece más pequeña que Mákke viva. Descartas las ropas a un lado.";
	otherwise:
		say "Desnudar a Mákke mientras está contraída es complicado, pero nada que el filo negro del cuchillo no pueda conseguir. La ropa parece no querer desprenderse de la piel de su dueña, se resiste a abandonarla, pero cortas, tiras y desgarras hasta dejarla inservible. El resultado es grotesco: tu maestra Mákke como una pequeña figura contraída en un horrendo rictus de muerte y congelación.";
	if Mákke is handled:
		now the description of Mákke is "Mákke está desnuda sobre la piedra negra. Su piel arrugada y mojada está sucia de vivir, y esa suciedad se ha quedado impregnada a su carne muerta. Hay restos de sangre donde su cuerpo impactó contra las rocas. La runa de Akka está tatuada sobre su pecho.";
	otherwise:
		now the description of Mákke is "Mákke está desnuda y es una pequeña figura contorsionada sobre la piedra negra. Su piel está congelada y sucia. Hay restos de sangre donde su cuerpo impactó contra las rocas. La runa de Akká está tatuada sobre su pecho, pero está innaccesible bajo la maraña de miembros rígidos.";
	move ropa to Acantilado;
	now the ropa is handled;
	now the ropa is scenery.

[ Frotar Mákke para "calentarla" mal mal puzzle ]

Instead of warming Mákke, try rubbing Mákke.

Instead of rubbing Mákke when Mákke is not handled:
	if the ropa is part of Mákke:
		now Mákke is handled;
		now the description of Mákke is "Mákke reposa en toda su pequeña extensión sobre la piedra negra. Mákke posee la runa de Akka en su piel, debajo de la ropa oscura aún mojada.";
		say "Frotas los brazos y las piernas de Mákke hasta que puedes moverla. Le quitas la nieve de la cara y le cierras los ojos aún húmedos.";
	otherwise:
		try anointing Mákke with the frasco.

[ Huesos y piel ]

Instead of pushing Mákke when Mákke is not handled:
	say "Tratas de mover sus articulaciones para dejarla en una postura relajada que te permita prepararla para ir al más allá, pero su cuerpo está helado y contraído en una postura grotesca que no cede."
	
Some huesos (m) are part of Mákke. Understand "miembros/articulaciones/brazos/piernas" or "huesos de Mákke" or "huesos de makke" or "miembros de makke" or "miembros de Mákke" or "articulaciones de makke" or "articulaciones de Mákke" as huesos.
Setting action variables when the noun is the huesos: 
	now the noun is Mákke. 
Setting action variables when the second noun is the huesos: 
	now the second noun is Mákke. 
	
Instead of attacking Mákke, say "No, tu maestra merece ser tratada con más respeto y delicadeza."

The piel (f) is part of Mákke. Understand "piel de makke" or "piel de mákke" as the piel.
Instead of examining the piel, try examining Mákke. Instead of rubbing the piel, try rubbing Mákke. Instead of cleaning the piel, try cleaning Mákke. Instead of warming the piel, try warming Mákke. Instead of cutting the piel, say "Cortar la piel de tu maestra sin propósito claro no es respetuoso." 

Instead of anointing the piel with the frasco, try anointing Mákke with the frasco.

[ Ungir Mákke ]

Instead of cleaning Mákke, try anointing Mákke with the frasco.

Instead of putting the frasco on Mákke, try anointing Mákke with the frasco.

Instead of anointing Mákke with the frasco when the ropa is part of Mákke, say "No puedes ungir su cuerpo mientras está vestida."

Instead of anointing Mákke with the frasco:
	if Mákke is not handled:
		now Mákke is handled;
		say "Tomas el frasco de aceite, el aceite aromatizado con resinas y plantas que Mákke sabía preparar, y le untas la piel congelada, las manos duras, los brazos rígidos, las piernas que tan bien le han servido. Con tus propias manos frotas con energía las articulaciones de los brazos y las piernas hasta que puedes moverla. Le quitas la nieve de la cara y le cierras los ojos aún húmedos. [if the esponja is visible]Con la esponja frotas[otherwise]Frotas[end if] los restos de vida de su cuerpo muerto hasta que su piel pierde el olor de la muerte y se llena del olor a pinos y a invierno y al aire limpio del mar.";
	otherwise:
		say "Tomas el frasco de aceite, el aceite aromatizado con resinas y plantas que Mákke sabía preparar, y le untas la piel blanda, las manos duras, el cuerpo entero que tan bien le ha servido. [if the esponja is visible]Con la esponja frotas[otherwise]Frotas[end if] los restos de vida de su cuerpo muerto hasta que su piel pierde el olor de la muerte y se llena del olor a pinos y a invierno y al aire limpio del mar.";
	now the description of Mákke is "Mákke ya ha sido ungida y lavada para entrar en la otra vida. Sobre el pecho de Mákke, sobre el lugar de la fuerza del alma, está la runa de Akka.";
	remove huesos from play;
	now Mákke is charged.

Instead of anointing Mákke with the frasco when Mákke is charged, say "Mákke ya ha sido ungida y lavada."

Section 2 -  Las naves negras

Some naves negras (f) are a thing. "[if level is viento]Las naves negras parecen avanzar rápidamente gracias a las fuertes rachas de viento.[otherwise if level is ráfaga]Las naves negras cabalgan las grandes olas, velas hinchadas por las fuertes ráfagas de viento. Las nubes grises se acumulan sobre ellas y amenazan con lo que está por venir.[otherwise if level is vendaval]Las naves negras se sacuden ante las acometidas de la lluvia y el vendaval. Han arriado las velas y continúan avanzando con los remos.[otherwise if level is tornado]Las naves negras se debaten en el centro de un tornado enfurecido. Luchan por permanecer a flote y no morir ahogadas. Otras son cubiertas por las olas para no volver a surgir jamás, bajo el cielo negro, la lluvia incensante y los relámpagos de la ira de Ukko.[otherwise if level is galerna]Las naves negras se debaten en el centro de un tornado enfurecido. Luchan por permanecer a flote y no morir ahogadas. Otras son cubiertas por las olas para no volver a surgir jamás, bajo el cielo negro, la lluvia incensante y los relámpagos de la ira de Ukko.[otherwise]En el horizonte ves las formas ahusadas de las naves negras. Su aparente inmovilidad no te engaña; sabes que en poco tiempo estarán sobre la aldea." The description is "[if level is viento]El viento les es favorable, de momento, deben de pensar que sus dioses están de su parte, pero lo que no saben es que eres tú quien está invocando la ira de Ukko y Akka.[otherwise if level is ráfaga]Parece que las naves negras no tienen mucho problema en surcar las grandes olas, con las velas hinchadas avanzan rápidamente gracias a las fuertes ráfagas de viento.[otherwise if level is vendaval]La fuerte lluvia y la acometida de las olas comienza a ser un problema para las naves negras. Con las velas arriadas baten con los remos al unísono la mar enfurecida.[otherwise if level is tornado]Las naves negras se hunden bajo la fuerza del mar. Las olas cubren a algunas completamente. Otra ha perdido el mástil, cuyo resto queda humeante tras el impacto de un rayo. Entre el caos a tu alrededor ves, o crees ver, las siluetas de hombres cayendo o saltando por la borda.[otherwise if level is galerna]Las naves negras se hunden bajo la fuerza del mar. Las olas cubren a algunas completamente. Otra ha perdido el mástil, cuyo resto queda humeante tras el impacto de un rayo. Entre el caos a tu alrededor ves, o crees ver, las siluetas de hombres cayendo o saltando por la borda.[otherwise]Has oído hablar de estos largos y rápidos barcos de madera negra y afiladas proas. Sus velas son cuadradas, más grandes que ninguna que hayas visto, y los remos que sobresalen de sus costados las impulsan a sus misiones de muerte aunque no sople el viento." The naves negras are outofreach. Understand "barcos" as the naves negras.
	
Section 3 - Cortar la runa de Akka

Instead of flaying Mákke:
	if Preparación is happening:
		say "(cortando la runa de Akka con el cuchillo)";
		try cutting the runa de Akka with the cuchillo;
	otherwise if Ritual is happening or Fallar is happening:
		say "Has terminado con Mákke. No es necesario seguir cortándole.";
	otherwise:
		say "No es necesario recurrir a eso en estos momentos.".

Instead of flaying the runa de Akka:
	if Preparación is happening:
		try cutting the runa de Akka with the cuchillo;
	otherwise if Ritual is happening or Fallar is happening:
		say "Ya tienes la runa de Akka en tu poder. No es necesario seguir cortándola.";
	otherwise:
		say "No es necesario recurrir a eso en estos momentos.".

Instead of cutting Mákke:
	If Preparación is happening:
		say "No tiene sentido cortar a tu maestra al azar.";
	otherwise if Ritual is happening or Fallar is happening:
		say "Has terminado con Mákke. No es necesario seguir cortándole.";
	otherwise:
		say "No es necesario recurrir a eso en estos momentos.".

Instead of cutting the runa de Akka with the cuchillo when the ropa is a part of Mákke, say "Tienes que quitarle la ropa primero."

Instead of cutting the runa de Akka with the cuchillo when Mákke is not charged and the ropa is not part of Mákke, say "Sí, necesitas hacer eso, pero primero su piel debe de ser preparada covenientemente."

Instead of cutting the runa de Akka with the cuchillo when the runa de Akka is not part of Mákke, say "Cortar la runa de Akka con el filo del cuchillo la arruinaría y la dejaría inútil."

Instead of cutting the runa de Akka with the cuchillo when the runa de Akka is part of Mákke:
	say "Haces lo que tienes que hacer y luego [if the manto is visible]cubres[otherwise]vas a cubrir[end if] el cuerpo de Mákke con su manto de piel de foca[if the manto is visible]. Pero d[otherwise], pero no lo ves por ningún lado, así que la dejas como está. D[end if]ejas la sangre muerta de Mákke en el cuchillo de piedra negra.";
	move the runa de Akka to the player;
	now the runa de Akka is charged;
	if the manto is visible:
		move manto to Mákke;
		now manto is part of Mákke;
	now the cuchillo is charged;
	now the description of Mákke is "Has terminado con Mákke. Yace sobre la piedra negra [if the manto is part of Mákke]tapada con su manto de piel de foca[otherwise]completamente desnuda[end if].";
	now the description of the cuchillo is "Ahora el cuchillo está manchado con la sangre negra de la bruja Mákke.";
	now the description of the runa de Akka is "La runa de Akka en un trozo de la piel de Mákke.[if the runa de Akka is part of the brazo and the herida is part of the player] La has colocado sobre la herida sangrante de tu brazo, el mismo brazo que sujeta el odre.[otherwise if the runa de Akka is part of the brazo and the herida is not part of the player] La has colocado sobre el brazo que sujeta el odre.[otherwise] Está ensangrentada por debajo.[end if]";
	pause the game;
	say "[line break]".

Instead of anointing the cuchillo with the frasco, say "No, lo necesitas así como está."

Instead of rubbing the cuchillo, say "No, lo necesitas así como está." Instead of cleaning the cuchillo, say "No, lo necesitas así como está."

Preparación ends when the runa de Akka is charged.

Section 4 - Conjuro
 
When Ritual begins:
	move the tormenta to Acantilado;
	now the description of Acantilado is "Ante la piedra de las brujas. Ante los dioses expectantes. Ante el cadáver ungido de tu maestra. Ante la inmensidad del mar, el cielo gris y el vuelo impasible de los albatros. Hoy tú te alzarás sobre todo. Hoy tú, Lenne de trece años, Lenne-que-quiere-ser-bruja, Lenne que aún lleva sus trenzas de muchacha, te sientes más pequeña que nunca.";
	try looking;
	say "[italic type]Esta es tu oportunidad de convertirte en bruja y salvar a tu aldea. Debes RECITAR CONJURO paso a paso y aguantar hasta completarlo.[line break][roman type]".
	
After conjuring during Ritual:
	if level is viento and Fallar is not happening, say "[italic type]Ahora, continúa llamando a la tormenta. Debes RECITAR todos los versos del hechizo hasta que esté completo..[roman type][line break]"

[Ejemplo de cómo hacer una variable global que varía: 

Switch is a kind of value. The switch are on and off. The Narrativa is a switch that varies. The Narrativa is on.]

Intensity is a kind of value. The intensity are calma, viento, ráfaga, vendaval, tornado, galerna. The level is a intensity that varies. The level is calma.
 
To increase the storm:
	if the level is:
		-- calma:
			now the level is viento;
		-- viento:
			now the level is ráfaga;
		-- ráfaga:
			now the level is vendaval;
			now the description of Acantilado is "Es exactamente el lugar en el que no quieres estar durante una tormenta. Aquí el viento abofetea como un dios iracundo, aquí la negrura del cielo parece una gran boca que desea devorarte. Los trazos cegadores de los rayos te buscan, y el crujido del trueno sobre tu cabeza te hace dudar hasta de la solidez de la mismísima roca.";
		-- vendaval:
			now the level is tornado;
		-- tornado:
			 now the level is galerna;
	say "[if level is viento]El viento comienza a soplar fuerte, agitando y levantando las olas.[otherwise if level is ráfaga]El viento redobla sus fuerzas y atrae nubes grises que amenazan tormenta. Las olas alcanzan velocidad y altura y se estrellan contra el acantilado en frías nubes de espuma.[otherwise if level is vendaval]El viento ruge con fuerza amenazando con arrancarte el odre del brazo. Las olas alcanzan gran altura e intentan derribar el acantilado acometida tras acometida. Una lluvia intensa cae de las nubes oscuras y airadas. Los barcos negros cabecean entre las ráfagas y se apresuran a arriar las velas por miedo a perderlas.[otherwise if level is tornado]Las olas y la lluvia se unen en un todo enloquecido, incesante, insensato. Todo se ahoga bajo el agua. Las mismas rocas del acantilado tiemblan, se desmoronan, se rinden. Los relámpagos cortan el horizonte en dos. El rugir del viento amenaza con tirarte acantilado abajo. La furia de los elementos es tal que sabes que la flota de naves negras pronto estará condenada.[otherwise if level is galerna]El infierno hecho agua, viento y trueno se ha desatado sobre la bahía. La galerna ya está aquí. Se arremolina sobre la piedra de las brujas y arranca violentamente el cuerpo de la bruja Mákke. Vuela y gira como una muñeca de trapo llevada por la tormenta, perdiéndose en la lluvia."
	
To decrease the storm:
	if the level is:
		-- galerna: now the level is tornado;
		-- tornado: now the level is vendaval;
		-- vendaval: now the level is ráfaga;
		-- ráfaga: now the level is viento;
		-- viento: now the level is calma;
	say "[if level is calma]Se ha terminado. El odre se vacía de viento, las nubes se dispersan y el mar queda en una extraña calma. En el horizonte puedes ver cómo los barcos negros izan sus enseñas y se acercan inexorablemente a la costa.[otherwise if level is viento]La tormenta comienza a disiparse, las nubes parecen haber descargado su agua y se tornan grises en vez de negras.[otherwise if level is ráfaga]La galerna se disipa y aunque sigue lloviendo y el mar azotando el acantilado, el viento ha perdido fuerza. Lo notas en que ya no se empeña en arrancarte el odre del brazo.[otherwise if level is vendaval]La galerna parece tranquilizarse. Ya no hay dos infiernos de agua, uno arriba y otro abajo. La lluvia cae con fuerza pero ya no te ahogas. Los relámpagos dejaron de iluminar el cielo hace rato.[otherwise if level is tornado]El desánimo crece en ti y de la misma manera notas como el conjuro decrece en intensidad. Miras la runa de Akka en el trozo de piel de Mákke, miras la runa de Ukko en el odre, miras el cuchillo con la sangre negra de tu maestra impregnada en la hoja. Una lágrima recorre tu mejilla. La hoja de piedra, atravesada por la luz hiriente de la tormenta, parece haberse convertido en un ascua dorada incluso con la sangre de Mákke empañándola.[otherwise]Los albatros se vuelven locos y explotan en un mar de plumas y sangre. ERROR: este mensaje no debería de aparecer.".

Understand "recita ritual" as conjuring.
Understand "recita conjuro" as conjuring.
Understand "recita" as conjuring.

Understand "invoca" as conjuring.
Understand "invoca conjuro" as conjuring.

Conjuring is an action applying to nothing.

Instead of conjuring:
	if Fallar is happening and the brazo is uncharged:
		if the player carries the cuchillo:
			say "Has perdido todo tu poder prestado. [one of]El odre pierde fuerza por momentos y las palabras su capacidad de alterar la existencia.[or]Alzas el brazo izquierdo en una súplica desesperada, empuñando el cuchillo que se recorta contra el cielo como tratando de apuñalar la tormenta. Gritas tu frustración al viento:

—¡Mákke! ¿Qué debo hacer? ¡Maestra Mákke, por favor, guíame!

La única respuesta que recibes es el aullido enloquecido del viento.[or]Algo drástico debe de hacerse, pronto, pero quizás ya sea demasiado tarde.[stopping]";
		otherwise:
			say "Has perdido todo tu poder prestado. El odre pierde fuerza por momentos y las palabras su capacidad de alterar la existencia.";
		stop the action;
	otherwise if Ritual is happening:
		continue the action;
	otherwise if Preparación is happening:
		if Mákke is uncharged:
			say "Tienes que preparar antes a tu maestra para entrar a la otra vida.";
		otherwise:
			say "Ahora debes tener la runa de Akka en tu poder.";
	otherwise:
		if Encontrar is happening:
			say "No es el momento. Debes buscar a tu maestra.";
		otherwise:
			say "No es el momento.".

Carry out conjuring:
	if the level is:
		-- calma:
			say "No pides permiso a Árvet. No pides permiso al espíritu de Mákke. Los vivos son de la vida. Los muertos son de la muerte.[paragraph break]
Las brujas no son de ningún sitio.[paragraph break]";
			say "Destapas el odre y lo ofreces al mar.[paragraph break]
[italic type]Tuulen Ukko tuulen Akka[line break]
Tuulen kaikki ristikansa[line break]
 [line break]
Miestä mustoa rukoilen[line break]
Suuren tuulen nostajaksi[roman type][line break]
[line break]";
		-- viento:
			say "La vieja lengua se enreda en tu garganta y en los dientes, vuelve el aire denso a tu alrededor. Sigues pronunciando el conjuro mientras el brazo que sujeta el odre va pesando más y más.[paragraph break]
[italic type]Suuren tuulen nostajaksi[line break]
Sään rajun rakentajaksi[line break]
 [line break]
Tuopa taita tammen latvat[line break]
Rutaise rutiset raijat[roman type][line break]
[line break]";
		-- ráfaga:
			say "El odre empieza a hincharse, poco a poco al principio. Los pliegues del cuero se alisan. A lo lejos, el cielo se oscurece. La tormenta hace que se torne negro, del mismo color que los barcos en el horizonte. El brazo te duele, tiembla. La cabeza también te duele, con un dolor sordo y pulsante. Te cuesta seguir pronunciando el conjuro. El aire sabe a sal y a hierro.[paragraph break]
[italic type]Nouse tuuli tuulemahan[line break]
Vihkurit vetelemään[line break]
 [line break]
Nouse tuuli tuulemahan[line break]
Ilmarinta riehkimään[line break][roman type]
[line break]";
		-- vendaval:
			say "Tu voz llega desde fuera también, un eco extraño y estridente, mientras la luz va desapareciendo tragada por nubes negras que vienen desde los cuatro puntos cardinales. El aire sopla frío y a golpes, dando latigazos a las olas que lamen la orilla, abajo en la bahía. El odre está hinchado y pesa como un ahogado. Te cuesta respirar cada vez más: el aire parece agua densa y salobre.[paragraph break]
[italic type]Tuule tuuli kuusi vuotta[line break]
Seuro seitsemän kesää[line break]
[line break]
Itse kuoho kosken lailla[line break]
Sekä valtona vallitse[line break][roman type]
[line break]";
		-- tornado:
			say "Tomas el cuchillo con la sangre de Mákke. En tu mente la tormenta ya ruge, te destroza. Arriba, las nubes esperan tu orden.[paragraph break]
 [italic type]Miestä mustoa rukoilen[line break]
Suuren tuulen nostajaksi[line break]

[roman type]Gritas y el viento ruge contigo. Alzas el cuchillo y el cielo entero se alza contigo. Dejas caer el cuchillo y la hoja de piedra negra atraviesa la piel de Mákke, la runa de Akka, tu propio brazo. La sangre muerta de Mákke se mezcla con tu sangre viva. Tus dedos quieren abrirse, soltar el odre, pero el brazo continúa extendido, goteando sangre sobre la piedra negra.[paragraph break] 
[italic type]Suuren tuulen nostajaksi[line break]
Sään rajun rakentajaksi[line break][roman type]
[line break]";
	Increase the storm.


Instead of conjuring when the level is tornado:
	if the brazo is charged:
		continue the action;
	otherwise if the runa de Akka is part of the brazo:
		say "Repites de nuevo los versos finales:[paragraph break]
[italic type]Miestä mustoa rukoilen[line break]
Suuren tuulen nostajaksi[line break]
[line break][roman type]";
		if the herida is part of the player:
			say "[one of]La runa de Akka ahora está en contacto con tu sangre, pero sabes que aún no es suficiente: sangre contra sangre; ha de ser sangre de bruja dentro de tu carne, el dolor de los vivos hincado en la piel de los muertos. El viento amenaza con arrancarte la runa de tu brazo. Se necesita algo más drástico.[or]¡No funciona! La runa no forma parte de ti. Gritas tu frustración al viento.[or]Pero sigue sin funcionar. La runa está en contacto con tu sangre, pero sigue sin formar parte de ti: la runa debe beber tu sangre como un árbol hundiendo sus raíces en la tierra. Se necesita algo más drástico.[stopping]";
		otherwise:
			say "[one of]¡No funciona! La runa no forma parte de ti. No va a funcionar. Gritas tu frustración al viento.[or]Pero sigue sin funcionar. La runa sigue sin formar parte de ti.[stopping]";
	otherwise:
[		now the brazo is part of the player;]
		now the mano is part of the player;
		now the runa de Akka is part of the brazo;
		say "Esperas; esperas hasta que la tormenta en tu cabeza y la tormenta en el horizonte son una, hasta que tu cuerpo está en dos sitios a la vez, hasta que el odre casi se escapa tironeando de tus dedos en su ansia por liberar la furia del viento.

Pero aún no. Aún no. El poder saldrá de tus palabras y de tu voluntad, no con la furia ciega de la tormenta.[paragraph break]
[italic type]Miestä mustoa rukoilen[line break]
Suuren tuulen nostajaksi

[roman type]Pero la runa de Akka no responde. No sientes su energía. Algo falla. Lo que más temías: tú. No eres una bruja. Solo eres una muchacha tonta que roba el poder a su maestra muerta. La runa no puede responder porque no está en tu piel. No tiene sangre de bruja que la alimente.

Con la otra mano tomas la runa que había estado en la piel de Mákke y la colocas sobre [if the herida is part of the player]la herida sangrante, en [end if]el brazo que sujeta el odre. No es la manera habitual, no es la manera correcta. Pero la decisión es tuya. Si realmente eres la bruja, si eres digna del poder, lo que hagas será lo que debe hacerse. Eso decía Mákke."

The tormenta (f) is a thing. The description is "[if level is calma]El cielo está cubierto de unas nubes mortecinas que no dejan pasar el sol. El viento sopla llevando las olas hasta las rocas del acantilado. [otherwise if level is viento]El cielo está arremolinado de nubes grises. El viento sopla fuerte haciendo crecer las olas.[otherwise if level is ráfaga]En el cielo las nubes negras amenazan tormenta. Las fuertes ráfagas de viento estrellan olas enormes contra el acantilado.[otherwise if level is vendaval]El viento es tan fuerte que arremolina la lluvia hasta que no puedes tener los ojos abiertos; las rachas casi te desequilibran, tironean de tu pelo y tus ropas.[otherwise if level is tornado]Las enormes olas amenazan con derribar el acantilado, golpeándolo con saña incesante. Del cielo cae una espesa cortina de agua; es imposible saber si es día o noche: la oscuridad lo cubre todo pero los incesantes relámpagos te ciegan.[otherwise if level is galerna]Las enormes olas amenazan con derribar el acantilado, golpeándolo con saña incesante. Del cielo cae una espesa cortina de agua; es imposible saber si es día o noche: la oscuridad lo cubre todo pero los incesantes relámpagos te ciegan." The tormenta is outofreach and scenery.

Some nubes (f), the relampago (m), the viento (m), the lluvia (f) are part of the tormenta. Understand "nubes negras" and "nubes grises" as the nubes. Understand "tornado" as the viento. Understand "rayo/trueno" as the relampago.

Instead of examining anything that is part of the tormenta, try examining the tormenta.

Instead of examining up during Ritual, try examining the tormenta.

Instead of examining the horizonte during Ritual, try examining the naves.

Instead of examining the horizonte when the naves are visible, try examining the naves.

Instead of examining the mar during Ritual, try examining the tormenta.

Section 5 - Fallar

Fallar is a scene.

Fallar begins when the Ritual is happening and the odre is uncharged.

After quipping when the current quip is hazlo:
	now the odre is charged.

After conjuring when level is vendaval:
	if Ritual is happening and Fallar is not happening:
		the fail-timer clucks in ten turns from now;
	otherwise:
		do nothing.
		
At the time when fail-timer clucks:
	if Ritual is happening:
		now the odre is uncharged;
		now the level is galerna;
		say "Los relámpagos han dejado de buscar a los barcos negros. Un rayo cae cerca de la piedra de las brujas. El enorme chasquido casi te deja sorda. Una advertencia. Quizás todo esto no ha sido más que una ofensa a los dioses y a tu maestra.";
	otherwise:
		do nothing.
	
Every turn during Fallar:
	Decrease the storm.
	
Fallar ends bad when Fallar is happening and level is calma.

When Fallar ends bad:
	end the story saying "No has podido llamar a la tormenta y tu aldea morirá a manos de los hombres de los barcos negros."
	
Fallar ends well when Fallar is happening and the odre is charged.

Before stabbing the runa de Akka with the cuchillo during Fallar:
	now the odre is charged;
	now the level is tornado;
	continue the action.
	
Instead of examining the cuchillo during Ritual:
	say "Observas el cuchillo cubierto con la sangre de Mákke, sangre negra de bruja. Y recuerdas sus enseñanzas sobre este: 'Esta hoja separa tanto como une, conecta tanto como apuñala.'"

Instead of examining the reflejos during Ritual:
	say "Observas el interior de la hoja parcialmente cubierta con la sangre negra de bruja. Los reflejos dorados refulgen con furia e intensidad.[first time] Y recuerdas las enseñanzas de Mákke respecto al cuchillo: 'Esta hoja separa tanto como une, conecta tanto como apuñala.'[only]"

Section 6 - Acuchillar

[ Cortar ]

Instead of cutting the player with the cuchillo during Ritual:
	if the herida is part of the player:
		say "Ya has pagado el precio de la sangre. No sabes si será suficiente.";
	otherwise:
		if the runa de Akka is part of the brazo:
			say "Con el filo de la hoja negra haces un corte en tu antebrazo, el mismo que sujeta el odre, y pagas el precio de la sangre sobre el altar. La sangre se mezcla con el color oscuro de sacrificios previos realizados durante eras pasadas. Recolocas la runa de Akka sobre la herida sangrante. La piel muerta de tu maestra en contacto con tu sangre. Esperas que sea suficiente.";
		otherwise:
			say "Con el filo de la hoja negra haces un corte en tu antebrazo, el mismo que sujeta el odre, y pagas el precio de la sangre sobre el altar. La sangre se mezcla con el color oscuro de sacrificios previos realizados durante eras pasadas.";
		now the herida is part of the player.

Instead of cutting the brazo, try cutting the player.

The herida (f) is a thing. The description is "[if Ritual is happening]Un feo corte sangrante en tu brazo.[otherwise]El vendaje tapa la herida."

The brazo (m) is a magical object. The description is "[if Ritual is happening]Tu brazo se está congelando.[otherwise if the player wears the vendaje]El vendaje tapa la herida.[otherwise]Tus brazos no tienen nada de especial. Bueno, salvo la extrema delgadez." Understand "mi brazo" or "tu brazo" or "brazos" as the brazo. The indefinite article is "tu". The brazo is part of the player.

After examining the brazo when the herida is part of the player: 
	if the runa de Akka is part of the brazo:
		say "Has colocado la runa de Akka sobre el corte sangrante.";
	otherwise:
		say "Tiene un feo corte que sangra." 
	
After examining the brazo when the runa de Akka is part of the brazo:
	say "Has colocado la runa de Akka sobre el brazo que sujeta el odre."

The mano (f) is an object. The description is "Con la mano derecha sujetas el odre.[if the player has the cuchillo] Con la mano izquierda empuñas el cuchillo de Mákke." Understand "mi mano" or "tu mano" or "manos" as the mano. The indefinite article is "tu".

Instead of cutting the mano during Ritual:
[	if the brazo is not part of the player:
		now the brazo is part of the player;]
	if the herida is part of the player:
		say "Ya has pagado el precio de la sangre. No es necesario derramar más.";
	otherwise:
		say "En la mano derecha sujetas el odre. La mano izquierda la necesitas para empuñar el cuchillo de Mákke. El brazo que sujeta el odre es una buena opción para pagar el precio de la sangre.".


[ Más negative feedback para cuando se trata de poner la runa en el brazo ]

Instead putting the runa de Akka on the brazo:
	if the runa de Akka is part of the brazo:
		say "Ya has colocado la runa de Akka en el brazo que sujeta el odre.";
	otherwise:
		say "No hay motivo para colocar la runa de Akka sobre el brazo."
		
Instead of putting the runa de Akka on the herida:
	if the herida is part of the player and the runa de Akka is part of the brazo:
		say "Ya has colocado la runa de Akka sobre tu herida sangrante.";
	otherwise:
		say "No es mala idea, pero en un principio lo que necesitas es completar el ritual recitando el conjuro."

[ Código para intentos de Tatuar y otros fallidos ]

Instead of tattooing the runa de Akka, say "La runa de Akka requiere tiempo y preparación para tatuar, no es como si pudieras replicar su trazos con el cuchillo en tu carne. Tiene más complejidad que eso."

Instead of tattooing the brazo, try tattooing the runa de Akka.

Instead of tattooing the player, say "Tatuar... no sabes qué tatuar."

[ Clavar ]

Instead of stabbing the brazo with the cuchillo:
	if the runa de Akka is part of the brazo:
		try stabbing the runa de Akka with the cuchillo;
	otherwise:
		say "Mutilarte así. No hay motivo para clavarse el cuchillo en el brazo en este momento.";

Instead of stabbing the brazo with the runa de Akka:
	try stabbing the runa de Akka with the cuchillo.
	
Instead of stabbing the player with the cuchillo:
	say "Clavarte el cuchillo. Es una acción drástica. Pero poco concreta."

Instead of stabbing the runa de Akka with the cuchillo:
	if the brazo is not charged and level is tornado:
		now the brazo is charged;
		try conjuring;
	otherwise:
		say "Atravesar la runa con el cuchillo... No hay motivo para clavar la runa así en este momento."
		
[ Fin del ritual ]
 
The Ritual ends when the level is galerna and the odre is charged.

When Ritual ends:
	move the cuchillo to Choza;
	move the runa de Akka to Choza;
	remove the odre from play;
	remove the mano from play;
	move the frasco to Choza;
	move the esponja to Choza;
	now the herida is part of the player;
	say "El odre estalla en viento y furia, se rompe en mil pedazos, y a lo lejos la tormenta vuelve el cielo del color amarillo de un cadáver. El conjuro sigue saliendo de tus labios como la sangre de tu brazo, guiando la tormenta, guiando la muerte hacia los barcos negros. Tus ojos se llenan de ahogados, tu nariz de agua, tu boca de sangre. Eres la tormenta. Eres la muerte. Y mueres por primera vez en tu vida.";
	Pause the game;
	say "[line break][italic type]Soy Lenne. Soy la bruja. Esta es mi historia.[line break][roman type][line break]
Despiertas en el suelo, con el brazo aún atravesado por el cuchillo. Tu mano está cubierta de sangre y hielo. Del odre no queda ni un pedazo. Tampoco se ve el cuerpo de la bruja Mákke.[paragraph break]
Árvet está en la orilla cuando bajas, débil y dolorida, sujetándote un vendaje al brazo herido.".

 
Chapter 5 - Los muertos

When Muertos begins:
	move the vendaje to the player;
	now the player wears the vendaje;
	move the cadaveres to Playa;
	move the maderos to Playa;
	now the description of the agua is "El agua helada está cubierta de cuerpos, algunos meciéndose con el oleaje en los bajíos, otros arrojados por el mar a la playa.";
	move Leif to Playa;
	move Ulrif to Playa;
	move Snorri to Playa;
	now the litany of Arvet is the Table of Death Conversation;
	move the player to Playa;
	move arvet to Playa;
	say "—Has llamado a la tormenta, bruja Lenne —dice Árvet. [paragraph break]".

The vendaje (m) is a wearable thing. The description is "Has tratado la herida con un vendaje y un unguento de hierbas cicatrizantes. No sabes si el daño será permanente, pero no tienes muchas esperanzas." Instead of taking off the vendaje, say "No, lo necesitas así para curar la herida, al menos en su superficie."

Instead of pushing the brazo during Muertos, say "El dolor punzante te hace parar."

Instead of examining the player during Muertos: say "Tu pelo está suelto y enmarañado, tus ropas en desorden y cubiertas de sangre. Esta mañana eras una muchacha. Ahora eres Lenne, la bruja."

Some cadaveres (m) are a magical object. "La playa de piedras oscuras está cubierta de maderos, de cordaje y de cadáveres. Habían sido hombres altos, de pelo amarillo o cobrizo, pálidos y orgullosos. Muchos llevan al cinto espadas y hachas. Ahora no son más que carne para el festín de los albatros." The description is "Hay tres cuerpos cerca de donde estás: un hombre rubio muy joven, demasiado joven. Un hombre alto y grande [if Ulrif is handled]de facciones hinchadas y deformes.[otherwise]que yace boca abajo.[end if] Un poco más lejos hay un hombre pelirrojo que mira al cielo con un solo ojo." The printed name of cadaveres is "cadáveres". The cadaveres are fixed in place. Understand "muertos/hombres/cuerpos" as the cadaveres. Instead of taking the cadaveres, say "Son demasiados para ocuparte tú sola de ellos."

Before of talking to cadaveres, say "Los muertos son demasiados. Los muertos son tuyos. Te abruman." instead.

Some hachas y espadas (f) are part of the cadaveres. Understand "hachas/espadas/armas" as the hachas y espadas. The description is "La elección a la hora de matar por parte de los hombres altos. Espadas largas, y picudas hachas de batalla, grabadas con símbolos y nudos que te son extraños."

Leif (m) is a thing. It is scenery. Understand "hombre/joven/rubio/cuerpo" as Leif. The description is "Su pelo es del color del trigo. Se llamaba Leif." The printed name is "hombre rubio muy joven".

Ulrif (m) is a thing. It is scenery. Understand "hombre/alto/grande/cuerpo" as Ulrif. The description is "[if Ulrif is handled]La cara hinchada deforma sus rasgos: los hace grotescos, difíciles de leer. [otherwise]Yace boca abajo, la cara hundida entre las piedras. [end if]Fue un hombre alto de gran fuerza y corpulencia. Se llamaba Ulrif." The printed name is "hombre alto y grande".

Snorri (m) is a thing. It is scenery. Understand "hombre/pelirrojo/tuerto/cuerpo" as Snorri. The description is "El ojo tuerto es una cicatriz. Una herida de hace tiempo. El otro ojo lo tiene nublado. Se llamaba Snorri." The printed name is "hombre pelirrojo".

Before of talking to Leif, say "Ahora eres la bruja: ahora los muertos son tuyos, como los vivos. No es exactamente una conversación pero al mirarlos sabes quiénes fueron, de alguna manera te hablan." instead.
Before of talking to Ulrif, say "Ahora eres la bruja: ahora los muertos son tuyos, como los vivos. No es exactamente una conversación pero al mirarlos sabes quiénes fueron, de alguna manera te hablan." instead.
Before of talking to Snorri, say "Ahora eres la bruja: ahora los muertos son tuyos, como los vivos. No es exactamente una conversación pero al mirarlos sabes quiénes fueron, de alguna manera te hablan." instead.


Table of Death Conversation
prompt		response	enabled
"..."		hasllamado	1
"'Se llamaba Leif.'"		llamaLeif	0
"'Se llamaba Ulrif.'"		llamaUlrif	0
"'Se llamaba Snorri.'"		llamaSnorri	0
"'La aldea vive.'"		Aldeavive	0
"Terminar la conversación."		silencio4	0
"No hay mucho más que decir."		silencio5	0

After quipping when the current quip is silencio4:
	enable the silencio4 quip;
	terminate the conversation.

After quipping when the current quip is silencio5:
	enable the silencio5 quip;
	terminate the conversation.

After quipping when the current quip is hasllamado:
	disable the hasllamado quip;
	enable the silencio4 quip;
	enable the llamaLeif quip;
	enable the llamaUlrif quip;
	enable the llamaSnorri quip.

[Instead of examining the Leif for the first time:
	disable the llamaLeif quip;
	deliver the llamaLeif quip.]

[Instead of examining the Ulrif for the first time:
	disable the llamaUlrif quip;
	deliver the llamaUlrif quip.]

[Instead of examining the Snorri for the first time:
	disable the llamaSnorri quip;
	deliver the llamaSnorri quip.]

After quipping when the current quip is llamaSnorri:
	now Snorri is handled.

After quipping when the current quip is llamaLeif:
	now Leif is handled.

After quipping when the current quip is llamaUlrif:
	now Ulrif is handled.

To decide if all dead accounted:
	if Leif is handled:
		if Ulrif is handled:
			if Snorri is handled:
				decide yes;
	decide no.

After quipping when all dead accounted:
	if the cadaveres are not handled:
		the arvet-timer clucks in three turns from now;
		disable the silencio4 quip;
		enable the silencio5 quip;
	otherwise:
		do nothing.

At the time when arvet-timer clucks:
	enable the Aldeavive quip;
	disable the silencio5 quip;
	now the cadaveres are charged;
	say "Al cabo de un rato Árvet dice:

—La aldea vive.

No dice lo que tú has aprendido: que la bruja paga por la sangre vertida. Ahora posees para siempre sus muertes y sus vidas, mueres cada vez que matas. Pero hay mucha muerte en la playa. Mucha sangre en esta tierra.[paragraph break]".

Instead of talking to arvet when the cadaveres are charged:
	deliver the Aldeavive quip.

Table of Quip Texts (continued)
quip		quiptext
hasllamado		"Casi no puedes hablar: tu garganta está en carne viva y quemada por la sal y por el viento. Miras a los muertos."
llamaLeif		"—Se llamaba Leif —dices, con voz como el graznido de un cuervo —. Tomó mujer la primavera pasada, la dejó encinta antes de subir al barco negro. Pasó el viaje tallando un juguete para su bebé en un diente de morsa.[paragraph break]
Árvet no dice nada."
llamaUlrif		"Das la vuelta con el pie al muerto de gran corpulencia para mirarle los ojos blancos, la cara hinchada.

—Se llamaba Ulrif —dices —. Le gustaba beber y le gustaba pelear. Cantaba mejor que nadie en su aldea y pegaba a su mujer cuando llegaba borracho a casa y ella no quería yacer con él."
llamaSnorri		"Un poco más lejos un hombre mira al cielo con un solo ojo.[paragraph break]
—Se llamaba Snorri —dices —. No era de la aldea; vino de lejos, mercadeando con pieles, y se quedó con ellos. Era cruel. Le gustaba navegar y le gustaba matar, y hubiera querido ser jefe. Pasó el viaje soñando con los gritos de las mujeres que tomaría por la fuerza al llegar."
Aldeavive		"Te giras hacia la aldea.[paragraph break]—La aldea vive —dices.

[italic type]Quizá Lenne la muchacha hubiera llorado. Pero Lenne, la bruja, ya no pudo.

Soy Lenne. Soy la bruja. Esta ha sido la historia. A través de todos los años, de todos los muertos y de toda la sangre aún recuerdo aquel momento en la playa, entre los cadáveres.

Miré en silencio a Árvet; no pude asegurarle que la vida volvería, que el pescado caería en las redes, que los niños tendrían leche y los hombres carne de foca y arenque. Todo lo que vi era la muerte que rodea la tierra, que llenaba el mar. No pude ver para la aldea la vida que quise salvar con la muerte que invoqué.

Quizá Mákke lo sabía. Quizá por eso flaqueó y murió antes de poder traer la tormenta. Quizá hubiera sido mejor morir por la espada y el hacha que desaparecer poco a poco.

Árvet me miró como se mira a las brujas: con respeto, con miedo. Con odio. Yo miraba los muertos.

A través del vendaje de mi brazo salía sangre, y era sangre negra.

Sangre de bruja."
silencio4		"Tu mirada sigue perdida entre los muertos."
silencio5		"Tu mirada sigue perdida entre los muertos."

After quipping when the current quip is Aldeavive:
	end the story finally;

The aldea_lejos (f) is a scenery thing in Playa. Understand "aldea/cabanas/cabañas/figuras" as the aldea_lejos. The printed name is "aldea". The description is "[if Muertos is happening]No puedes dejar de mirar a los muertos. Al intentar mirar la aldea tu vista se llena de niebla oscura.[otherwise]La aldea puede verse desde la playa, al este. Es un puñado de cabañas. Poca cosa, pero es todo tu mundo."
	
Instead of entering the aldea_lejos, try going east.

Instead of examining the aldea_lejos during Muertos:
	if all dead accounted and the cadaveres are charged:
		deliver the Aldeavive quip;
	otherwise:
		continue the action.

Before going east during Muertos, try examining the aldea_lejos instead.

Some maderos (m) are scenery. Understand "planchas / plancha / maderos / cordaje/velas/madera/dragon/dragones/mastil/cuerdas/restos/naufragio" as the maderos. The description is "Lo que queda de las naves atacantes. Restos de planchas, nudos de cordaje empapados y negros, enredados de algas. Aquí y allá algún triste recordatorio de los tripulantes en forma de una cantimplora, un juguete, un cuchillito de mango de hueso: los huesos masticados del naufragio, que el mar ha escupido a la playa de la aldea. Se adivinan dragones que decoraban los navíos y algunos escudos; quizá estos extraños hombres muertos fiaban su protección a los dragones, y no a las brujas." The printed name is "restos del naufragio".

Instead of taking the maderos, say "Son sólo pecios y desechos."

Some escudos (m) are part of the maderos. The description is "Entre los restos del naufragio también ves algunos de los escudos de los guerreros. Algunos están sencillamente pintados de colores. Otros muestran bellos motivos de pulpos, águilas, elegantes y enrevesados nudos, dragones rojos de fauces abiertas."

The recordatorio (m) is part of the maderos. Understand "cantimplora/juguete/cuchillito/mango/hueso/huesos" as the recordatorio.
 

Chapter 6 - Liveliness

Section 1 - The director

Every turn when the player is in Playa and the Playa is deserted:
	if a random chance of 2 in 6 succeeds:
		choose a random row in the Table of Calm Beach Ambiance;
		say "[event entry][paragraph break]";
		continue the action.
		
Every turn when the player is in Playa and the Playa is populated and Muertos is not happening:
	if a random chance of 3 in 10 succeeds and the number of filled rows in the Table of Albatrosses on the Beach Ambience is not 0:
		choose a random row in the Table of Albatrosses on the Beach Ambience;
		say "[event entry][paragraph break]";
		blank out the whole row;
		continue the action;
	otherwise if a random chance of 1 in 7 succeeds:
		if a random chance of 1 in 2 succeeds:
			choose a random row in the Table of Albatrosses Flight;
		otherwise:
			choose a random row in the Table of Calm Beach Ambiance;
		say "[event entry][paragraph break]";
		continue the action.

Every turn when the player is in Aldea and the Aldea is populated:
	if a random chance of 3 in 10 succeeds and the number of filled rows in the Table of Village Ambiance is not 0:
		choose a random row in the Table of Village Ambiance;
		say "[event entry][paragraph break]";
		blank out the whole row;
		continue the action;
	otherwise if a random chance of 1 in 7 succeeds:
		choose a random row in the Table of Albatrosses Flight;
		say "[event entry][paragraph break]";
		continue the action.
		
Every turn when the player is in Acantilado and the Acantilado is populated:
	if we are conjuring:
		do nothing;
	otherwise if Ritual is happening:
		if a random chance of 3 in 5 succeeds and the number of filled rows in the Table of Cliff within the Storm is not 0:
			choose a random row in the Table of Cliff within the Storm;
			say "[event entry][paragraph break]";
			blank out the whole row;
			continue the action;
	otherwise:
		if a random chance of 3 in 10 succeeds and the number of filled rows in the Table of Cliff without Storm Ambiance is not 0:
			choose a random row in the Table of Cliff without Storm Ambiance;
			say "[event entry][paragraph break]";
			blank out the whole row;
			continue the action;
		otherwise if a random chance of 1 in 7 succeeds:
			choose a random row in the Table of Albatrosses Flight;
			say "[event entry][paragraph break]";
			continue the action.

Every turn during Muertos:
	if we are qbc responding with:
		do nothing;
	otherwise if a random chance of 3 in 5 succeeds and the number of filled rows in the Table of Muertos Ambiance is not 0:
		choose a random row in the Table of Muertos Ambiance;
		say "[event entry][paragraph break]";
		blank out the whole row;
		continue the action.


Section 2 - The tables

Table of Calm Beach Ambiance
event
"Una ola alta rompe contra la playa, la espuma llega hasta tus pies."
"Una ola rompe en los bajíos elevándose en espuma de agua de mar"
"La brisa marina sopla fuerte[one of], helada, salada.[or] aquí.[stopping]"
"Las barcas se mecen con la marea y repiquetean con una melodía de agua y madera."

Table of Albatrosses on the Beach Ambience
event
"Un par de albatros descansan en una barca y se acicalan mutuamente introduciendo sus picos en el plumaje del otro."
"Un albatros planea sobre la bahía, gira noventa grados y cae en picado recogiendo sus alas junto antes de entrar en el agua. Emerge al rato con el pico vacío y vuelve a elevarse mojado y frustrado."
"Un albatros se zambulle en la bahía. Emerge al rato con el pico vacío. A duras penas vuelve a elevarse para continuar oteando la bahía."
"Un albatros vuelve a zambullirse en la bahía. Emerge al rato con un pez en su pico. Se eleva y retorna a los nidos en las rocas del acantilado."
"Varios albatros se pelean en el agua por las pocas presas que hay, con las alas extendidas como arcos negros y los picos vociferantes."
"Un albatros se pasea por los guijarros de la playa."
"Un albatros rebusca con su pico entre los guijarros de la playa."

Table of Albatrosses Flight
event
"Un albatros planea al viento suspendido en el aire, observando la bahía, impasible."
"Un albatros surca el cielo en dirección [if the location is Playa]al acantilado.[otherwise]a la bahía."
"Un albatros surca el cielo trazando una elegante curva contra las nubes grises."
"Un albatros acomete una racha de viento girando grácilmente en el aire."
"Un albatros asciende desde el borde del acantilado planeando. Se eleva a gran altura, y vuela hacia un lugar indeterminado."
"[one of]Un par de albatros vuelan uno al lado del otro [or]Un albatros vuela [purely at random]dejándose llevar por las corrientes de aire."

Table of Village Ambiance
event
"Un niño corretea futilmente detrás de un albatros."
"Un hombre te observa momentáneamente para agachar rápidamente la cabeza y proseguir con su trabajo."
"Un corro de mujeres remendonas quedan en silencio al observarte. Al rato continúan con su cháchara despreocupada."
"Una cabra pasa trotando y desaparece rápidamente tras una cabaña. Una niña que parecía perseguirla con un palo se queda plantada en mitad del barro mirando perpleja a un lado y a otro."
"Una cabra bala fuertemente acerca de lamentos que no puedes entender."
"Se oye la voz de una madre llamando a su hijo."
"Una mujer otea la aldea ante su cabaña. Insatisfecha por no encontrar lo que busca entra en casa cerrando con un portazo."
"Se escucha el llanto apagado de un niño desde el interior de una cabaña."
"Un hombre se acerca a otro y le pregunta algo, a lo cual el segundo responde señalando hacia la playa."
"Un hombre viene caminando desde la playa, pasa junto a ti y desaparece en el interior de una cabaña."

Table of Cliff without Storm Ambiance
event
"[if manto is visible]Una ráfaga de viento se enreda en el manto de piel de foca de Mákke casi llevándoselo.[otherwise]Una ráfaga de viento se enreda en torno a la piedra de las brujas arrastrando tras de si algo de hojarasca."
"Un albatros se acerca planeando y desaparece tras el borde del acantilado."
"Un albatros planea con el viento por encima de la piedra de las brujas, sin llegar a posarse. Al rato se deja llevar por el viento y desaparece de tu vista."
"Un albatros está aquí buscando en la nieve con el pico.[one of] Da un respingo y se aleja batiendo sus elegantes alas.[or] Impasible camina hacia el borde y se lanza por el acantilado.[stopping]"
"Una ráfaga fuerte de viento agita la hojarasca, juguetea con tus trenzas y tironea de tu vestido."
"[if the player is wearing the manto]Una ráfaga de viento helado arrecia. Te ajustas el manto de piel de foca que te mantiene caliente.[otherwise]Una ráfaga de viento atraviesa tu vestido y te deja helada de frío."

Table of Cliff within the Storm
event
"[if level is greater than ráfaga]Un vendaval se cierne sobre la piedra de las brujas amenazando con tiraros a Mákke y a ti acantilado abajo. Te aferras a la piedra de las brujas y a tu maestra para que los dioses no te la arrebaten.[otherwise]Una fuerte ráfaga de viento se enreda en torno a la piedra de las brujas empujando tu vestido con fiereza."
"Una fuerte ráfaga de viento se enreda en tu pelo y te deshace las trenzas revolviéndote todo el pelo en la cara."
"[if the player is wearing the manto]Una fuerte ráfaga de viento trata de arrebatarte el mano de piel de foca pero te aferras a él y aletea tras de ti de forma salvaje.[otherwise if the manto is part of Mákke]Una fuerte ráfaga de viento trata de arrebatar el manto de piel de foca de Mákke, pero lo sujetas con firmeza para mantener a tu maestra tapada.[otherwise if the manto is visible]Una fuerte ráfaga de viento empuja y arrastra el manto de piel de foca de Mákke.[otherwise]Una fuerte ráfaga de viento trata de tirarte por el acantilado."
"[if level is greater than vendaval]Un relámpago cruza el cielo y cae directamente sobre una de las naves negras partiendo su mástil. Pronto la nave se incendia y puedes ver pequeñas figuras negras saltando por la borda.[otherwise if level is greater than ráfaga]Un relámpago cruza el cielo e impacta en el mar, no muy lejos de las naves negras.[otherwise]El cielo gris se ilumina y un trueno suena en la distancia."
"[if level is greater than vendaval]Un rayo corta el cielo y se clava en las rocas con un chasquido ensordecedor haciéndolas saltar en mil pedazos.[otherwise if level is greater than ráfaga]Un rayo corta el cielo e impacta en el mar, cerca del acantilado.[otherwise]Sobre la montaña y la piedra de las brujas, el cielo gris se ilumina y un trueno retumba en el acantilado."
"[if level is greater than ráfaga]Una enorme ola se estrella contra las rocas arrojando agua hasta la piedra de las brujas, dejándote empapada.[otherwise]Una fuerte ola se estrella contras las rocas y la espuma asciende hasta el borde del acantilado."
"[if level is greater than vendaval]El fuerte vendaval une lluvia y olas en una ráfaga de agua salada que te cubre y te ahoga.[otherwise if level is greater than ráfaga]Una ráfaga de viento viene cargada de lluvia, nevisca y granizo, te golpea y te cala hasta los huesos.[otherwise]Una ráfaga de viento helado transporta algo de nevisca."
"[if level is greater than ráfaga]Por un momento todo parece en calma, como si el tiempo se hubiese detenido sobre la piedra de las brujas mientras todo alrededor ruge de furia de viento y agua. El sortilegio se deshace y el huracán se colapsa sobre ti. Todo se inhunda de viento, lluvia y granizo.[otherwise]El viento parece calmarse durante un momento para luego arremolinarse y soplar con fuerza en torno a la piedra de las brujas."
"Un albatros rezagado viene planeando a duras penas hasta el borde del acantilado para refugiarse de la tormenta.[if level is greater than ráfaga] Pero un rayo cae directamente sobre él y explota en una lluvia de plumas y sangre."

Table of Muertos Ambiance
event
"La marea no para de vomitar cadáveres y restos del naufragio sobre la playa."
"Un par de albatros se pelean por las vísceras de un ahogado."
"Un albatros descansa sobre el pecho de un cuerpo mientras con el pico hurga en la pulpa de los ojos."
"La brisa porta el olor a muerte, muerte fresca. Los cuerpos aún no han empezado a pudrirse."
"Un albatros desciende hasta la bahía, pero en vez de aterrizar elegantemente sobre el agua lo hace sobre un cuerpo. Picotea y desgarra la carne."
"Un albatros desciende sobre la playa, cerca de un cuerpo en el cual ya se está alimentando otro albatros. Picotea el ojo y se lo lleva volando mientras el segundo le persigue protestando."
"El cielo es un avispero de albatros, enfervecidos por la abundancia de alimento. Vuelan frenéticos y emiten silbidos agudos atronadores."
"Tres albatros picotean el mismo cuerpo mientras se chillan entre y se amenazan con las alas arqueadas."


Section 3 -  Listening

Instead of listening:
	if the location is Choza:
		if Aldea is deserted:
			say "Silencio casi absoluto.";
		otherwise:
			say "Desde el exterior te llegan los sonidos amortiguados de la vida en la aldea.";
	otherwise if the location is Playa:
		if Muertos is happening:
			say "El frenesí de los albatros es ensordecedor. Los familiares tableteos han pasado a ser graznidos y chillidos mientras se pelean por la carne muerta.";
		otherwise:
			say "La playa está solitaria a estas horas pero el viento es fuerte y el sonido de las olas rompiendo te envuelve y adormece.";
	otherwise if the location is Aldea:
		if Aldea is deserted:
			say "El silencio es sólo interrumpido por el silbido de las ráfagas de viento heladas y el murmullo cercano del mar.";
		otherwise:
			say "El murmullo de la vida en la aldea es apacible, acompañado por la musicalidad de los silbidos y tableteos de los albatros ocasionalmente interrumpido por los gritos estridentes de algún niño jugando o el balido de una cabra.";
	otherwise if the location is Sendero:
		if Aldea is deserted:
			say "El viento helado silba entre las rocas.";
		otherwise:
			say "Por el sendero del acantilado te acompaña el sonido de la actividad en la aldea y los tableteos de los albatros en el cielo.";
	otherwise if the location is Acantilado:
		if Ritual is happening:
			if the level is:
				-- calma:
					say "El viento silba fuerte. Silba entre la maleza, entre las rocas y los nidos de albatros en el acantilado.";
				-- viento:
					say "El viento silba fuerte entre las rocas del acantilado. El mar se estrella con fuerza contra la pared rocosa. Pero, extrañamente no se escucha ningún albatros. Probablemente se han puesto a resguardo de la tormenta que se avecina.";
				-- ráfaga:
					say "El viento aulla entre las rocas del acantilado. Abajo, las ráfagas de mar se estrellan contra las rocas, un sonido vertiginoso que te envuelve en oleadas.";
				-- vendaval:
					say "El viento ruge en torno a la piedra de las brujas. El sonido de la incipiente tormenta lo envuelve todo: abajo el mar tratando de derribar el acantilado. Arriba las nubes negras retumbando y la lluvia incesante.";
				-- tornado:
					say "El sonido es ensordecedor. Lo envuelve todo. El viento helado cargado de agua aulla enloquecido. El sonido del trueno como contrapunto en la melodía de la galerna. Y lejano, se percibe el eco de un conjuro antiguo. Es el sonido de tu propio canto reverberando y empapando la tormenta.";
		otherwise:
			say "El viento silba fuerte aquí arriba. Silba entre la maleza, entre las rocas y los nidos de albatros en el acantilado. Las olas baten con fuerza contra la pared rocosa. Y la canción de los albatros surca el cielo tras su estela.";
	otherwise:
		say "Este debe de ser el sonido del limbo PORQUE ESTE MENSAJE NO DEBERIA APARECER."


Chapter 7 - Test me - NOT FOR RELEASE

Test busqueda with "salir / examinar suelo / norte / norte / examinar nieve / examinar rocas"

Test soylabruja with "habla con arvet / 2 / 2 / 2 /1 /2 /2 /1 /1 /1 "

Test cogeobjetos with "e / entrar / coger cofre / abre cofre /  coger cuchillo / coger frasco / coger esponja / sal / n / n "

Test dameodre with "habla con panu / 1 / 1 / 1 "

Test prepara with "examinar makke / frotar makke / x makke / cortar ropa con cuchillo / x makke / ungir makke con aceite / x makke / cortar runa de akka con cuchillo"

Test prepara2 with "examinar makke / desnudar makke / x makke / cortar runa con cuchillo / x makke / ungir makke con aceite / x makke / cortar runa de akka con cuchillo"

Test conjura with "recitar conjuro / recitar conjuro / recitar conjuro / recitar conjuro / clavar runa con cuchillo"

Test todo with "salir / examinar suelo / norte / norte / examinar nieve / examinar rocas/ habla con arvet / 2 / 2 / 2 /1 /2 /2 /1 /1 /1 / e / entrar / abrir cofrecillo / coger cuchillo / coger frasco / coger esponja / coger cofre / sal / n / n / habla con panu / 1 / 1 / 1  / examinar makke / frotar makke / ex makke / cortar ropa con cuchillo / ex makke / ungir makke con aceite / ex makke / besar makke / cortar runa de akka con cuchillo" [
/ recitar conjuro / recitar conjuro / recitar conjuro / recitar conjuro / clavar runa con cuchillo"
]