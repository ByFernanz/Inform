"Prisionero de la tormenta" by Ruber Eaglenest (in spanish)

The story headline is "Una huida desesperada".
The release number is 1

The story creation year is 2017.

The story description is "Perseguido y buscado como uno de los fugitivos más escurridizos de todo el sistema solar, fuiste atrapado y llevado a una de las cárceles de mayor seguridad en todo el universo: la prisión de la tormenta. Rodeada de desierto y pantanos, con una policía implacable, está situada, precisamente, en las afueras de tu ciudad natal: una mancha fronteriza abrasada por el sol, en mitad de ninguna parte. Pero una vez más has logrado fugarte."

Use full-length room descriptions.
[ Use serial comma. ]
Use no scoring.

Rule for constructing the status line:
	center "[location]" at row 1;
	rule succeeds.

[Release along with an interpreter.
Release along with cover art.]

Include the Basic Screen Effects by Emily Short.
Include Quip-Based Conversation Sp by Michael Martin.

Part 1 - El prisionero y setup

Rule for deciding whether all includes scenery: it does not.

The grammatical gender of a thing is usually masculine gender.

parser error internal rule response (A) is "No conozco ese verbo."
[The parser error internal rule response (N) is "No conozco ese verbo o nombre.".]


When play begins, display the boxed quotation
	"Como un espectro encadenado
	crucé el mercado, huyendo del sol.
	Oí que labios desalmados
	pusieron precio a tu corazón. --

	-- Tormenta de Arena, Radio Futura"

Instead of examining the player during Huir por las Alcantarillas: say "Tienes un aspecto atroz. Pantalón raído y camisa de trabajo de manga larga. Y apestas, aunque todo a tu alrededor apesta en estos momentos."

Instead of examining the player during Cruzar el Mercado: say "¡Te estás quemando bajo el sol!"

Instead of smelling the player during Huir por las Alcantarillas: say "Apestas, aunque todo a tu alrededor apesta en estos momentos."

Instead of smelling the player during Cruzar el mercado, say "¡No hay aire que respirar!".

Part 2 - Verbos

Understand "avanza" as advancing. Understand "adelante" or "ir hacia adelante" as advancing.

Understand "avanza hacia [something]" as entering.

Advancing is an action applying to nothing.

Carry out advancing:
	say "No ves manera de avanzar."
	
Understand "retrocede" as retreating. Understand "atras" or "ir atras" or "ir hacia atras" as retreating.

Retreating is an action applying to nothing.

Carry out retreating:
	say "Dadas las circunstancias, no hay vuelta atrás."



Part 3 - Alcantarillas

Section 1 - La región de las alcantarillas y huyendo por ellas

Huir por las Alcantarillas is a scene. Huir por las Alcantarillas begins when play begins.

A thing can be outofreach. Instead of taking or touching or pushing or pulling a thing that is outofreach: say "Está lejos."

Instead of tasting something that is outofreach: say "Está lejos."

Instead of smelling something that is outofreach: say "Lo único que hueles es el hedor a tu alrededor."


The Alcantarillas is a region. The Huyendo por las alcantarillas, En mitad del túnel and Final de las alcantarillas are in the Alcantarillas.

Instead of going nowhere in the Alcantarillas: say "No sabes en qué dirección está el norte, el sur, o el oeste, sólo puedes ir hacia adelante o volver atrás."

Huyendo por las alcantarillas is a room. "Las paredes se juntan con el techo abovedado. Rezuman limo, musgo y hongos. El fango ora te llega por los tobillos ora por las rodillas y todo huele de forma terriblemente espantosa. Y la penumbra no es tan densa como para evitarte ver todos los detalles desagradables. Hacia atrás está la vuelta a los pantanos y con ellos los trabajos forzados y la prisión. No los ves allá atrás, pero los policías con sus perros rastreadores no deben de andar muy lejos. Hacia adelante el túnel continúa y continúa."

Instead of advancing in the Huyendo por las alcantarillas: move the player to En mitad del túnel.


La pared is a backdrop in the Alcantarillas. Understand "tunel/alcantarillas/paredes/alcantarilla" as the pared. "Las paredes están construídas de antiguos ladrillos de adobe. Rezuman limo y están cubiertas por musgo y hongos aquí y allá."

El limo is a backdrop in the Alcantarillas. Understand "hongos/musgo" as the limo. "Una sustancia verde gelatinosa que supura a través de las paredes, gotea acumulándose en el suelo en charcos informes de los cuales brotan hongos de diverso tamaño."

