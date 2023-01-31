"En la Fria Soledad" by Johan Paz

Include Spanish by Sebastian Arg.
Include Basic Screen Effects Sp by Emily Short.
Include Frase De Tabla by Mel Hython.
Include Epistemology by Eric Eve.
[Include Conversacion Por Clave by El Enano Malauva.]
Include Aki Basic by Johan Paz.
Include Aki Decorations by Johan Paz.
Include Aki Conversations by Johan Paz.


Use full-length room descriptions.

[Bibliográfica]
The story headline is "Una historia sobre lo que somos".
The story genre is "Ciencia Ficción".
The release number is 0.
The story description is "Comienza en la playa helada de San Petersburgo, antes del inicio de todo, o tal vez no.".
The story creation year is 2011.

[Esta primera parte incluye:

	- Todas las clases nuevas
	- Modificaciones de las generalidades
	- Listas de personas de la aventura con sus detalles
]

Part 1 - Generalidades

Chapter 1 - Clases nuevas o modificaciones

[Cosas que se pueden lanzar]
A lanzable is a kind of thing.

[Cosas que quedan fatal y que cambio a mano]

[SALUDAR CON LA MANO, que horror, estos ingleses...]
Understand "saluda a kryss" or "saluda" or "saludar a kryss" or "saludar" as waving hands when the location is Playa.

Instead of waving hands during EnLaPlaya:
	if Kryss is visible
	begin;
		say "Saludas a [o]Kryss[x] con la mano, a lo que ella pone una cara divertida. Probablemente ha sido ridículo.";
	otherwise;
		say "Desde luego no es momento de saludar.";
	end if.

Section 1 - Modificaciones para las localizaciones

The AKI room description heading rule is not listed in the carry out looking rules.

Section 2 - Modificaciones a todas las cosas

[Epistimology no ayuda con esto, ya que lo hace antes de la primera descripción]
[Si algo ha dado su descripción una vez ya está examinado]
A thing can be examined. A thing is usually not examined.

After examining anything:
	now the noun is examined.

Section 3 - Nuevas acciones

Fucking is an action applying to one thing.

Understand "folla [someone]" or "follarse a [someone]" or "follate a [someone]" or "hacer el amor a [someone]" or "hazle el amor a [someone]" as fucking.

OneThrowing is an action applying to one thing.

Understand "lanza [a thing]" as OneThrowing.

Instead of onethrowing:
	try dropping the noun.

Chapter 2 - Personae del relato

Section 1 - Ella

Kryss Modrzejewska is a woman. 
The keyword of Kryss is "Kryss".
The description of Kryss is "[if not examined]Es tan hermosa, que apenas puedo dejar de mirarla. Viste las [o]ropas[x] que nos ha asignado la Agencia Espacial, [gorro de piel], [anorak] abierto, [forro polar] y [pantalones grises] con bien visibles [o]insignias[x] del proyecto Vanguardia, las cuales apenas suavizan las [o]curvas[x] de su hermoso y altivo [o]cuerpo[x]. [otherwise]Es tan hermosa. Aún puedo recordar la primera vez que la ví allí en la agencia.[end if]".


[Estado de Kryss]
Kryss can be k-mirando or k-lanzando or k-recogiendo.

[ Partes]
ManosDeKryss is part of Kryss. The printed name of ManosDeKryss is "manos".
The description of ManosDeKryss is "Sus hermosas manos".

Understand "mano" or "manos" or "manos de kryss" as ManosDeKryss when ManosDeKryss is visible.

PeloDeKryss is part of Kryss.  The printed name of PeloDeKryss is "pelo".
The description of PeloDeKryss is "[if not examined]Es del color de la miel oscura de mi granja en Jaén. Se escapa de su [o]gorro[x] de piel de zorro polar con esa hermosa manera que tiene su cabello de estar armoniosamente despeinado.[otherwise]Su color es como de la miel. Una miel oscura y de intenso sabor, profunda como profundos son sus [o]ojos[x].[end if]"

Understand "pelo" or "pelo de kryss"  or "pelos" or "cabellera" or "cabello" as PeloDeKryss when PeloDeKryss is visible.

OjosDeKryss is part of Kryss. The printed name of OjosDeKryss is "ojos".
The description of OjosDeKryss is "Ella está morena tras las dos semanas de prácticas de supervivencia en Siberia. Su mirada, así enmarcada por su bronceada piel, y el monótono y gris horizonte es de un color más esmeralda que nunca. No puedo cansarme de mirar esos ojos".

Understand "ojos" or "ojo" or "mirada" as OjosDeKryss when OjosDeKryss is visible.

CuerpoDeKryss is part of Kryss. The printed name of CuerpoDeKryss is "cuerpo".
The description of CuerpoDeKryss is "Kryss no es precisamente una mujer exuberante, a fin de cuentas es su mente lo primero que te atrajo de ella, pero aún así...".

Understand "cuerpo" or "curvas" or "cuerpo de kryss" as CuerpoDeKryss when CuerpoDeKryss is visible.

Commanding a thing that is part of Kryss during EnLaPlaya:
	try examining the noun.

[Esta parte es el relato en sí mismo con:

	- Un capítulo por cada escena
	- Sección de reglas de cambio de escena
	- Sección de detalles de los personajes y objetos en la escena
	- Localizaciones
	- Reglas de jugador
	- Reglas de PNJs
]

Part 2 - Aventura

Chapter 0 - Inicio de la aventura

Section 1 - Reglas de cambio de escena y temporales

ContadorDeLanzamientos is a number that varies.

