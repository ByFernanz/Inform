"Ergot de Lima" by Caleb Wilson (in spanish)

The story headline is "Una Aventura de Texto".
The release number is 3.

The story creation year is 2014.

The story description is "Ya no queda nadie. (Bueno, casi nadie)."

Use full-length room descriptions.
[ Use American dialect. ]
[ Use serial comma. ]
Use no scoring.

Rule for constructing the status line:
	center "[location]" at row 1;
	rule succeeds.
[
Release along with an interpreter.

Release along with cover art.
]
[

For further release:
	
testeo santi

]

Include the Basic Screen Effects by Emily Short.

Section 1 - Player and Setup

Rule for deciding whether all includes scenery: it does not.

When play begins: say "[italic type]'Sea amable, lugarteniente, prepáreme un trago.[line break]La máquina está dispuesta.[line break]Tomaré un calavera verde.'[roman type][line break]"

Instead of examining the player: say "Eres el lugarteniente Musco. Sin nadie más a los que mandar, eres oficialmente el soldado de menor rango en todo St. Stellio."

Instead of smelling the player: say "No hueles muy bien."

Section 2 - Verbs

swimming is an action applying to nothing.

Understand "nada" and "bucea" as swimming.

Understand "chupa [thing]" as tasting.

Understand "canta" as singing.

singing is an action applying to nothing.

Carry out singing:
	say "Cantas unas cuantas lineas del himno de St. Stellio. Um, ¿cómo seguía?"

Carry out swimming:
	say "¿Por qué no? Saltas desde el borde del muelle. Resulta que la sarga húmeda es muy pesada. Cuando llegas al fondo de la bahía, tu cadáver es pellizcado por los cangrejos, no es que te importe."; end the story saying "AHOGADO".

Dancing is an action applying to one visible thing.

Dancing crazy is an action applying to one visible thing.

Understand "baila con [person]" as dancing.

Understand "baila con [something]" as dancing crazy.

Carry out dancing crazy:
	if the noun is the bar:
		say "Bailas en círculo alrededor de la máquina del bar, con poco efecto." instead;
	otherwise if the noun is the mazo:
		if the player does not hold the mazo:
			try taking the mazo;
		say "Sujetando el palo de croquet como un delgado acompañante de madera, das unas cuantas vueltas al muelle." instead;
	otherwise if the noun is the firstlime or the noun is the secondlime or the noun is the thirdlime:
		say "Sosteniendo la lima encima de tu cabeza, bailas unos cuantos giros majestuosos alrededor del muelle." instead;
	otherwise if the noun is the calavera verde:
		say "Sosteniendo el vaso por encima de tu cabeza, bailas unos giros majestuosos alrededor del muelle, orgulloso de cómo no has derramado ni una sóla gota." instead;
	say "Por muy divertido que pudiera parecer, no ves la manera de bailar con [the noun]."

[Understand "place [something] in/inside/into [something]" as inserting it into.]

The block attacking rule response (A) is "Todavía no estás preparado para recurrir a la violencia."

Section 3 - Stranded and Scenery

The Varado is a room. "El sol abrasa la parte superior del muelle de cemento, el agua salpica por debajo. Jeroglíficos resplandecientes inscritos en la superficie del puerto. Olores a sal, y putrefacción, y sudor, y limo. El suelo quema como una plancha.[paragraph break]El muelle termina aquí. Hacia el sur está el embarcadero. [If muelle is glary]La capital de St. Stellio (la cual es una ciudad también llamada St. Stellio) es invisible, allá, en algún lugar a través del fulgor abrasador del oeste. Hacia el norte una maraña de follaje crece directamente desde el piélago. Hacia el este está el océano Atlántico.[otherwise]La capital de St. Stellio (la cual es una ciudad también llamada St. Stellio) es claramente visible sobre las aguas hacia el oeste. Hacia el norte una maraña de follaje crece directamente desde el piélago. Hacia el este está el océano Atlántico."

Instead of going north in the Varado: say "Ese camino es una maraña impracticable de tallos y hojas, demasiado endeble para soportar tu peso."

Instead of going south in the Varado for the first time: say "La general ladra en tu dirección:

—¿No he hablado lo suficientemente claro? Cadena de mando, cariño; tomaré ese trago, ahora."

Instead of going south in the Varado for the second time: say "—No me pongas a prueba...– dice la general sonriendo de forma poco tranquilizadora."

Instead of going south in the Varado for the third time: say "La general te escupe su desprecio:

—Sabía que eras un desertor... Tienes esa mirada furtiva en los ojos.

Saca un revólver de servicio desde el interior de su uniforme y te muestra el interior cavernoso del cañón."; end the story saying "BANG".

Instead of going up in the Varado: say "Unas alas serían geniales, ¿verdad?"

Instead of going nowhere in the Varado: say "En esa dirección hay agua."

Instead of smelling the Varado: say "Huele como el trópico."

The fulgor (m) is scenery in the Varado. Understand "abrasador/luz" as the fulgor. The description is "Símbolos de luz danzantes sin sentido alguno. Estás algo precupado de que casi puedas leerlos."

Some jeroglificos (m) are scenery in the Varado. Understand "simbolos/jeroglifico" as the jeroglificos. The printed name is "jeroglíficos". The description is "No, no tienen sentido."

Instead of doing anything other than examining to the fulgor: say "Demasiado insubstancial."

The cielo (m) is scenery in the Varado. The description is "Un abismo azul ardiente."

Instead of doing anything other than examining to the cielo: say "Así no es como funciona el cielo." instead.

The agua (f) is scenery in the Varado. Understand "mar/oceano/pielago/atlantico" as the agua. The description is "El típico piélago tropical, del color de la turquesa.[if muelle is not glary] Sobre el agua hacia el oeste está la ciudad de St. Stellio."

Report touching the agua: say "El agua está tan caliente como la sangre." instead.

Instead of smelling the agua: say "Huele fértil y salada."

Instead of pushing or pulling or taking the agua: say "Eso no va a funcionar."

Instead of tasting the agua: say "Muy salada."

Instead of drinking the agua: say "Incluso los náufragos se dan cuenta de que beber agua de mar es una idea terrible.."

A thing can be glary.

The muelle is glary.

The muelle (m) is scenery in the Varado. "El muelle fue construído a toda prisa para atracar las naves de guerra, y una vez que la isla de St. Stellio fue tomada, se apresuró a desmoronarse. Ahora no queda ninguna nave. Todo el mundo se ha ido. (Bueno, casi todos)." Understand "puerto" as the muelle.

The embarcadero (m) is scenery in the Varado. The description is  "Está abandonado."

Section 4 - The General

General Livia Tudor-Adolphus is a woman in the Varado. "La General Livia Tudor-Adolphus está sentada en una enorme silla de ruedas hecha de mimbre. La luz del sol hace centellear la insignia plateada de navajas automáticas de su uniforme." Understand "tudor" and "adolphus" as General. The description is "General Livia Tudor-Adolphus es la oficial de más alto rango que ha quedado en St. Stellio. Es una delgada mujer en sus ochenta. Lleva puesto un uniforme verde oscuro. Bajo un sombrero picudo, y una peluca hecha de metal blanco modelado en la forma de unos rizos apretados, está su cara curtida y arrugada. Sus ojos son como dos esferas de hielo perfectamente formadas."

The sombrero picudo (m) is worn by General. The description is "Verde oscuro, lujoso cuero."

The peluca (f) is worn by General. The description is "Tiene que picar."

The uniforme (m) is worn by General. The description is "Sarga verde oscuro. Tú también llevas uno, sólo que sin tanta decoración. Están tan calientes como el Infierno."

The silla de ruedas (f) is scenery in the Varado. Understand "silla de" and "metal" and "mimbre" as the silla. The description is "Una monstruosidad Gótica hecha de metal y mimbre.". Instead of taking the silla: say "Está en uso." Instead of pushing the silla: say "La general te mira y paras." Instead of pulling the silla: say "La general te mira y paras."