El fango is a backdrop in the Alcantarillas. Understand "suelo/agua/aguas/residuales/lodo" as the fango. "Las aguas residuales de la ciudad viajan por las alcantarillas hasta el pantano. Tú sigues la dirección inversa. Es un riachuelo pestilente, más lodo negro que agua sucia. Emite un hedor que lo impregna todo, se impregna a tu pelo, se impregna a tu piel y bloquea tus fosas nasales."

Instead of going anywhere in the Alcantarillas: say "No sé dónde está el norte, o el sur, o por donde se pone el sol, lo que sí está claro es que más adelante está la salida de estos túneles."


Section 2 - En mitad del túnel

En mitad del túnel is a room. "La penumbra es menor aquí. Una rejilla anegada por la arena al final de una chimenea en el techo, que deja pasar algo de luz. El túnel continúa y continúa durante decenas de metros, sin ningún cambio de dirección, húmedo y apestoso, inmutable. Aunque a lo lejos se divisa el final." 

Un pajaro herido is an animal in the En mitad del túnel. "—¡Crak, craaak!– un pájaro con las alas heridas agoniza en el fango." The description is "No sabes si es un cuervo de alas negras, o es que está cubierto completamente de lodo."

Instead of doing anything other than examining with the pajaro herido:
	say "—¡Craaaak! –El pájaro bate las alas en un esfuerzo desesperado. Grazna un último quejido y deja de moverse.";
	remove the pajaro herido from play;
	move the pajaro muerto to the location.
	
Un pajaro muerto is a thing. "Hay un pájaro muerto en el fango.". Instead of doing anything other than taking with the pajaro muerto, say "No se mueve."

Instead of taking the pajaro muerto, say "Es sólo un pájaro muerto en el fango."

Una chimenea is scenery in En mitad del túnel. The description is "Una abertura cilíndrica que va desde la bóveda hasta la superficie. Acaba en una rejilla." It is outofreach.

Una rejilla is scenery in En mitad del túnel. It is outofreach.

After examining the rejilla for the first time, say "Salvo que está anegada, de arena que cae en un fino hilo como en un reloj de arena, formando un montón que se mezcla con el fango."

La arena is scenery in En mitad del túnel. The description is "Arena del desierto, allí arriba. Cae de forma contínua por la rejilla formando un montón que se hunde en el fango." Understand "monton" as the arena.

Instead of taking or touching or pushing or pulling the arena: say "La fina arena se escapa entre tus dedos."

Instead of advancing in the En mitad del túnel: move the player to Final de las alcantarillas.

Section 3 -  Final del túnel

Final de las alcantarillas is a room. "El túnel termina aquí, en una sección cuadrada de la cual asciende una escalerilla metálica hacia la superficie."

Maddock is a man in Final de las alcantarillas. "[if Final de las alcantarillas is unvisited]En un receso de la pared hay sentado un ser andrajoso. Un hombre, o un despojo. Quemado por el sol, sucio pero de gesto constantemente feliz de ojos vidriosos rodeados de una maraña de pelo y barba de semanas, o meses.[otherwise]Maddock está aquí, tomando el fresco y disfrutando de la humedad de las alcantarillas." Understand "ser/despojo/hombre/tipo/miserable" as Maddock. The description is "Es Maddock,  un viejo conocido. Un ser ruin que empeora a cada año que pasa. Pantalones vaqueros tan raídos que ahora son cortos. Camisa amarillenta de vieja y por la suciedad, y tirantes. Una cara curtida por el sol llena de picaduras, viruelas y ampollas; al igual que el resto de su piel. Y encima de todo ello unos ojos vidriosos en permanente alegría, Tiene una profusa mata de pelo y barba completamente enmarañadas. Además ha montado un pequeño campamento a su alrededor. Te mira de forma divertida. Y su olor es insoportable."

The greeting of Maddock is hola. The litany of Maddock is the Table of Maddock Conversation.