[Empieza el juego]
When play begins:
	say line break;
	center "En la fría soledad";
	say line break;
	say line break;
	say line break;
	say line break;
	center "Un relato de";
	center "Johan Paz";
	say line break;
	center "Agosto 2007 - Abril 2011";
	say line break;
	say line break;
	[now TextoDecoradoDefecto is "No le veo sentido a hacer a eso";]
   	wait for any key;
   	clear the screen;
	now Kryss is k-mirando;
	now ContadorDeLanzamientos is 0;
	kryss dice miedo in two turns from now;
	now the description of the player is "Hace un frío espantoso. Pero ni lo sientes tras vuestro viaje a Siberia.";
	now topic keyword highlighting is true;
	now the style of topic-word is keyword-link.
	


[Kryss habla primera vez]
At the time when kryss dice miedo:
	say "Kryss dice: 'Da un poco de miedo es... tan [i]gris[\i]'.";	
	change the conversation to Table of ConversacionKryss with kryss;
	choose the row 1 from Table of ConversacionKryss;
	now state entry is true;
	kryss lanza bola de nieve in two turns from now.


[Empieza a lanzar bolas]
At the time when kryss lanza bola de nieve:
	if kryss is k-mirando:
		say "De forma inesperada tienes la cara helada y llena de [o]nieve[x]. [o]Kryss[x] ríe y corre, agachándose para coger más nieve y prepararse para una lucha enconada. No, una lucha no, una guerra en toda regla.";
		now Kryss is k-recogiendo.

Chapter 1 - En la playa

Section 1 - Reglas de cambio de escena e iniciación

EnLaPlaya is a scene. EnLaPlaya begins when play begins.

EnLaPlaya ends when the player is not in the Playa.

When EnLaPlaya ends:
	now Kryss is k-mirando;
	move anorak to Playa;
	move forro to Playa;
	move pantalones to Playa;

Section 2 - Objetos y personajes

[Quienes están]
Kryss is in Playa. 

The player is in Playa.

[Cosas de Kryss]
Kryss wears an gorro de piel.

[Cosas del jugador]
The player wears an anorak, a forro polar and some pantalones grises.

[Detalles de la ropa]
The description of anorak is "Está realizado en una muy resistente tela blanca en su exterior y de apretados pelos sinténticos también blancos en su interior. La única nota de color es la [o]insignia[x] del proyecto Vanguardia sobre el hombro.".

The description of forro polar is "Tejido blanco con la silueta de la insignia del proyecto Vanguardia en gris sobre el pecho. No está construído para ser una prenda atractiva, pero a pesar de estar diseñada para ser simplemente cómoda y a pesar de que Kryss no es precisamente lo que se podría calificar como una mujer exuberante, no puedo dejar mirar lo bien que le queda puesto.".

The description of pantalones grises is "En su interior están realizados con la misma tela que el forro polar, pero el exterior es muy diferente. Aunque aparentemente parece algo vulgar, una especie de plástico, en realidad se trata de un tejido de última generación que mezcla circuitos, nanocolectores solares y resistencias, asegurando al completo bienestar del que lo viste bajo un amplio rango de circunstancias climatológicas.".

The description of gorro is "Abundante pelaje de zorro polar. Destaca frente al resto de la ropa oficial, mucho más espartana. A penas puede contener el pelo de Kryss.".

A bola de nieve is a lanzable. The description of the bola de nieve is "Un poco de nieve moldeada de forma más o menos redonda.".

[Conversación de Kryss]
Table of ConversacionKryss
key			state		phrase				response
"gris"		false		"Yo lo encuentro hermoso. El mar se confunde con el cielo y es imposible saber si lo que se ve está lejos o cerca."	 "Es cierto. Es como si mirásemos lo [i]ilimitado[\i]"
"ilimitado"	false		"No sé si parece ilimitado. A veces me parece estar delante de una pared gris que pudiese tocar con la mano."	"Lo entiendo. Como si no fuese real ni lo uno ni lo otro."

Table of Mapping Topic Conversation (continued)
topic						key 
"lo gris" or "el gris"			"gris" 
"lo ilimitado"				"ilimitado"

Section 3 - Lugares

Playa is a room.
The printed name of Playa is "Playa helada al norte de San Petersburgo". 
The description of Playa is "[if visited]El [o]mar[x] helado cubierto de [o]nieve[x] se extiende frente a mi como un manto blanco hasta donde alcanza la vista. A mi espalda la árida [o]estepa[x] desaparece tras el [o]viento[x] blanco y apenas logro dislumbrar la silueta del [o]centro[x] de entrenamiento.[otherwise]La [o]ventisca[x] lo empaña todo con [o]motas[x] blancas. Ventisca blanca sobre un helado [o]mar[x] de color blanco bajo un [o]cielo[x] más blanco que [o]gris[x] al norte de San Petersburgo.[end if]".
The decoration of Playa is Table of DecoradoPlaya.


[Descripciones detalladas de la playa]

[Sinónimos de la decoración]
Understand "insignias" or "insignia" or "círculo" or "triángulo" as "[insignia]" when the location is Playa.
Understand "mar" or "manto" or "pared" or "helado" as "[mar]" when the location is Playa.
Understand "gris" as "[mar]" when the location is Playa and there is no conversation started.
Understand "ventisca" or "motas" or "viento" as "[ventisca]" when the location is Playa.
Understand "centro" or "entrenamiento" or "centro de entrenamiento" or "silueta" as "[centro]" when the location is Playa.