The insignia plateada (f) is part of the uniforme. Understand "insignia de " and "navaja/automatica/navajas/automaticas/plateadas" as the insignia. The printed name is "insignia de navajas plateadas". The description is "Las navajas plateadas (automáticas) sobre las solapas de la general significan que ella estuvo aquí durante la toma de St. Stellio hace treinta años. También significa que derramó sangre. Hay rumores de que es igualmente hábil con rifle, sable, cañón y orden de ejecución con carácter retroactivo."

Instead of smelling General: say "Ella huele a pólvora y a tinta."

Carry out dancing:
	if the noun is General Livia Tudor-Adolphus, say "La general frunce el ceño: 

—Tratando de hipnotizarme, ¿eh? Eso no es bailar; Eso es retorcerse.";
	if the noun is the player, say "Das unas cuantas vueltas por el muelle, las manos al frente como si llevases un acompañante invisible."

Instead of kissing General Livia Tudor-Adolphus: say "Te acercas para un beso rápido en la mejilla, pero reculas ante la mirada helada de la general."

After asking General about "ella/general/livia/tudor/adolphus/tudor-adolphus", say "—¿Qué cómo estoy? Estoy muy sedienta. Así que, ¿cómo va esa bebida?– pregunta la General."

After asking General about "mi/musco/lugarteniente/teniente", say "—Maravilloso, absolutamente maravilloso. Un momento, ¿cual era la pregunta? Terrible, absolutamente terrible– dice."

After asking General about "st/saint/stellio", say "—Este sitio ha ido cuesta abajo, me temo– dice."

After asking General about "bebida/coctel/calavera/verde", say "—Suena fabuloso, ¿verdad? Aunque apreciaría menos hablar sobre este y más hacerlo– dice."

After asking General about "maquina/mecanica/bar/barra", say "—Entiendo que hasta un idiota podría hacerla funcionar, lugarteniente– dice. Y te mira fijamente."

After asking General about "lima/limas", say "—Debe de haber limas por aquí en alguna parte, ¿eh?"

After asking General about "agua/oceano/mar/bahía/atlantico", say "—Estoy harta de él. ¿Tú no?"

After asking General about something, say "La general parece no haberte oído. O no le ha importado."

After telling General about something, say "La general parece no haberte oído. O no le ha importado."

Section 5 - The Mechanical Bar Tender

The bar licuadora mecanico (m) is in the Varado. It is not portable. "Al lado de la general se encuentra un gran artefacto metálico con engranajes, volantes, pistones y válvulas. Lo más importante es que incluye una tolva en la parte superior, una placa en el centro y una espita cerca de la base, bajo la cual hay un vaso estriado." Understand "aparato/maquina/barra/artefacto" as the bar licuadora. The printed name is "bar licuadora mecánico". The description is "Es un 'bar licuadora mecánico' hasta la cintura de alto, importado desde casa con gran coste. Menudo desperdicio. Puedes leer la placa para ver qué ingredientes se necesitan a continuación, o meter los ingredientes en la tolva."

The tolva (f) is part of the bar licuadora. It is a container.

Instead of inserting something into the bar licuadora:
	try inserting the noun into the tolva instead.
Instead of putting something on the bar licuadora:
	try inserting the noun into the tolva instead.

The placa (f) is part of the bar licuadora. The description is "El texto, formado por letras modulares como una máquina de escribir invertida, muestra: 'Bebida: Calavera Verde. Siguiente ingrediente: 1 lima de St. Stellio pasada, entera'"

The vaso aflautado (m) is part of the bar licuadora. The description is "Está vacío."

Instead of taking the vaso: say "La general, nada contenta, echa un vistazo al vaso vacío en tu mano.

—Lo has hecho mal, ¿verdad? A propósito – te ladra. – Me apuesto lo que quieras. En mis tiempos castigabamos severamente ese tipo de voluntariosa insoburdinación. Oh, qué demonios, ¿quién de aquí me va a impedir arrancar una página de ese libro viejo?

Saca un revólver de servicio desde el interior de su uniforme y amartillandolo y apretando el gatillo te enseña su definición de 'severamente'." ; end the story saying "BANG".

The espita (f) is part of the bar licuadora. The description is "Es la parte por la cual saldrá la bebida terminada."

Section 6 - The Foliage (First Lime)