Table of Quip Texts (continued)
quip	quiptext 
hola	"El olor te asalta implacable. Corta la respiración y escuece en los ojos. Parecía imposible que algo en el mundo pudiese oler peor que las alcantarillas o que tu mismo, pero aquí está, lo tienes delante."
quehaces	"—¡Maddock! ¿Qué haces aquí abajo? – preguntas sorprendido al ver un viejo conocido en este sitio.[paragraph break]
—¿Qué voy a hacer? Estar fresquito hombre. Ahí arriba hace 45 grados a la sombra, y en la plaza el sol achicharra a los incautos. ¿Has visto alguna vez ejecutar a alguno en la picota? Se churrascan como pollos asados, je, je, jeee.– rie el miserable dejando escapar el aire por su boca desdentada. –Además, aquí hay comida, ¿ves?– Añade mientras sacude delante de si una rata muerta empalada en un gancho."
salir	"—Tengo que seguir. – dices mirando atrás preocupado.[paragraph break]
—¿Vas a salir ahí arriba en pleno mediodía? ¿Es que no me has oído? ¡Ahí arriba se está a más de 50 grados a pleno sol! – te grita por primera vez sorprendido."
Isabelita	"—Tengo que encontrar a Isabelita. ¿Sabes dónde está?– preguntas.[paragraph break]
—Sí hombre, no tiene pérdida, la encontrarás en 'La luna ardiente'...– responde y este hecho parece divertirle mucho."
burdel	"—¡En el burdel! –Tomas a ese miserable por las raidas solapas.[paragraph break]
—¡Muah, ja, ja, jaaaa!– Este rie como un poseso. —Sí. Dicen que es casi tan popular como la sintética Hadaly. ¡Muah, ja, ja, jaaaggghrrj![paragraph break]
Comienzas a estrangularle."
matar	"—Te voy a matar.– gritas.[paragraph break]
—¡Espera! ¡Muah, ja, ja! Espera.– dice sin que la cara de diversión le cambie."
silence	"[if the player is irritated]'Pasa de ese miserable cabrón' piensas. 'Tengo que salir de aquí.'[otherwise]'Pasa de ese miserable' piensas."

Table of Maddock Conversation
prompt					response		enabled
"'¿Qué haces aquí abajo?'"					quehaces		1
"'Tengo que salir de aquí.'"					salir		0
"'Tengo que encontrar a Isabelita.'"					Isabelita		0
"'¡En el burdel!'"					burdel		0
"'¡Te voy a matar!'"					matar		0
"Decir nada."					silence		1

After quipping when the current quip is silence:
	enable the silence quip;
	terminate the conversation.

After quipping when the current quip is quehaces, enable the salir quip.

After quipping when the current quip is salir, enable the Isabelita quip.

After quipping when the current quip is Isabelita, enable the Burdel quip.

After quipping when the current quip is burdel:
	now the player is irritated;
	enable the matar quip;
	enable the silence quip.
	
After quipping when the current quip is matar:
	try attacking Maddock;
	terminate the conversation.

	
A person can be confident or irritated. The player is confident. 

Instead of attacking Maddock when the player is irritated:
	disable the silence quip;
	now the player is confident;
	say "Levantas el puño dispuesto a partirle los pocos dientes que le quedan, pero su dedo te detiene, señala hacia el fondo del túnel:[paragraph break]
—¡Pero, oooh, oh, jo, jo! Más vale que te des prisa, sino no llegarás a hacer cola.– Señala divertido hacia el fondo del tunel. Allí se ven haces de linterna, se escuchan pasos en los charcos, gritos y ladridos. Es la policía. Están muy cerca."

Las escalerillas metalicas (f) is below Salida de las alcantarillas and above Final de las alcantarillas. The escalerillas metalicas is an open door and scenery. The escalerillas metalicas is not openable.  Understand "escalera/escaleras" as the escalerillas metalicas. The printed name is "escalerillas metálicas".

Instead of climbing the escalerillas: 
	try entering the noun. 

Section 4 - Escalerillas

Salida de las alcantarillas is a room. "[if unvisited]Trepas como una exhalación las escalerillas metálicas hasta llegar a lo más alto. Y el aire cambia. [end if][if the tapa is closed]La tapa de la alcantarilla irradia un calor abrasador que mantiene la humedad alejada.[otherwise]La tapa está medio desplazada dejando pasar el sol abrasador que desgarra y evapora la humedad que proviene de abajo. Tú permaneces a refugio en la sombra debajo de la tapa de la alcantarilla."