[Decoración]
Table of DecoradoPlaya
topic		description		genre
"[ventisca]"	"No es más que [o]viento[x]. Viento que levanta la [o]nieve[x] del [o]suelo[x] y que arrastra en remolinos la que cae desde el [o]cielo[x] haciendo indistinguible la una de la otra. Tan sólo viento, viento intenso pero que parece débil en comparación con el que habéis sufrido en Siberia. [paragraph break]Y, sin embargo... tal vez sea la proximidad del lanzamiento, o tal vez estar a solas con ella tras todo este tiempo de entrenamiento... sea lo que sea, esta [o ]ventisca[x] parece tener una cualidad especial, como si... como si lo cubriese todo ocultando lo que realmente debería verse, o tal vez sentirse"		F
"[mar]"		"El [o]mar[x] helado hasta donde alcanza la vista se confunde en un mismo tono [o]gris[x] blanquecino con el cielo. Resulta imposible saber dónde empieza uno y acaba el otro, dando unas veces la sensación de que se está mirando al verdadero [o]Infinito[x] y otras veces una pared gris o blanca que esté ahí mismo, al alcance de la mano. No siendo real ni lo uno ni lo otro"
"hielo"		"Lo has visto azul en el mar y en los glaciares de Siberia. Pero ahora es todo blanco con notas escasas de gris y ceniza. Hielo. Desde aquí el mundo parece estar hecho solo de él"		M
"[insignia]"	"Un simple triángulo gris impulsado hacia el cielo figurado de estrellas grises en fondo blanco limitado por un círculo gris. Un poco triste para un proyecto tan importante, pero coherente con la frialdad de la nave y la estética espartana que han aportado los rusos"
"ropa" or "ropas"		"Casi toda la [o]ropa[x] que llevamos es blanca y gris. El color de casi todas las cosas de la misión"	F
"[centro]"	"A lo lejos puedes ver la silueta del centro de entrenamiento, pero es sólamente una lejana sombra entre las [o]motas[x] de nieve"
"estepa"		"No es realmente estepa. Tras vuestro periodo en Siberia ahora sí que sabes lo que significa esa palabra. Pero no deja de ser un lugar frío, helado, tan diferente a tus tierras natales en Andalucía."	M
"infinito"		"Aquí sobre el mar helado no es más que una visión del [o]gris[x] interminable"	M

[La nieve es un caso especial, porque debe ser posible cogerla]
LaNieve is a scenery and in Playa. The description of LaNieve is "Blanca, fría, esponjosa. La conoces ya demasiado bien, pura contradicción, blanda y agradable al tacto al principio y dolorosa si se la trata sin respeto y sin suficiente temor.".

Commanding LaNieve when LaNieve is examined:
	try taking LaNieve.

Understand "nieve" or "nieves" or "bola" as LaNieve when the bola de nieve is not visible.

[Cielo y suelo]
Instead of examining a direction during EnLaPlaya:
	if the noun is down
	begin;
		say "Parece increíble que un poco de nieve sobre un poco de hielo pueda sosternernos, pero eso es lo que tenemos bajo los pies.";
	otherwise;
		if the noun is up
		begin;
			say "Es tan diferente del cielo que conoces de Andalucía... Este simplemente no parece la misma cosa, esto es sólo un lienzo gris en parte sombrío, en parte luminoso.";
		otherwise;
			if the noun is east
			begin;
				say "A lo lejos puedes ver la silueta del centro de entrenamiento, pero es sólamente una lejana sombra entre las [o]motas[x] de [o]nieve[x].";
			end if;
		end if;
	end if.

Section 4 - Reglas del jugador

[El punto común de unirse en el hielo]
To hundirse en el hielo:
	say line break;
	say "Estás seguro. Eres feliz. Ella sonríe al tiempo que aceleras en una carrera hacia ella, ¿sabrá lo que deseas? Sí, sí que lo sabe, es el momento de tu felicidad. [paragraph break]Entonces un extraño sonido se escucha en tu felicidad. Algo se quiebra. Miras a suelo y ves como el mar se abre a tus pies. Sin entender que es lo que está ocurriendo te deslizas hacia el agua helada. Es como caer por un burdo tobogán de nieve y de hielo directamente a un absurdo agujero que no debería estar ahí. [paragraph break]Escuchas un grito sobre tí y la sombra de una mano que intenta agarrarte.";
	pausar juego;
	say "Primero ves su cara blanca de pánico. Después, su cara tras el blanco hielo.[paragraph break]Y luego sólo está el mar. El mar blanco sobre mí.";
	pausar juego;
	say "No puedes sentir o ver nada.[paragraph break]Ni siquiera estas seguro de que exista algo que sentir o que ver.[paragraph break]¿Quién eres?[paragraph break]¿Qué eres?[paragraph break]¿Hay un 'tú' acaso?";
	pausar juego;
	move the player to CabinaBlanca1.
	

[Coger nieve del suelo]
Instead of taking LaNieve during EnLaPlaya:
	if the bola de nieve is not carried
	begin;
		say "Coges un poco de [o]nieve[x], apelmazándola ligeramente con las manos y dándole forma de una bola de nieve lista para ser lanzada.";
		move the bola de nieve to the player;
	otherwise;
		say "Ya tienes una buena bola de [o]nieve[x], mejor veamos como queda en su cara polaca antes de coger más.";
	end if.

Instead of taking the bola de nieve when the bola de nieve is carried:
	say "Ya tienes una buena [o]bola[x] de nieve, mejor veamos como queda en su cara polaca antes de coger más.".
	
Commanding bola when the bola is carried and Kryss is not k-mirando during EnLaPlaya:
	try throwing the bola at Kryss.

Instead of onethrowing bola during EnLaPlaya:
	try throwing bola at Kryss.

[Lanzar bola de nieve a Kryss]
Instead of throwing the bola de nieve at Kryss during EnLaPlaya:
	remove the bola de nieve from play;
	increase ContadorDeLanzamientos by 1;
	say "[una frase de Table of BolaContraKryss].";
	if Kryss is k-mirando:
		say "[line break]Ella se sorprende de tu arrebato juguetón, pero sonríe y parece que se prepara para contestarte adecuadamente.";
		now Kryss is k-recogiendo;
	if ContadorDeLanzamientos is greater than 5:
		say "[line break]Una risa tonta te domina. La miras con restos de nieve aquí y allá. Está más hermosa que nunca antes. Y es la mujer con la que deseas vivir. No, no tiene que ver con que vais tan lejos, ni tan solos, no es eso. Realmente es Ella.  Así que avanzas decidido hacia Kryss. La nieve puede esperar.";
		hundirse en el hielo.