A thing can be outofreach. Instead of taking or touching or pushing or pulling a thing that is outofreach: say "Está fuera de tu alcance."

Instead of tasting something that is outofreach: say "Está fuera de tu alcance."

Instead of smelling something that is outofreach: say "Lo único que hueles es agua salada."

The follaje (m) is scenery in the Varado. Understand "arbusto/arbustos/maraña/laberinto/tallo/tallos/hojas/hoja" as the follaje. The description is "Esta maraña de arbustos crece desde el agua del final del embarcadero. En lo más profundo del laberinto de tallos y hojas divisas una calavera. Al lado de la calavera hay una espada oxidada."

Instead of smelling the follaje: say "Huele a savia y a piélago."

The calavera (f) is scenery in the Varado. It is outofreach. Understand "agujero/nasal" as the calavera. The description is "Una orquídea rosa crece desde el agujero nasal de la calavera."

The orquidea rosa (f) is scenery in the Varado. It is outofreach. The description is "Siguiendo el curso de las raices en lo más profundo de la penumbra encuentras el resto del esqueleto."

The esqueleto (m) is scenery in the Varado. It is outofreach. The description is "Un esqueleto descansa en lo más profundo de la maraña de tallos, cerca del nivel del agua. Hay una masa de raices en forma de cuenco debajo de él."

The masa de raices (f) is a container in the Varado. It is outofreach. It is scenery. Understand "cuenco/forma" as the masa de raices. The description is "Ahí abajo, cerca del agua, algunas raices han crecido en forma de cuenco."

After examining the masa de raices for the first time: say "Sentada en el hueco de las raíces hay una rechoncha lima de St. Stellio."; move the firstlime to the masa de raices.

The espada (f) is scenery in the Varado. It is outofreach. The description is "Sentado debajo de la espada oxidada hay un lagarto gordo, inmóvil como una estatua."

The lagarto (m) is scenery in the Varado. It is outofreach. The description is "El lagarto se sienta enrollado alrededor del borde de una copa de oro escamada con la mugre."

The mugre (f) is part of the copa (f). It is scenery. It is outofreach. The description is "Tras unos cuantos años en St. Stellio, todo se vuelve mugriento."

The copa (f) is scenery in the Varado. It is outofreach. The description is "Apretados dentro la copa hay un paquete de telegramas podridos."

The paquete de telegramas podridos (m) is scenery in the Varado. It is outofreach. The description is "[first time]Parece ser un paquete de telegramas relacionados con la retirada de -- lo siento, el despliegue estratégico de vuelta a casa desde -- St. Stellio... aunque, ah... hmm... está a ocho pies de distancia, cubierto de moho, con limo, las letras se retuercen y se retuercen como los gusanos que aparecen en los cubos y los charcos después de una tormenta de lluvia... [only]Qué extraño. Parpadeas. No hay nada ahí. Quizás tus ojos están fatigados por la luz del sol, y te está jugando una mala pasada."

Section 7 - The Daydream (Second Lime)

The mazo (m) is an object. The printed name  is "mazo de cróquet". Understand "mazo de croquet" as the mazo. The description is "Odias pensar de dónde habrá venido la sangre. Así que... mejor no. En vez de eso, recuerdas el cesped recién cortado en casa. En tu mente puedes ver ese césped, flotando debajo del mazo. En la distancia contemplas un seto de boj."

A thing can be dreamy. Instead of doing anything other than examining to a thing that is dreamy: say "Es sólo una ensoñación."

The sangre (f) is part of the mazo. It is dreamy. The description is "Muescas y manchas rojas ."

The cesped (m) is part of the mazo. It is dreamy. The description is "Cesped con la hierba recortada. Más allá hay un seto de boj."

The seto (m) is part of the mazo. It is dreamy. The description is "Tras el seto hay una carpa hecha de tela a rayas."

The carpa (f) is part of the mazo. It is dreamy. The description is "Rayada en rosa pálido y amarillo. Unas notas metálicas surgen de la carpa. En su interior hay un escenario."

The notas metalicas (f) are part of the mazo. They are dreamy. The description is "Es sólo un recuerdo."

Instead of listening to the notas metalicas: try examining the trompeta.