[ El cuerpo humano sostiene apollas y quemaduras de segundo grado a 55º al bajo el sol.
Info: https://www.nist.gov/el/fire-research-division-73300/firegov-fire-service/fire-dynamics]

Un rayo de luz is fixed in place in Salida de las alcantarillas. "Un rayo de luz cae verticalmente a través de un agujero en la tapa, calentando el aire a su paso." The description is "Cada vez que toca tu piel te quema, literalmente. Lo evitas." Instead of doing anything other than examining with the rayo de luz, try examining the rayo de luz.

La tapa metálica is up of Salida and down of Plaza del mercado. Understand "alcantarilla" or "tapa de alcantarilla" as the tapa. The description is "Separa un infierno de otro." The tapa is a door. The tapa is scenery.

Instead of touching the tapa, say "Quema." Instead of taking the tapa, say "[if location is Salida]No puedes desde aquí.[otherwise]Pesa demasiado, quema demasiado y no la necesitas."

After opening the tapa for the first time:
	say "Empujas la pesada alcantarilla y rasgas el velo de la oscuridad. Sólo lo justo para poder sacar la cabeza. Al infierno. El sol literalmente quema la piel. Aguantando la quemazón, oteas la plaza del mercado: desierta. Te refugias en la sombra bajo la tapa de la alcantarilla y sopesas tus opciones. No hay señales de la policía. La plaza amurallada tiene sólo dos salidas. Hacia un lado, a unos cincuenta metros, está la tentadora sombra de los portalillos. Si uno corre lo suficiente, podría llegar a esta sin llegar a tostarse mucho. Hacia el otro lado, por donde el desierto invadió la ciudad, la muralla ha sido vencida por la arena, dejando una abertura por la cual se llega a las afueras de la ciudad y al desierto. Un suicidio si no se encontrar sombra y agua, aunque seguro que la policía no te seguiría hasta allí.";
	remove the rayo from play.
	
Instead of pushing the tapa, try opening the tapa.

Instead of going arriba in Salida de las alcantarillas:
	if the tapa is closed:
		try opening the tapa;
	otherwise:
		move the player to La plaza, without printing a room description;
		
Instead of exiting, try going up.

Instead of closing the tapa when the tapa is open, say "No hay vuelta atrás, sólo queda salir al sol abrasador."

Huir por las alcantarillas ends when La plaza del mercado is visited.


Part 4 - Cruzar el mercado

Cruzar el Mercado is a scene. "Empujas la pesada alcantarilla a un lado, sales al exterior, el sol te golpea y un fulgor abrasador blanco y amarillo te ciega por completo. Te quema la cara, el pelo, la nuca. Instintivamente te llevas la mano a la frente para proteger los ojos y notas como los rayos ultravioletas queman tu piel poco a poco. La completa ausencia de aire fresco o humedad supone un fuerte golpe en la cabeza que te vacía los pulmones. Respirar cuesta tanto que empiezas a jadear sin control. Tu cabeza te arde tanto que marea. Debes moverte."

Cruzar el Mercado begins when Huir por las alcantarillas ends.

Instead of going nowhere in the Exterior: say "No sabes en qué dirección está el norte, el sur, o el oeste. El sol abrasador lo llena todo."

Exterior is a region. La plaza del mercado, HaciaPortalillos, HaciaDesierto are in the Exterior.

Section 1 - La plaza del mercado

La plaza del mercado is a room. "Es un infierno blanco por arriba, el sol hace arder el aire y se come todo el color alrededor; y amarillo por abajo, la arena del desierto hace tiempo que invadió la ciudad. Un infierno abrasador que te quema la piel y los pulmones. La plaza está en su mayor parte delimitada por los muros de los edificios colindantes. La sombra de los portalillos están hacia un lado a unos cincuenta metros. Y hacia el lado contrario el muro, aunque más cerca, la rotura en el muro deja entrar la arena del desierto."

Instead of going down from La plaza del mercado, say "No hay vuelta atrás."

Instead of advancing in Plaza del mercado, say "Avanzar, sí, ¿pero hacia dónde? El sol lo abrasa todo y hay dos posibles vías de escape: correr hacia la sombra de los portalillos, o correr hacia el agujero en el muro."

Instead of pushing the player, try advancing.

Section 2 - Dos salidas

[Hacia los portalillos.]

Some portalillos (m) are a backdrop. It is in La plaza del mercado and HaciaPortalillos. Understand "sombra" as the portalillos.

Instead of entering the portalillos:
	if the player is in Plaza del mercado:
		move the player to HaciaPortalillos;
	otherwise:
		say "Corres hacia los portalillos." 

[Hacia el desierto.]

The abertura (f) are a backdrop. It is in La plaza del mercado and HaciaDesierto. Understand "agujero/rotura/muro/desierto" as the abertura.


Section 3 - Hacia los portalillos

HaciaPortalillos is a room. "[if unvisited]Como un espectro encadenado, crucé el mercado huyendo del sol. Noté cómo el sol me quemaba el pelo, la nuca, y la mano que a duras penas me protegía la cara. Cambié de mano mientras gritaba de dolor.[otherwise]Estás parado en tierra de nadie mientras el sol te mata poco a poco.[end if]Los portalillos están aún muy lejos." The printed name of HaciaPortalillos is "Plaza del mercado".


Section 4 - Hacia el desierto


Part 5 - La picota


Part 6 - Cruzar el desierto


Part 7 - Llegada a la prisión



Part 8 - Vacunación



Part 9 - Prisionero de la Tormenta



Part 10 Tests - Not for release

Test crawler with "avanza / avanza / avanza / sube / sube / sube"