[Mensajes aleatorios con cosas que pueden pasar al lanzar bolas a Kryss]
Table of BolaContraKryss
Peso 		Texto
 30		"Ni te aproximas a acertarle, está claro que esto no es lo tuyo"
 30		"La bola de nieve golpea su anorak, de una forma aparatosa, pero probablemente ni lo ha notado"
 20		"La bola pasa rozando su cabeza y cae sobre el mar helado"
 10		"Le alcanzas en uno de sus brazos, lo que la hace trastabillar, pero muy poco, ella sonríe y se burla de tí"
  5		"Le alcanzas en el gorro de piel, confundiéndose la nieve con el blanco pelaje de zorro"
  3		"Le alcanzas de lleno en el pecho, está claro que no le ha gustado mucho, pero se limita a quitarse la nieve del forro polar"
  2		"Le alcanzas directamente en la cara, ella tropieza y cae a la nieve. Por un momento temes que se haya hecho daño, pero cuando se aparta la nieve de la cara está sonriendo más que antes y se levanta presurosa dispuesta a tomar venganza"

[Intentos de interacción con Kryss]

[BESAR]
Instead of kissing Kryss the first time during EnLaPlaya:
	say "Das unos pasos decidido a besarla, pero al final te detienes y solo alcanzas a decir: '[o]Kryss[x], yo... yo necesito que sepas que...' pero no consigues continuar.".

Instead of kissing Kryss the second time during EnLaPlaya:
	say "Deseas tanto esos labios de [o]polaca[x]. Pero, ¿qué desea ella?".

Instead of kissing Kryss the third time during EnLaPlaya:
	say "'¡Qué diablos!', piensas tiene que desearlo tanto como tú, así que avanzas decidido hacia ella.";
	hundirse en el hielo.

[CORRER HACIA ELLA]
Understand "acercarse a [someone]" or "acercáte  a [someone]" or "acercarte a [kryss]" as entering.
Instead of entering kryss during EnLaPlaya:
	say "Quieres tenerla entre tus brazos ¡ahora!. Así que empiezas a caminar decididamente hacia ella.";
	hundirse en el hielo.

[Coger]
Instead of taking kryss during EnLaPlaya:
	try touching kryss.

[ACARICIAR]
Understand "acariciar a [someone]" or "acaricia a [someone]" as touching.

Instead of touching Kryss the first time during EnLaPlaya:
	say "Miras tus manos. Deseas estrecharla entre tus brazos, acariciarla, besarla y seguir y seguir. ¿Pero qué querrá ella?".

Instead of touching Kryss the second time during EnLaPlaya:
	say "Das un paso hacia ella convencido de que... pero, ¿y si te estás engañanado?".

Instead of touching Kryss the third time during EnLaPlaya:
	say "Su [o]cuerpo[x], su piel dorada por la estanacia en Siberia. La necesitas, así que avanzas decidido hacia ella.";
	hundirse en el hielo.

[DAR COSAS]
Instead of giving anything to Kryss during EnLaPlaya:
	say "Por más que quisieras darle algo a [o]Kryss[x] necesitas todo esto para no congelarte, y tampoco es un regalo muy adecuado.".

[Hablar con ella no funciona o casi....]
Instead of telling Kryss about something during EnLaPlaya, try asking Kryss about it.
Instead of answering Kryss that something during EnLaPlaya, try asking Kryss about it.
Instead of asking Kryss for something during EnLaPlaya, try asking Kryss about it.

[CUALQUIER OTRA COSA]
Instead of doing anything other than examining or metacommanding or asking Kryss about during EnLaPlaya:
	say "No es el momento de hacer eso.".

[Nada de dejar la ropa]
Instead of taking off anything during EnLaPlaya:
	say "Hace demasiado frío para pensar en quitarse [o]ropa[x].".

[Escuchar en la playa]
Instead of listening during EnLaPlaya:
	say "[una frase de Table of EscucharPlaya].".

[Tabla de escuchar en la playa]
Table of EscucharPlaya
Peso	Texto
3	"Solo se escucha el [o]viento[x]. Un viento gélido que empaña no sólo la vista con miles de [o]motas[x] de [o]nieve[x], sino también el oído con su voz de viejo airado y su forma de helarte las orejas"
2	"Se escucha el [o]viento[x]. Pero también tu propio nerviosismo, claro que esto segundo está más bien en tu propia cabeza"
2	"Puedes escuchar la [o]ventisca[x] y un palpitar de tu corazón en tu pecho"
1	"Tras el rugido del [o]viento[x], y tu propio nerviosismo puedes escuchar un lejano temblor, un crujido tal vez, debe ser el [o]mar[x] que choca contra sí mismo en este extraño estado de congelación"

[Oler en la playa]
Instead of listening during EnLaPlaya:
	say "En tu tierra el mar huele a [o]mar[x], aquí la playa huele a montaña.".

[Tabla aleatoria para tartamudear]
Table of Tartamudear
Peso	Texto
1	"Intentas hablar pero tan solo te sale: '[o]Kryss[x]... yo..'"
1	"Muchas palabras cruzan por tu cabeza, pero sólo llegas a decir: 'Yo... quisiese decir..'"
1	"Quisieses decir exactamente lo que sientes, pero no llegas ni a abrir la boca"
1	"La miras y por un momento sus increíbles ojos se cruzan con los tuyos y todo lo que ibas a decir se desvanece de tu mente"



Section 5 - Reglas de PNJ 