The escenario (m) is part of the mazo. It is dreamy. The description is "Sobre el escenario un trompetista practica con su instrumento. Lleva puesto un traje azul de satén."

The trompetista (m) is part of the mazo. It is a man. It is dreamy. The description is "Tras el trompetista hay una funda forrada de terciopelo."

The trompeta (f) is part of the trompetista. The description is "El trompetista está tocando una tonada marcial sincopada que hace que la guerra suene bastante estilosa."

The traje (m) is part of the mazo. It is dreamy. Understand "traje de saten" as the traje. The printed name of the traje is "traje de satén". The description is "En el bolsillo del traje de satén hay una postal con un dibujo en el frente y un mensaje secreto detrás."

The postal (f) is part of the traje. It is dreamy. Understand "dibujo" as the postal. The description is "En la parte frontal de la postal hay un grabado que representa el bombardeo de St. Stellio desde el puerto. Justo tras el bombardeo, y antes de que el polvo se posase y los fuegos se apagasen, la General Tudor-Adolphus estaría en la ciudad, cortando gargantas y sobornando a los locales para que se volviesen unos traidores.

El día después de la fiesta en el jardín fuiste desplegado, para unirte a una guerra que ya estaba ganada."

The mensaje secreto (m) is part of the postal. It is dreamy. Understand "trasera de la postal" or "parte trasera de la postal" or "detras de la postal" as the mensaje secreto. The description is "En la parte de atrás de la posta hay escrito:

'Querido Lugarteniente Musco[line break]
Creo que está usted imaginando cosas.[line break]
Este mensaje secreto,[line break]
por ejemplo,[line break]
es con toda probabilidad,[line break]
una alucina nación ción,[line break]
a menos que sólo sea un recurdo borroso.[line break]
¿Fue esta aquella infame fiesta en el jardín[line break]
en la cual contrataste a un trompetista[line break]
para mandarle una nota a la amante de tu primo[line break]
en la cual le pedías una cita[line break]
dentro del kiosko de cristal[line break]
en el centro escondido de[line break]
el jardín laberinto?'"

Does the player mean doing something to the postal: it is likely.

The funda forrada (f) is part of the mazo. It is dreamy. It is a container. Understand "funda forrada de terciopelo" as the funda.  The printed name is "funda forrada de terciopelo". The description is "Una funda negra forrada de terciopelo azul oscuro con la forma de una trompeta, aunque ligeramente más grande que una trompeta."

After examining the funda for the first time: say "Descansando sobre el terciopelo hay una hermosa lima de St. Stellio."; move the secondlime to the funda.

Section 8 - The City (Third Lime)

A thing can be distant. Instead of doing anything other than examining to something that is distant: say "Está a a media milla cruzando la bahía."

The capital (f) is scenery. It is distant. Understand "ciudad" and "st" and "stellio" and "ciudad de" as the capital. The description is "La ruinosa capital de St. Stellio. Cerca del agua está el Royal Exchange. Sobre él, las calles llenas de edificios destruidos ascienden una colina soleada."

Some edificios (m) are part of the capital. They are distant. Understand "edificio/ruina/colina" as the edificios. The description is "La colina de ruinas está casi entera cubierta por piedra blanca, rayada con negro. Cuando los colonos se dieron cuenta de que no podían mantener la ciudad la destruyeron."

Some calles (f) are part of the capital. Understand "calle/brillante/crateres/crater" as the calles. The description is "Impracticable. Incluso para caminar."

The Royal Exchange (m) is part of the capital. It is distant. The description is "Los muros del Royal Exchange son más agujeros que muro. Una brillante calle llena de cráteres sube por detrás hasta el Palacio Gubernamental."

The Palacio Gubernamental (m) is part of the capital. It is distant. The description is "Fue hermoso mientras duró (lo cual fue dos siglos y medio). Ahora es una ruina. Más allá del Palacio hay un cementerio."

The cementerio (m) is part of the capital. It is distant. The description is "En estos días el cementerio no es único en estar lleno de grandes trozos de mármol blanco, o estar lleno de cadáveres. Más arriba del cementerio, está el cenador, en la cima de la colina."