[Lanzando bolas]
Every turn during EnLaPlaya:
	if Kryss is k-recogiendo
	begin;
		say "[una frase de Table of KryssRecogeBola].";
		now Kryss is k-lanzando;
	otherwise if Kryss is k-lanzando;
		say "[una frase de Table of KryssLanzaBola].";
		now Kryss is k-recogiendo;
	end if.

[Tablas aleatorias de recoger y lanzar]
Table of KryssRecogeBola
Peso		Texto
 40		"[o]Kryss[x] se agacha sin dejar de vigilarte y coge una pequeña bola de [o]nieve[x]"
 35		"[o]Kryss[x] primero se burla mostrando la lengua. Y luego se burla aún más cogiendo [o]nieve[x] dejando claro quién tiene la situación controlada"
 25 		"[o]Kryss[x] amontona un buen montón de [o]nieve[x] y lo levanta con dos [o]manos[x] para hacer la bola más grande que hayas visto"

Table of KryssLanzaBola
Peso		Texto
 33		"[o]Kryss[x] lanza una bola de [o]nieve[x], pero se queda demasiado corta"
 33		"[o]Kryss[x] te lanza una bola que te acierta en el hombro"
 33 		"[o]Kryss[x] te acierta en plena cara, una vez más"



Chapter 3 - Primer blanco

Section 1 - Reglas de cambio de escena y temporales

[Contadores]
CInventario is a number that varies.
CConsciencia is a number that varies.
CEscuchar is a number that varies.

[Reglas]
PrimerBlanco is a scene. PrimerBlanco begins when EnLaPlaya Ends.

PrimerBlanco ends when the player is not in the CabinaBlanca1.

When PrimerBlanco begins:
	now the description of the player is "No sientes nada, no ves nada, no hueles nada. Es como si nada existiese, o tal vez como si tu no existieses. ¿Existes? ¿Qué es existir?.";
	now CInventario is 0;
	now CEscuchar is 0;
	now CConsciencia is 0.


Section 2 - Lugares

The CabinaBlanca1 is a room.
The printed name of CabinaBlanca1 is "Tan sólo blanco".
The description of CabinaBlanca1 is "Blanco. No ves nada, no sientes nada. Sólo hay blanco".
The decoration of CabinaBlanca1 is Table of DecoradoBlanco1.


[Descripciones detalladas del primer blanco]

[Sinónimos de la decoración]
Understand "dedos" or "dedo" or "manos" or "mano" or "cabeza" or "cuello" or "espalda" or "cuerpo" as "[parte-cuerpo]" when the location is CabinaBlanca1.

[Decoración]
Table of DecoradoBlanco1
topic		descripcion	genre
"[parte-cuerpo]"	"[if CConsciencia is less than 5]Simplemente no puedes sentir nada de eso, ni ver nada de eso, si es que existen y siguen... contigo[otherwise]No es que no puedas sentir, nada de nada de tu cuerpo, algo... pero todo es tan confuso...[end if]"	M

Section 3 - Objetos y personajes

The Blanco1 is a scenery in CabinaBlanca1. 
The printed name of Blanco1 is "blanco".
The description of Blanco1 is "[if CConsciencia is 8]No es un blanco uniforme, por alguna razón la palabra nicho, o... ¿cápsula?... vienen a tu mente.[otherwise]Es... blanco. O tal vez no sea nada. ¿Puede algo ser 'blanco' cuando es todo lo que hay? ¿No será simplemente 'todo'? Y sin embargo, algo en mi interior, algo absurdamente equivocado tal vez, me dice que es 'blanco'.[end if]".

Understand "blanco" or "blanca" or "nicho" or "boveda" as Blanco1 when Blanco1 is visible.


Section 4 - Reglas del jugador

[Textos generales según el nivel de consciencia]
To explorar estado en primera cabina:
	increase CConsciencia by 1;
	if CConsciencia is 1,
		say "Ni siquiera sientes tus manos. ¿Tendrás manos? ¿Qué son las manos? Estás casi seguro de que antes tenías manos. ¿Las tenías? Casi seguro que las tenías. ¿Pero que son las manos? No lo sabes. Aunque ahora... crees recordar que tenían dedos, fuesen lo que fuesen los dedos, las manos tenían dedos. ¿Dónde están tus dedos? ¿Por qué no sientes tus dedos? Te estás empezando a enfadar por no sentir los jodidos dedos... aunque te apetece más llorar por no saber que es eso que tanto deseas sentir.";
	if CConsciencia is 2,
		say "Sabes que antes deseabas llorar, a veces. Y crees recordar que antes también deseabas besar. Pero, ¿qué era besar? Ya no lo recuerdas, tal vez nunca sentiste nada de todo eso en realidad.";
	if CConsciencia is 3,
		say "¡Si al menos sintieses los dedos! ¿Por qué es eso importante? Recuerdas a alguien... ¿qué es alguien?... no lo sabes, pero aún así recuerdas a 'alguien' diciendo: '¡Tenéis que estar atentos por si dejáis de sentir los dedos!'. Era importante no dejar de sentir los dedos. Era muy importante. ¿Por qué no sientes los dedos! Algo ha ido muy mal, espantosamente mal.";
	if CConsciencia is 4,
		say "Había 'alguien' que decía lo de los dedos. Y ahora recuerdas algo más, había más 'alguien', más personas, ¿cómo tú?... Otras personas... pero... intentas recordar y solo recuerdas más blanco, más cosas blancas. Sí, cosas, las cosas son algo más que el blanco, aunque sean blancas. Estás pensando cosas absurdas. ¡No! ¡No es absurdo! Las cosas se pueden tocar con los dedos y este espantoso blanco no se puede tocar. Seguro que si tuvieses dedos podrías tocar las cosas blancas... pero nada ocurre, nada cambia, sólo hay blanco y más blanco, algo ha salido espantosamente mal y ahora no tendrás ningún dedo.";
	if CConsciencia is 5,
		say "Un dolor...[line break][line break]Un dolor te recorre. Es intenso, punzante, como una laceración. Es... arriba. ¿Arriba? ¿Qué es arriba? Es en la cabeza. Te duele... te duele la cabeza. ¡Te duele la cabeza! Duele espantosamente, es genial. Te duele la cabeza, y con la cabeza se pueden hacer muchas cosas, creo. Se podía oler, escuchar... se pueden hacer tantas cosas con la cabeza...";
	if CConsciencia is 6,
		say "El dolor se agudiza y se extiende por... ¿tu cuerpo? Crees que eso ha sido el cuello, la espalda... la espalda duele como si hubieses estado paralizado muchísimo tiempo en la misma posición. Aunque... ¿cómo puedes saber eso en realidad cuando ni siquiera tienes dedos?";
	if CConsciencia is 7,
		say "Uff...[line break][line break]Eso... eso... crees que eso ha sido respirar. Has sentido frío. Crees que ha bajado el frío por tu garganta, ha entrado por tu helada nariz, ha rellenado tus pulmones insensibilizados y finalmente alzado tu pecho. Partes de tí están regresando. ¿Regresando? Es más lógico pensar que siempre han estado estado ahí. Tu nariz, tu garganta, tu pecho, siempre ahí pero sin poder sentirlos hasta ahora. Sí, eso parece tener más sentido, aunque no sabes realmente por qué tiene más sentido. ¿Y tus dedos? ¿Dónde estás?";
	if CConsciencia is 8,
		say "Algo en este blanco... sí... no todo es un blanco uniforme... hay algo familiar ahora en este blanco, algo que recuerdas. Es como... como una bóveda muy pequeña, como... como un nicho, un frío nicho... eso es lo que es.";
	if CConsciencia is 9
	begin;
		say "Llega más dolor... es tu piel, tu piel y una infinidad de pequeños pinchazos, de minúsculas agujas inexistentes. Ahora... ahora los sientes, son tus dedos, ¡tienes dedos de nuevo!. Tus dedos han regresado al tiempo que el conocimiento, el recuerdo... ya sabes dónde estás. Esto es la cápsula.[line break][line break]Eso es lo que es, la cápsula de hibernación. Esto es un lento y doloroso despertar. Cierro los ojos intentando serenarme...";
		pausar juego;
		say "...pero cuando los abres él está allí, mirándote directamente.[line break][line break]Él, Mijail Shilovsky, el experto en hibernación, desde el exterior de la cápsula te mira como si le decepcionara un poco que siguieses vivo.";
		pausar juego;
		move player to Laboratorio1;
	end if.

[Cosas que se niegan]
Instead of taking inventory during PrimerBlanco:
	increase CInventario by 1;
	if CInventario is 1,
		say "Intentas comprobar si llevas algo, pero no hay nada que comprobar, nada que ver, nada que palpar...[line break][line break]";
	if CInventario is greater than 1,
		say "No hay nada que buscar, mejor no seguir buscando lo que no hay...[line break][line break]";
	explorar estado en primera cabina.

[Tocar el blanco]
Instead of touching or taking Blanco1 during PrimerBlanco:
	say "Intentas alcanzar el blanco con las manos, pero... nada cambia. No sientes nada.[line break][line break]";
	explorar estado en primera cabina.

[Tocarte a tí mismo]
Instead of touching yourself during PrimerBlanco:
	say "Desesperadamente intentas mover tus manos, buscar otras partes de tu cuerpo, pero... no consigues nada... o al menos nada que puedas sentir realmente.[line break][line break]";
	explorar estado en primera cabina.

[Escuchar]
Instead of listening during PrimerBlanco:
	if CConsciencia is less than 5
	begin;
		say "Intentas aguzar tu oído, si es que lo tienes... pero no hay nada, ningún sonido en este blanco inmutable.[line break][line break]";
	otherwise;
		if CEscuchar is 0,
			say "Nada. No escuchas nada... ¿o tal vez sí? Hay... sí hay un rumor... es tan liviano, tan remoto... tal vez sólo sea una ilusión.";
		if CEscuchar is 1,
			say "Ahí está el rumor, sí, ahí sigue. Si es que realmente existe, tal vez sólo te parece escuchar un rumor porque deseas escuchar algo, cualquier cosa. Pero no... ahora puedes escucharlo claramente es el sonido de un ¿motor?, o tal vez una bomba, una bomba que bombea... ¡sí! ¡bomba, bombéame mis dedos, sácame de este blanco!";
		if CEscuchar is 2,
			say "Te detienes a escuchar el bombeo... ¿no será tu corazón? No, no crees, recuerdas que el corazón latía, no bombeaba... Tu corazón, ¿dónde estará tu corazón? ¿Junto a tus desaparecidos dedos tal vez?";
		if CEscuchar is greater than 2,
			say "No hay nada más que escuchar más allá del bombeo distante, apagado y regular... casi tan triste como el inmutable blanco...";
		say line break;
		increase CEscuchar by 1;
	end if;
	explorar estado en primera cabina.

Understand "respirar" or "respira" or "recordar" or "recuerda" as exiting when the location is CabinaBlanca1.

[Negar todo lo demás]
Instead of doing anything other than examining or taking inventory or touching or listening or looking during PrimerBlanco:
	say "Deseas hacerlo... pero no va bien... es todo tan confuso...[line break][line break]";
	explorar estado en primera cabina.

Section 5 - Reglas de PNJ

[NO HAY PNJs en este escena]

Chapter 4 - Laboratorio 1

Section 1 - Reglas de cambio de escena y temporales

PrimerLaboratorio is a scene. PrimerLaboratorio begins when PrimerBlanco Ends.