Some piedras (f) are part of the capital. Understand "marmol/blanco/trozo/trozos" as the piedras. The description is "El marmol está manchado a fuego y sangre."

The cenador (m) is part of the capital. It is distant. Understand "cima/arboleda" as the cenador. The description is "La mayoría del emparrado, flores, estructura y árboles de la cima han sido aplastados, pero un árbol de lima permanece intacto."

The arbol (m) is part of the cenador. It is distant. It is a container. Understand "arbol de lima" as the arbol. The printed name is "árbol de lima". The description is "[if thirdlime is in arbol]Hay algo que crece en la rama más alta...[otherwise]Un árbol desnudo."

Before examining the arbol for the first time, move the thirdlime to the arbol.

Section 9 - The Limes

The firstlime (f) is an object. Understand "lima" and "lima de" and "st" and "stellio" as the firstlime. The printed name is "lima de St. Stellio". The description is "[if firstlime is carried by the player]Una esfera verde, suave y untuosa al tacto. Su superficie tiene una textura de poros como una piel enferma.[otherwise]Una esfera verde del tamaño de un puño."

The secondlime (f) is an object. Understand "lima" and "lima de" and "st" and "stellio" as the secondlime. The printed name is "lima de St. Stellio". The description is "[if secondlime is carried by the player]Una esfera verde, suave y untuosa al tacto. Su superficie tiene una textura de escamas como las de una serpiente.[otherwise]Una esfera verde del tamaño de un puño."

The thirdlime (f) is an object. Understand "lima" and "lima de" and "st" and "stellio" as the thirdlime. The printed name is "lima de St. Stellio". The description is "[if thirdlime is carried by the player]Una esfera verde, suave y untuosa al tacto. Su superficie tiene una textura con costras como una piel quemada.[otherwise]Una esfera verde del tamaño de tu puño."

Instead of tasting the firstlime: say "Chupas la lima. Su piel irregular tiene un sabor amargo, con un toque de fermentación."

Instead of smelling the firstlime: say "La lima huele acre y ligeramente pasada."

Instead of tasting the secondlime: say "Chupas la lima. Su piel irregular tiene un sabor amargo, con un toque de  licuescencia agria."

Instead of smelling the secondlime: say "La lima huele acre y ligeramente pasada."

Instead of tasting the thirdlime: say "Chupas la lima. Su piel irregular tiene un sabor amargo, con un toque de moho."

Instead of smelling the thirdlime: say "La lima huele acre y ligeramente pasada."

Instead of eating the firstlime: say "Muerdes la lima.

Chispas verdes se elevan formando una bóveda. Un flujo esmeralda ardiente. Están formando una calavera. Esto sabe a veneno. Esa es tu calavera."; end the story saying "ERGOTISMO".

Instead of eating the secondlime: say "Muerdes la lima.

Tu boca se llena de abejas verdes. 
Your mouth fills with green bees. Trece colmenas de avispas viridiscentes estallan cada una de su propio poro rosado. Tu cabeza se desmorona en polvo verde. No, no lo hace."; end the story saying "ERGOTISMO".

Instead of eating the thirdlime: say "Muerdes la lima.

Una canción musgosa resuena en una gruta vacía. Esa es tu propia calavera, resonando con sirenas que gotean cantando. Gritas el estribillo. El estribillo te grita."; end the story saying "ERGOTISMO".

Section 10 - The Making of the Drink

After inserting firstlime into the tolva: say "Metes la lima en la tolva. La máquina se tambalea por un momento, estremeciéndose como si quisiera aceite. Las letras de la placa se deshacen y se revuelven, luego se juntan de nuevo para mostrar el siguiente ingrediente.

La general grita:

-¡Continúa! ¡Tengo una sed terrible! Si no me preparas pronto mi bebida tendré que beberme tu sangre. Ja, Ja.

Y emite una terrible y estilizada risa colonial.

Te das cuenta de que hay algo apoyado al lado de la silla de ruedas: un mazo de croquet salpicado de sangre."; remove firstlime from play; move mazo to Varado.