PrimerLaboratorio ends when the player is not in the Laboratorio1.

When PrimerLaboratorio begins:
	now the description of the player is "Estoy firmemente agarrado por las abrazaderas de seguridad en la cabina de entrenamiento. No es una posición agradable.";
	start conversation Table of ConversacionMijail with Mijail about "sueltame".

[Every turn during PrimerLaboratorio:
	choose row with a id of 7 in the Table of ConversacionMijail;
	if estado entry is 1
	begin;
		say "Intentas detenerlo, alzar tus manos e impedir que cierre la cápsula, pero tus manos están frías, inertes y atrapadas por las abrazaderas de la cápsula.[paragraph break]Y justo antes de cerrar dice: 'Tranquilo Peter, te sacaré pronto de ahí y volveremos a hablar'.[paragraph break]Sientes los temidos pinchazos en tu piel. Muy pronto llega el mareo y aunque es imposible crees sentir cómo tu sangre se retira de tu cuerpo y cómo tu consciencia  se aleja de tí, se escapa hacia alguna clase de dispositivo de almacenamiento temporal a través de los nanobots injertados en tu cerebro. Es como si se te escapase la vida de entre tus propios dedos fríos e inertes, como si te la robasen para colocarla en una vulgar nevera, dejando de tí sólo un absurdo blanco. Cierras los ojos lentamente, o eso crees, presa de la frustación, pero no encuentras la amable oscuridad... sino tan sólo un espantoso blanco.";
		pausar juego;
		move the player to CabinaBlanca2;
	end if.]

Section 2 - Lugares

Laboratorio1 is a room.
The printed name of Laboratorio1 is "Sala de hibernación en el Cosmódromo de Plesetsk".
The description of Laboratorio1 is "Apenas se puede ver nada desde dentro de la cápsula de hibernación de entrenamiento, excepto a la cara del siempre molesto Mijail y algo de las pantallas de los ordenadores de control.".
The decoration of Laboratorio1 is Table of DecoradoLaboratorio1.


[Sinónimos de la decoración]
Understand "dedos" or "dedo" or "manos" or "mano" or "cabeza" or "cuello" or "espalda" or "cuerpo" as "[parte-cuerpo]" when the location is Laboratorio1.

[Decoración]
Table of DecoradoLaboratorio1
topic		descripcion
"[parte-cuerpo]"	"¿Qué más da? Lo importante es completar este absurdo interrogatorio y acabar de una jodida vez con esto"
"capsula"	"Es auténtica cápsula de hibernación, como las que llevaremos en la misión. Se supone que es cómoda, pero a mi siempre me duele todo el puto cuerpo tras usarla y desde luego es lo más soso que se haya lanzado al espacio desde que ejecutaron a Laika en un Sputnik. Los rusos siempre igual de detallistas..."


Section 3 - Objetos y personajes

Mijail Shilovsky is a man.
Mijail is in Laboratorio1.
[The tablaDeConversacion of Mijail is Table of ConversacionMijail.]
The description of Mijail is "Cuando escuchaste por primera vez que Mijail era un 'calvo mamón', pensaste que era alguna clase de exageración, a fin de cuentas lo estaba diciendo un español, pero ahora que lo conoces lo suficiente sabes que la verdad es que la mejor manera de describir a Mijail sería decir que es un 'puto calvo mamón'.".

[The dialogoVacio of Mijail is "Piensas en hablar sobre eso a Mijail pero en su cara puedes ver que no es eso lo que está esperando. ¡Qué tipo más insoportable!".]

[Todo a la misma forma de hablar]
Instead of telling Mijail about something during PrimerLaboratorio, try asking Mijail about it.
Instead of answering Mijail that something during PrimerLaboratorio, try asking Mijail about it.
Instead of asking Mijail for something during PrimerLaboratorio, try asking Mijail about it.

[Conversación de Mijail]
Table of ConversacionMijail
key				state		phrase				response
"sueltame"		false		"Estoy confuso..."		"Es normal. ¿Cómo te [i]sientes[\i]?"
"sientes"		false		"Dolorido"	"No te muevas. No sería buena idea. ¿[i]Quién[\i] eres?"
"quien"			false		"¿Quién diablos voy a ser, mamón?"	"Buena respuesta, es evidente que sigues siendo tú mismo. ¿Has tenido alguna clase de [i]sueño[\i] o [i]alucinación[\i] durante la [i]hibernación[\i]?"
"sueno"			false		"Yo... creo que... había una playa, y creo que estaba ella, el mar estaba helado y recuerdo el frío.."	"¿Ella? ¿Quién? ¿[i]Kryss[\i] Modrzejewska tal vez? ¿Kryss Modrzejewska en una playa helada de San Petersburgo?"
"kryss"			false		"Sí, pero... ¿cómo sabes..."	"Esto es muy interesante. De acuerdo, hemos de repetirlo"
"hibernacion"	false		"Ha sido... frustrante y doloroso todo el despertar. Por momentos, era... era como estar muerto en vida y ni siquiera saberlo. Era..."	"Te acostumbrarás, para eso estamos aquí. Pero no te desvíes, ¿has tenido un [i]sueño[\i] antes? Durante la hibernación quiero decir"

Table of Mapping Topic Conversation (continued)
topic										key 
"sentir" or "como me siento" or "sentimientos"	"sientes" 
"quién" or "quién soy" or "quien soy" or "quien eres" or "quién eres" or "identidad" or "mi identidad" or "yo" or "mi"	"quien"
"sueño" or "alucinación" or "alucinacion"		"sueno"
"hibernación"								"hibernacion"

Section 4 - Reglas del jugador

[Nada aún]

Section 5 - Reglas de PNJ

[Ninguna regla especial]


Chapter 3 - Segundo blanco

Section 1 - Reglas de cambio de escena y temporales

[Contadores]
Cturnos is a number that varies.

[Reglas]
SegundoBlanco is a scene. SegundoBlanco begins when PrimerLaboratorio Ends.

SegundoBlanco ends when the player is not in the CabinaBlanca2.

When SegundoBlanco begins:
	now the description of the player is "No sientes nada, no ves nada, no hueles nada. Es como si nada existiese, o tal vez como si tu no existieses. ¿Existes? ¿Qué es existir?.";
	now Cturnos is 0.

[Evolución rápida cada turno]
Every turn during SegundoBlanco:
	say "[Cturnos]";
	increase Cturnos by 1;
	if Cturnos is 2
	begin;
		now the printed name of CabinaBlanca2 is "Un confuso blanco que parece acolchado";
		now the description of CabinaBlanca2 is "Es... es... casi puedes recordarlo. Tiene como.. como un acolchado blanco y lo que podrían ser unas luces florescentes.";
	end if;
	if Cturnos is 4
	begin;
		now the printed name of CabinaBlanca2 is "Una cabina de hibernación";
		now the description of CabinaBlanca2 is "Es blanca, brillante, diseñada para ser acogedora. Ahora te parece aterradora.";
	end if;
[...]


Section 2 - Lugares

The CabinaBlanca2 is a room.
The printed name of CabinaBlanca2 is "Tan sólo blanco".
The description of CabinaBlanca2 is "Blanco. No ves nada, no sientes nada. Sólo hay blanco".
The decoration of CabinaBlanca2 is Table of DecoradoBlanco2.


[Descripciones detalladas del primer blanco]

[Sinónimos de la decoración]
Understand "dedos" or "dedo" or "manos" or "mano" or "cabeza" or "cuello" or "espalda" or "cuerpo" as "[parte-cuerpo]" when the location is CabinaBlanca1.

[Decoración]
Table of DecoradoBlanco2
topic		descripcion
"[parte-cuerpo]"	"[if CConsciencia is less than 5]Simplemente no puedes sentir nada de eso, ni ver nada de eso, si es que existen y siguen... contigo[otherwise]No es que no puedas sentir, nada de nada de tu cuerpo, algo... pero todo es tan confuso...[end if]"

Section 3 - Objetos y personajes

The Blanco2 is a scenery in CabinaBlanca2. 
The printed name of Blanco2 is "blanco".
The description of Blanco2 is "[if CConsciencia is 8]No es un blanco uniforme, por alguna razón la palabra nicho, o... ¿cápsula?... vienen a tu mente.[otherwise]Es... blanco. O tal vez no sea nada. ¿Puede algo ser 'blanco' cuando es todo lo que hay? ¿No será simplemente 'todo'? Y sin embargo, algo en mi interior, algo absurdamente equivocado tal vez, me dice que es 'blanco'.[end if]".

Understand "blanco" or "blanca" or "nicho" or "boveda" as Blanco2 when Blanco2 is visible.


Section 4 - Reglas del jugador


[Cosas que se niegan]
Instead of taking inventory during SegundoBlanco:
	increase CInventario by 1;
	if CInventario is 1,
		say "Intentas comprobar si llevas algo, pero no hay nada que comprobar, nada que ver, nada que palpar...[line break][line break]";
	if CInventario is greater than 1,
		say "No hay nada que buscar, mejor no seguir buscando lo que no hay...[line break][line break]";
	explorar estado en primera cabina.

[Tocar el blanco]
Instead of touching or taking Blanco1 during SegundoBlanco:
	say "Intentas alcanzar el blanco con las manos, pero... nada cambia. No sientes nada.[line break][line break]";
	explorar estado en primera cabina.

[Tocarte a tí mismo]
Instead of touching yourself during SegundoBlanco:
	say "Desesperadamente intentas mover tus manos, buscar otras partes de tu cuerpo, pero... no consigues nada... o al menos nada que puedas sentir realmente.[line break][line break]";
	explorar estado en primera cabina.

[Escuchar]
Instead of listening during SegundoBlanco:
	if CConsciencia is less than 5
	begin;
		say "Intentas aguzar tu oído, si es que lo tienes... pero no hay nada, ningún sonido en este blanco inmutable.[line break][line break]";
	otherwise;
		if CEscuchar is 0,
			say "Nada. No escuchas nada... ¿o tal vez sí? Hay... sí hay un rumor... es tan liviano, tan remoto... tal vez sólo sea una ilusión.";
		if CEscuchar is 1,
			say "Ahí está el rumor, sí, ahí sigue. Si es que realmente existe, tal vez sólo te parece escuchar un rumor porque deseas escuchar algo, cualquier cosa. Pero no... ahora puedes escucharlo claramente es el sonido de un ¿motor?, o tal vez una bomba, una bomba que bombea... ¡sí! ¡bomba, bombéame mis dedos, sácame de este blanco!";
		if CEscuchar is 2,
			say "Te detienes a escuchar el bombeo... ¿no será tu corazón? No, no crees, recuerdas que el corazón latía, no bombeaba... Tu corazón, ¿dónde estará tu corazón? ¿Junto a tus desaparecidos dedos tal vez?";
		if CEscuchar is greater than 2,
			say "No hay nada más que escuchar más allá del bombeo distante, apagado y regular... casi tan triste como el inmutable blanco...";
		say line break;
		increase CEscuchar by 1;
	end if;
	explorar estado en primera cabina.

Understand "respirar" or "respira" as exiting when the location is CabinaBlanca2.

[Negar todo lo demás]
Instead of doing anything other than examining or taking inventory or touching or listening or looking during SegundoBlanco:
	say "Deseas hacerlo, pero simplemente no lo logras, no sabes ni cómo intentarlo...[line break][line break]";
	explorar estado en primera cabina.

Section 5 - Reglas de PNJ

[NO HAY PNJs en este escena]