After inserting secondlime into the tolva: say "Metes otra lima en la tolva. La máquina se tambalea por un momento, estremeciéndoe como si tuviese un orgasmo. Las letras de la placa se deshacen y se revuelven, luego se juntan de nuevo para mostrar el siguiente ingrediente.

La general sonríe:

—¿Va progresando, eh? No me decepcione, lugarteniente.

El sol ha cambiado ligeramente, alterando el brillo sobre el agua, de forma que ahora puedes ver la ciudad abandonada de St. Stellio."; remove secondlime from play; now the muelle is not glary; move capital to Varado.

After inserting the thirdlime into the tolva: say "Metes otra lima en la tolva. La máquina se sacude un momento, estremeciéndose como si tus ojos y oídos fuesen agujereados por alfileres ardientes. Las letras de la placa crujen como cráneos aplastados bajo los bordes de hierro de un juggernaut rodante. Las letras enmarañadas se engarzan aún más, deletreando aglomeraciones vacilantes sin sentido, cambian tan rápido que parpadean como un rayo sellado dentro de una vela de cera.

Un líquido verde oscuro sale de la espita llenando el vaso aflautado.

La general mira la bebida con avidez:

—Tráelo aquí, cariño. No aguantaré más dilación."; remove vaso from play; remove thirdlime from play; move calavera verde to Varado.

After inserting the mazo into the tolva: say "Las astillas vuelan desde las junturas, y un débil líquido marrón lechoso --cuajado de sueños del hogar-- llena el vaso.

La general frunce el ceño al verlo, entonces saca un revolver de servicio de su solapa, te apunta con él a la cabeza. Su dedo se tensa sobre el gatillo. Aparentemente la bebida no se ha hecho conforme a su satisfacción. (Para ser honestos, tiene un aspecto espantoso.)"; end the story saying "BANG".

Section 11 - The calavera verde

The calavera verde (m) is an object. Understand "coctel" and "bebida" and "vaso" as the calavera verde. The description is "Un cóctel de aspecto venenoso y color verde moho.."

Does the player mean drinking the calavera verde: it is very likely.

Instead of smelling the calavera verde: say "Un olor fermentado y efervescente surge del cóctel."

Instead of tasting the calavera verde: try drinking the calavera verde.

Instead of drinking the calavera verde: say "Te bebes el calavera verde. Es la destilación de la amargura.

Hay una garra verde desgarrándote las entrañas. Tienes una fiebre blanca en los huesos. Hay algo erróneo en el horizonte, si es que el horizonte puede retorcerse como una serpiente rota.

Entonces, por encima, el silbido de las balas de mortero cayendo. Una erra el muelle, lanzando el agua hacia arriba con forma de iglesia invertida. Otra erra el embarcadero, y otra, y otra. Pronto una no errará.

La general ríe a carcajadas, y amartilla su revolver."; end the story saying "BOOM".

Instead of giving the calavera verde to general: say "La mano marchita de la general acepta el vaso.

Su rostro se inclina hacia ti, una cara moteada de verde con colonias de moho. Abre su boca, y las esporas flotan hacia arriba fluyendo desde debajo de su lengua.

Desde algún lugar de las ruinas de St. Stellio surge un grito. Podría ser una risa grande y frenética. O podrían ser las olas al estrellarse contra la roca. De cualquier manera, tiene sangre manchada de verde goteando de su nariz."; end the story saying "TODO SON HONGOS".

Section 12 - Out of World

Getting info is an action out of world. Understand "acerca de" and "info" and "ayuda" and "creditos" as getting info.

Report getting info: say "[bold type]Lime Ergot[roman type] fue originariamente escrita y programada por Caleb Wilson, bajo el pseudónimo de Rust Blight, en el transcurso de tres horas en Octubre de 2014 para la ECTOCOMP. La versión 2 fue mejorada y de alguna forma expandida, y la actual, versión 3, fue mejorada muy ligeramente y actualizada a la última versión de Inform. Además ha sido traducida al español por Ruber Eaglenest. Gracias a Seth Kaplan, Neil Butters, y Duncan Bowsman por el testeo. Y a no-nonsense, Johan Paz, Comely y Santiago Eximeno, por la revisión en español. Envía un email al autor a [italic type]rotifer@gmail.com[roman type]."