"En sus ojos" by Hamintoth

Include Basic Screen Effects Sp by Emily Short.
Include Status Line Removal by Emily Short.
Include Simple Graphical Window by Emily Short.
Include Inline Hyperlinks by Daniel Stelzer.

[Use maximum indexed text length of at least 2000. 
Use dynamic memory allocation of at least 16384. ]

Use no scoring.
Use undo prevention. 

Release along with an interpreter.

Part 0 - Utilidades

Chapter 0 - Multimedia

Include (-  
 [ MyRedrawGraphicsWindowsUpRight cur_pic result graph_width graph_height 
		img_width img_height w_offset h_offset w_total h_total;

	if (FollowRulebook( (+glulx picture selection rules+) ) ) { cur_pic = ResourceIDsOfFigures-->(+ internally selected picture +); }   
	if (cur_pic == 0) rtrue;

      if (gg_picwin) {  

	result = glk_window_get_size(gg_picwin, gg_arguments, gg_arguments+WORDSIZE);
             	graph_width  = gg_arguments-->0;
             	graph_height = gg_arguments-->1;

	result = glk_image_get_info( cur_pic, gg_arguments,  gg_arguments+WORDSIZE);
	img_width  = gg_arguments-->0;
	img_height = gg_arguments-->1;

	w_total = img_width;
	h_total = img_height;

	if (graph_height - h_total < 0) !	if the image won't fit, find the scaling factor
	{
		w_total = (graph_height * w_total)/h_total;
		h_total = graph_height;

	}
	
	w_offset = (graph_width - w_total); if (w_offset < 0) w_offset = 0;
	h_offset = 0;

	glk_image_draw_scaled(gg_picwin, cur_pic, w_offset, h_offset, w_total, h_total); 
	}
 ]; 
 -).
 
 This is the up right scaled drawing rule:
	blank window to graphics background color;
	draw up right scaled image in graphics window.

To draw up right scaled image in graphics window:
	(- MyRedrawGraphicsWindowsUpRight(); -)
	
Include (-  
 [ SelectWindowPixelCount cur_pic result graph_width graph_height 
		img_width img_height w_offset h_offset w_total h_total;
		
	if (gg_picwin) {  
		result = glk_window_get_size(gg_picwin, gg_arguments, gg_arguments+WORDSIZE);
			graph_width  = gg_arguments-->0;
			graph_height = gg_arguments-->1;
	}
	
	if (graph_width > 1313)
		return 525;
	else
		return (graph_width*40)/100;
];
-).
	
To decide which number is window pixel count:
	(- SelectWindowPixelCount() -)

[Lista de recursos a usar]
Figure Fake is the file "ojop.jpg".		
Figure Ojo is the file "ojop.jpg".		
Figure Ventana is the file "ventana-clas.jpg".
Figure Gente	is the file "gente.jpg".
Figure Cielo Nocturno is the file "cn.jpg".
Figure Ruleta is the file "ruleta.jpg".
Figure Fiesta is the file "fiestap.jpg".
Figure Coche is the file "cochep.jpg".
Figure Torre is the file "torresp.jpg".

The graphics background color is g-white.
The graphics window proportion is 40.

The graphics window construction rule is not listed in any rulebook.

Graphics window position is g-right.

Before looking  for the first time:
	now the current graphics drawing rule is the up right scaled drawing rule;
	now currently shown picture is Figure Ojo;
	build graphics window;
	follow the current graphics drawing rule.
	
[ TODO: debe depender de la posición de la cabeza ]
Before looking more than once:
	follow the current graphics drawing rule.

Chapter 1 - Links en máquina glulx

Section 0 - Escenas

Thread is a kind of values. The threads are defined by Table of Threads.

Table of Threads
thread	figure		definition
general	Figure Ojo	"The general secuence of events, the root."

The running threads is a list of threads that varies. 
		
To activate the thread (thr - a thread):
	if thr is not listed in running threads:
		[say "adding [thr].";]
		add thr to running threads.
	
To deactivate the thread (thr - a thread):
	[say "removing [thr].";]
	remove thr from running threads.
		
To decide if (thr - a thread) is running:
	if thr is listed in running threads:
		yes;
	otherwise:
		no.
		
To decide if (thr - a thread) is not running:
	if thr is running:
		no;
	otherwise:
		yes.
		
To consider (thr - a thread):
	if thr is not a thread listed in  the Table of Topic of Story:
		deactivate the thread thr.

Section 1 - Topic Commanding y las nuevas descripciones

[ TopicMetacommanding is the action of the player fired by a keyword in the case of topic]
TopicCommanding is an action applying to one topic.

Understand "[text]" as topiccommanding.

[ Contar las claves activadas ]
The current number of keys is a number that varies.

[ La tabla real ]
Instead of topiccommanding a topic listed in the Table of Keys:
	let used key be key entry;
	[Sinónimos]
	repeat through Table of Synonyms:
		if alt entry is used key:
			now used key is key entry;	
	[ Búsqueda normal ]
	let found be false;
	let used thread be general;
	repeat through Table of Topic of Story:
		if key entry is not used key:
			next;
		if thread entry is not running:
			next;	
		now used thread is thread entry;
		[ Abrir de escena ]
		if there is gate entry:
			[ Si es la misma es que se debe cerrar ]
			if the thread entry is the gate entry:
				deactivate the thread gate entry;
			otherwise:
				activate the thread gate entry;
				if the figure of gate entry is not Figure Fake:
					[say "Gate: [figure of gate entry].";
					wait for any key;]
					now currently shown picture is figure of gate entry;
					follow the current graphics drawing rule;
		limpiar la pantalla;
		let used phrase be phrase entry;
		if there is figure entry and figure entry is not Figure Fake:
			[say "Entry: [figure entry].";]
			now currently shown picture is figure entry;
			follow the current graphics drawing rule;
		otherwise if the figure of used key is not Figure Fake:
			[say "Key: [figure of used key].";]
			now currently shown picture is figure of used key;
			follow the current graphics drawing rule;	
		blank out the whole row;
		now current number of keys is 0;
		say used phrase;
		[say " Keys: [current number of keys].";]
		if current number of keys is 0:
			say "[p]Aquello sí que fue un [fin], para mí.";
		now found is true;	
		break;
	if used thread is not general and found is true:
		consider used thread;
	if found is false:
		say "[bold type]Limítate a clickar sobre un enlace, no intentes dar comandos[roman type].".
		

Section 2 - Palabras clave

Key is a kind of values. The keys are defined by Table of Keys.

Table of Keys
key		topic	txt		figure		stats	description
fin		"fin"	"fin"	Figure Ojo	0		"The default key."	
fake	"fake"	"fake"	Figure Fake	0		"Fake."

[ Mostrar una clave indicada en el texto ]
To say (k - a key):
	[ Sinónimos ]
	let syn be fake;
	repeat through Table of Synonyms:
		if alt entry is k:
			now syn is key entry;	
	let found be false;
	repeat through Table of Topic of Story:
		if key entry is not k and key entry is not syn:
			next;
		if thread entry is not running:
			next;
		increase current number of keys by 1;
		say "[link][the txt of k][end link]";
		now found is true;
		increase the stats of k by 1;
		break;
	if found is false:
		say "[the txt of k]".

	
Section 3 - Tabla raíz sobre la que construir la historia
	
Table of Topic of Story
key		thread	gate	figure		phrase			
fake	general	general	Figure Fake	"Fake."

Section 4 - Finalizar el juego desde un texto

To say finalizar el juego:
	wait for any key;
	stop game abruptly.
	
Section 5 - Tabla de sinónimos

Table of Synonyms
alt	key
fake 	fin

Chapter 2 - Romper todo el comportamiento por defecto

Section 1 - Impedir por defecto nada que no sea Topic Commanding

Instead of doing anything except topiccommanding or looking:
	say "[bold type]Limítate a clickar sobre un enlace, no intentes dar comandos[roman type].";
	
Section 2 - Suprimir toda la gramática

Understand the command "take" as something new.
Understand the command "carry" as something new.
Understand the command "hold" as something new.
Understand the command "get" as something new.
Understand the command "pick" as something new.
Understand the command "stand" as something new.
Understand the command "remove" as something new.
Understand the command "shed" as something new.
Understand the command "doff" as something new.
Understand the command "disrobe" as something new.
Understand the command "don" as something new.
Understand the command "wear" as something new.
Understand the command "put" as something new.
Understand the command "drop" as something new.
Understand the command "throw" as something new.
Understand the command "discard" as something new.
Understand the command "give" as something new.
Understand the command "pay" as something new.
Understand the command "offer" as something new.
Understand the command "feed" as something new.
Understand the command "present" as something new.
Understand the command "display" as something new.
Understand the command "show" as something new.
Understand the command "go" as something new.
Understand the command "walk" as something new.
Understand the command "leave" as something new.
Understand the command "run" as something new.
Understand the command "inventory" as something new.
Understand the command "i" as something new.
Understand the command "inv" as something new.
Understand the command "look" as something new.
Understand the command "l" as something new.
Understand the command "consult" as something new.
Understand the command "open" as something new.
Understand the command "unwrap" as something new.
Understand the command "uncover" as something new.
Understand the command "shut" as something new.
Understand the command "cover" as something new.
Understand the command "close" as something new.
Understand the command "cross" as something new.
Understand the command "enter" as something new.
Understand the command "sit" as something new.
Understand the command "exit" as something new.
Understand the command "out" as something new.
Understand the command "x" as something new.
Understand the command "watch" as something new.
Understand the command "describe" as something new.
Understand the command "check" as something new.
Understand the command "examine" as something new.
Understand the command "read" as something new.
Understand the command "yes" as something new.
Understand the command "y" as something new.
Understand the command "yes" as something new.
Understand the command "no" as something new.
Understand the command "sorry" as something new.
Understand the command "shit" as something new.
Understand the command "fuck" as something new.
Understand the command "damn" as something new.
Understand the command "bother" as something new.
Understand the command "curses" as something new.
Understand the command "drat" as something new.
Understand the command "darn" as something new.
Understand the command "search" as something new.
Understand the command "wave" as something new.
Understand the command "adjust" as something new.
Understand the command "set" as something new.
Understand the command "drag" as something new.
Understand the command "pull" as something new.
Understand the command "push" as something new.
Understand the command "move" as something new.
Understand the command "shift" as something new.
Understand the command "clear" as something new.
Understand the command "press" as something new.
Understand the command "rotate" as something new.
Understand the command "twist" as something new.
Understand the command "unscrew" as something new.
Understand the command "screw" as something new.
Understand the command "turn" as something new.
Understand the command "switch" as something new.
Understand the command "lock" as something new.
Understand the command "unlock" as something new.
Understand the command "attack" as something new.
Understand the command "break" as something new.
Understand the command "smash" as something new.
Understand the command "hit" as something new.
Understand the command "fight" as something new.
Understand the command "torture" as something new.
Understand the command "wreck" as something new.
Understand the command "crack" as something new.
Understand the command "destroy" as something new.
Understand the command "murder" as something new.
Understand the command "kill" as something new.
Understand the command "punch" as something new.
Understand the command "thump" as something new.
Understand the command "wait" as something new.
Understand the command "z" as something new.
Understand the command "answer" as something new.
Understand the command "say" as something new.
Understand the command "shout" as something new.
Understand the command "speak" as something new.
Understand the command "tell" as something new.
Understand the command "ask" as something new.
Understand the command "eat" as something new.
Understand the command "sleep" as something new.
Understand the command "nap" as something new.
Understand the command "sing" as something new.
Understand the command "climb" as something new.
Understand the command "scale" as something new.
Understand the command "purchase" as something new.
Understand the command "buy" as something new.
Understand the command "squeeze" as something new.
Understand the command "swim" as something new.
Understand the command "dive" as something new.
Understand the command "swing" as something new.
Understand the command "blow" as something new.
Understand the command "pray" as something new.
Understand the command "wake" as something new.
Understand the command "awake" as something new.
Understand the command "awaken" as something new.
Understand the command "kiss" as something new.
Understand the command "embrace" as something new.
Understand the command "hug" as something new.
Understand the command "think" as something new.
Understand the command "sniff" as something new.
Understand the command "smell" as something new.
Understand the command "listen" as something new.
Understand the command "hear" as something new.
Understand the command "feel" as something new.
Understand the command "touch" as something new.
Understand the command "rub" as something new.
Understand the command "shine" as something new.
Understand the command "polish" as something new.
Understand the command "sweep" as something new.
Understand the command "clean" as something new.
Understand the command "dust" as something new.
Understand the command "wipe" as something new.
Understand the command "scrub" as something new.
Understand the command "attach" as something new.
Understand the command "fix" as something new.
Understand the command "tie" as something new.
Understand the command "light" as something new.
Understand the command "burn" as something new.
Understand the command "swallow" as something new.
Understand the command "sip" as something new.
Understand the command "drink" as something new.
Understand the command "fill" as something new.
Understand the command "slice" as something new.
Understand the command "prune" as something new.
Understand the command "chop" as something new.
Understand the command "cut" as something new.
Understand the command "jump" as something new.
Understand the command "skip" as something new.
Understand the command "hop" as something new.
Understand the command "dig" as something new.
Understand the command "score" as something new.
Understand the command "quit" as something new.
Understand the command "q" as something new.
Understand the command "save" as something new.
Understand the command "restart" as something new.
Understand the command "restore" as something new.
Understand the command "verify" as something new.
Understand the command "version" as something new.
Understand the command "script" as something new.
Understand the command "transcript" as something new.
Understand the command "superbrief" as something new.
Understand the command "short" as something new.
Understand the command "verbose" as something new.
Understand the command "long" as something new.
Understand the command "brief" as something new.
Understand the command "normal" as something new.
Understand the command "nouns" as something new.
Understand the command "pronouns" as something new.
Understand the command "notify" as something new.
Understand the command "insert" as something new.
Understand the command "purchase" as something new.
Understand the command "squash" as something new.
Understand the command "taste" as something new.
Understand the command "fasten" as something new.

Chapter 3 - Cambios de estética

Section 1 - Cambiar el banner inicial

Rule for printing the banner text: do nothing

Section 2 - El prompt

When play begins:
	now the command prompt is "".
	
Section 3 - Quitar la línea final

The print obituary headline rule is not listed in any rulebook. 
	
Chapter 4  - Utilidades

Section 1 - Line break

To say p:
	say  paragraph break.
	
Section 2 - Comandos de control - Not for release 

Getting status is an action out of world.

Instead of topiccommanding "status":
	show status.

Report getting status:
	show status.

To show status:
	say "[p]Scenes: [running threads].";
	repeat through Table of Keys:
		say "[txt entry]: [stats entry].".
		
Understand "state" or "status" as getting status.
	
Part 1 - Relato

Section 0 - Sinónimos

Table of Keys (continued)
key			topic		txt			figure		description
alcohol		"alcohol"	"alcohol"	Figure Fake	--
ron			"ron"		"ron"		Figure Fake	--
amigas		"amigas"	"amigas"	Figure Fake	--
ojo			"ojo"		"ojo"		Figure Fake	--
Nop		"No"		"No"		Figure Fake	--
morena		"morena"	"morena"	Figure Fake	--
morenas	"morenas"	"morenas"	Figure Fake	--
rubias		"rubias"		"rubias"		Figure Fake	--
borracho	"borracho"	"borracho"	Figure Fake	--
meada		"meada"	"meada"	Figure Fake 	--
tiempos		"tiempos"	"tiempos"	Figure Fake	--
estudiar		"estudiar"	"estudiar"	Figure Fake	--

Table of Synonyms (continued)
alt			key
alcohol 		beber
borracho	beber
amigas		amiga
ojo			ojos
Nop		no
ron			beber
morena		moreno
morenas	moreno
rubias		rubia
meada		mear
tiempos 	tiempo
estudiar		clase

Section 1 - La escena inicial

[ Activar el hilo principal y poner las estadísticas de uso de clave a cero ]
When play begins:
	activate the thread general;
	repeat through Table of Keys:
		now stats entry is 0.

Lugar is room. "En ese momento vi el [fin]. El [fin] en sus [ojos].".
The printed name of lugar is "".

[Every turn:
	say "[running threads].".]

Section 2 - Escena general

Table of Keys (continued)
key		topic	txt		figure		description
ojos	"ojos"	"ojos"	Figure Fake	--

Table of Topic of Story (continued)
key		thread		gate	figure		phrase
ojos	general		clc		Figure Ojo	"Me resultaba difícil de explicar cómo eran sus [ojos].[p]'Inquietos', decía a menudo.[p]'Todo el mundo está inquieto en estos tiempos', me contestaba con sorna Manuel, 'lo que queremos saber es si está buena, joder'.[p]'Sí, está muy bien', le contestaba yo.[p]'Entonces azules, ¿[no]?', apuntaba él, 'a ti te ponen las [rubias] de [ojos] azules'.[p]'Pues la verdad es que [no]', le replicaba, 'azules [no]'.[p]'Pues dinos cómo son de una vez', me exigía.[p]'Inquietos, muy inquietos, aunque adoro su serenidad'."
fin		general		--		Figure Fake		"El [fin] de mi traslado era [estudiar].[p]Yo me había venido desde mi pequeña [ciudad] de provincias a la gran [capital].[p]A estudiar, a [estudiar] una carrera técnica que supuestamente estaba muy bien valorada.[p]No es que fuese la vocación de mi vida. Había tenido una gran nota en las pruebas de selección, la mejor de la provincia, y todo el mundo decía que tenía que olvidarme de otras tonterías y hacer aquella carrera, así que eso hice.[p]Claro que en aquel entonces todo el futuro parecía promisorio para nosotros, bueno, para todo el mundo."
ciudad	general		--		Figure Fake		"Mi pequeña [ciudad] estaba a la orilla del mar.[p]A la orilla del mar y cabalgado el viento.[p]En la gran [capital] no estaba el mar y el viento se había perdido."
capital	general		dec		Figure Torre		"[Nop] sólo me faltaba el mar en la [capital], simplemente todo era diferente aquí.[p]Los edificios tampoco eran tan grandes, bueno, algunos sí, especialmente en aquel norte más rico; pero sobre todo había muchísima gente, demasiada.[p]No me gustaban aquellas aglomeraciones de la capital, no me gustaba toda aquella esa gente.[p]Al menos no me gustaba hasta que me dí cuenta de que [ella] estaba entre ellos."


Section 3 - Escena de cuando la conoció

Table of Threads (continued)
thread	figure		definition
clc		Figure Ojo	"Cuando la conoció."

Table of Keys (continued)
key		topic		txt			figure		description
tiempo	"tiempo"	"tiempo"	Figure Fake	--
no		"no"		"no"		Figure Fake	--
amiga	"amiga"		"amiga"		Figure Fake	--
rubia	"rubia"		"rubia"		Figure Fake	--
ciudad	"ciudad"	"ciudad"	Figure Fake	--
capital	"capital"		"capital"		Figure Fake	--

Table of Topic of Story (continued)
key		thread	gate	figure		phrase
ojos	clc		dec		Figure Ojo	"Creo que [ella] se dio cuenta porque [no] podía dejar de mirarla directamente a los [ojos].[p]Ya ves.[p]No dije nada durante demasiado [tiempo]. Podría decir que estaba hipnotizado por aquellos [ojos] complejos, incluso podría decir que todos estábamos por aquel entonces confusos y perplejos por la situación, pero lo cierto es que simplemente yo era imbécil."
no		clc		dec		Figure Gente	"'[Nop]', me decía el [murciano], 'Con [ella] [no]'[p]'¿Por qué [no]?', le preguntaba un poco mosqueado.[p]'Necesitas a alguien que te de más caña, qué te anime, esta es demasiado parada', me decía.[p]'Venga ya, [ella] es perfecta', le contestaba yo siempre.[p]'No va a funcionar con [ella]', reafirmaba él, 'con [ella] no'."
amiga	clc		--		Figure Fake		"Su [amiga] era mucho más alta que [ella], y mucho más [rubia]. Recuerdo que el asturiano estaba convencido que la que me gustaba era ésa, la rubia. Pero [no], esa mujer alta, esbelta y elegante, [no] me decia nada.[p]Era [ella], la oscura, [morena], poco femenina y nerviosa la que llenaba mis sueños."

Section 4 - Declaración

Table of Threads (continued)
thread	figure			definition
dec		Figure Ventana	"Declaración."

Table of Keys (continued)
key		topic		txt			figure			description
dia		"dia"		"día"		Figure Fake		--
ella		"ella"		"ella"		Figure Fake		--
gente	"gente"		"gente"		Figure Gente		--
espera	"espera"		"espera"		Figure Ventana	--
clase	"clase"		"clase"		Figure Fake		--
nervioso	"nervioso"	"nervioso"	Figure Ojo		--

Table of Topic of Story (continued)
key		thread	gate	figure		phrase
dia		dec		--		Figure Ventana	"Ya había pasado demasiado [tiempo], a había habido demasiada [espera], pero sobre todo la ansiedad ya se había acumulado en mi interior hasta tal punto que ya sólo me quedaba dar el paso o huir para siempre y olvidarlo todo.[p]No era un [dia] especial.[p]El lugar era el de siempre, una de las clases la parte de superior de la escuela.[p]Ella [no] tenía nada especial aquel [dia]. Ni hacía nada especial.[p]Simplemente fue el [dia] en el que mi deseo por [ella] pesó más que el temor."
ella		dec		--		Figure Ventana	"Vestía como siempre una ropa que [no] la hacía nada femenina: una camisa clara, creo que blanca, y un pantalón vaquero viejo, [no] demasiado oscuro y algo desgastado.[p][Nop] iba maquillada. Nunca lo iba. Era una de las cosas que más me gustaba de [ella].[p]Su pelo recogido como siempre en una cola de caballo, oscuro, algo desmañado, que la distinguía del resto de la [gente].[p]Pero ninguno de esos detalles influía realmente en mis sentimientos hacia [ella]."
gente	dec		ans		Figure Gente		"Llegué a la [clase] con la intención de hacerlo inmediatamente, pero había demasiada gente a su al rededor.[p]Demasiada [gente].[p]No es que [ella] fuera especialmente popular, pero siempre atrajo hacia [ella] a los demás, casi como un líder."
no		dec		ncm	Figure Ventana	"'[Nop]'.[p]Esa fue su sucinta respuesta. En realidad, luego, imagino que al ver mi cara que imagino descompuesta, añadió: 'ahora mismo [no] estoy interesada en esa clase de cosas'.[p]Pero eso daba igual, la respuesta era [no] y aquel primer rechazo me dejó una marca en el alma que [no] se ha borrado.[p]Tal vez la [gente] estuviese más preocupada por otros problemas, otros problemas más reales, pero para mí aquella negativa condensaba todo lo malo de aquellos [tiempos]."
espera	dec		--		Figure Gente		"Me acerqué hasta donde estaba [ella], sentada sobre la parte interior del alféizar de la ventana, como siempre y me uní a la conversación.[p]Intenté disimular que [no] pasaba nada, que todo era como siempre. Llegó el [tiempo] de la siguiente [clase].[p]La [clase] más larga de la historia de la Humanidad."
clase	dec		--		Figure Ventana	"[Nop] recuerdo de qué fue la clase. ¡Qué importa![p]Creo que me precipité desde la primera fila que solía ocupar, hasta la puerta y allí le pregunté si podíamos hablar.[p]Seguramente nadie puede estar más [nervioso]."
nervioso	dec		ans		Figure Ojo		"Nervioso dije las palabras mil veces pensadas.[p]Bueno, probablemente [no] las dije.[p]Yo que sé.[p]Sólo sé que solté todo lo que tenía algo balbuceante y me quedé mirando sus [ojos]."

Section 5 - La noche en casa del murciano

Table of Threads (continued)
thread	figure			definition
ncm	Figure Fiesta		"La borrachera."

Table of Keys (continued)
key			topic		txt			figure		description
murciano	"murciano"	"murciano"	Figure Fake	--
casa		"casa"		"casa"		Figure Fake	--
moreno		"moreno"	"moreno"	Figure Fake	--
bar			"bar"		"bar"		Figure Fake	--
mear		"mear"		"mear"		Figure Fake	--

Table of Topic of Story (continued)
key		thread	gate		figure			phrase
no		ncm		--		Figure Ventana		"'Vente a mi [casa]', me dijo el [murciano].[p]'¿Para qué?', recuerdo haberle dicho.[p]'Invitaré a unas [amigas], y te olvidarás de esa tipa', me contestó él.[p]'No, [no] me olvidaré de [ella] jamás', le espeté.[p]Yo tenía razón.[p]Él también."
casa	ncm		--		Figure Fiesta		"'Al final me decidí a ir.[p]La verdad es que hasta aquel entonces no había probado ni una gota de [alcohol].[p]Las [amigas] que trajo eran simpáticas.[p]Alguna incluso guapa.[p]Pero, [no], a mí no me decían nada de nada.[p]Eso sí, me lié con alguien aquella noche.[p]Con el [ron] con limón.[p]Fue un amor sustituto pero apasionado. A [fin] de cuentas, ¿qué quedaba del mundo?"
amiga	ncm		--		Figure Fiesta		"El [murciano] conocía a mucha gente, y respecto a mujeres probablemente conocía a más. Me decía cosas como: 'A las mujeres se descontrolan, se dejan llevar mucho a partir de un momento y hay que saber frenarlas un poco'.[p]El murciano, qué personaje.[p]De las [amigas] que trajo recuerdo que había una con el pelo rizado y [moreno] que me atría algo más que las demás.[p]Supongo que me recordaba a aquella Fátima, pequeña, casi negra de morena que era, del instituto. Una de esas pocas mujeres que ha mostrado interés por mí y qué he ignorado."
moreno	ncm		ans		Figure Ojo		"¿Por qué pensé durante tanto tiempo que me iban las [rubias] de [ojos] clarísimos cuando a [fin] de cuentas siempre me enamoro de las [morenas]?[p]Aquella [morena] de la fiesta del murciano, no estaba mal, pero aquella [noche] yo sólo tenía ojos para una [rubia], el limón mezclado con [ron]."
fin		ncm		ans		Figure Fiesta		"[Nop] recuerdo como acabó la fiesta.[p]Recuerdo haberme despedido del [murciano], bastante confundido, algo mareado... bueno, [borracho], y haber dicho algo de la hora. A [fin] de cuentas vivía en una habitación alquilado y tampoco podía presentarme muy tarde.[p]También recuerdo no haber podido llegar desde casa del [murciano] hasta dónde estaba mi casa de alquiler y eso que vivía bastante cerca.[p]Tuve que parar en un [bar]." 
murciano	ncm	ans		Figure Fiesta		"Aquella [noche] el [murciano] hizo todo lo posible para que [no] pensase en [ella].[p]Inició conversaciones de toda clase, habló bien de mí a las chicas que había invitado, y probablemente intentó que alguna de ellas intensase algo conmigo.[p]¿Esperaba que acabase enrollándome con alguna de ellas?[p]Nunca lo sabré."
bar		ncm		ans		Figure Cielo Nocturno	"Nunca había tenido tantísimas ganas de [mear].[p]Me daba vergüenza pararme en un [bar] cualquiera, en el que no había tomado nada y meterme a mear.[p]Pero no podía aguantarme más y más vergüenza me daba hacerlo en plena calle."
mear	ncm		ncm	Figure Ojo	"Liberarme de aquellas ganas, fueron más que un alivio físico.[p]Recuerdo haber sonreído... no reído, de una forma absurda y sentir aquella ruptura que implicaba la aceptación del rechazo.[p]Con aquella [meada] no sólo se iba mi primer exceso de [alcohol], sino también el dolor de aquel [no].[p]Bueno, al menos eso sentí aquella [noche] en aquel aseo estrecho y mal oliente de aquel [bar] en una esquina cualquiera.[p]Eso creí.[p]Me equivoqué."

Section 6 - Aquella noche en la sierra

Table of Threads (continued)
thread	figure					definition
ans		Figure Cielo Nocturno		"Aquella noche en la sierra."

Table of Keys (continued)
key		topic		txt			figure		description
noche	"noche"		"noche"		Figure Fake	--
beber	"beber"		"beber"		Figure Fake	--
juego	"juego"		"juego"		Figure Fake	--
canario	"canario"	"canario"	Figure Fake	--

Table of Topic of Story (continued)
key		thread	gate	figure					phrase
noche	ans		--		Figure Cielo Nocturno		"Aquella [noche] escapamos de la ciudad.[p]Un compañero, el [canario] tenía una [casa] heredada de sus abuelos en la sierra y nos invitó a ir. 'Como si fuesen [tiempo]s normales', nos dijo, 'escapemos allá arriba y seamos jóvenes'.[p]'Eso', dijo el [murciano], 'vayamos a comer y a [beber]'.[p]Todos queríamos escapar de una manera o de otra, pero yo tenía otras intenciones."
beber	ans		--		Figure Ruleta				"Uno de los compañeros había traído un juego a la [casa] del [canario]. Una ruleta de [beber].[p]Yo no había bebido nada antes de que [ella] me rechazase por primera vez, [no] había bebido nada, en realidad casi ni tomaba café o cocacolas, era un mojigato, pero desde entonces resultaba difícil hacerme parar.[p]Me entregué a aquel [juego], probablemente con demasiada intensidad."
juego	ans		--		Figure Ruleta				"El [juego] [no] tenía ninguna complejidad.[p]En realidad no recuerdo las reglas, a [fin] de cuentas aquella [noche] no me importaban las reglas porque quería saltármelas todas.[p]Aquella bolita saltaba de un lado a otro y alguien bebía.[p]Con suerte [ella] bebía, y eso es lo que realmente importaba."
ella		ans		--		Figure Ojo				"Ya habían pasado meses desde cuando me lanzé aquella vez en la universidad.[p][Nop] me había muerto de vergüenza.[p]No me señalaba nadie por los pasillos.[p]No se había acabado el mundo, aún [no], por mucho que...[p]Pero lo importante es que [ella] había subido aquella [noche] a la [casa] del [canario], a desparramar como todos los demás.[p]Ella había subido y yo soñaba."
canario	ans		--		Figure Cielo Nocturno		"El [canario] venía de una familia que tenía dinero, no sé si mucho o muchísmo, o tampoco tanto, pero  era una familia que debía haber tenido más dinero que la mía, desde mucho antes de lo que la mía recordara ser una familia.[p]Tampoco es que en aquellas circunstancias importase nada, pero era así.[p]Los diversos nietos pasaban por una [casa] que la familia, que vivía en Canarias, tenía en Moncloa.[p]Una casa simplemente reservada para venir a [estudiar] y otra más en la sierra para pasar el rato, casi nada."
canario	ans		--		Figure Cielo Nocturno		"El [canario] era un tipo peculiar.[p]Atleta, o al menos corredor. A pesar de todo lo que estaba pasando aún salía a correr cada tarde.[p]Cada noche cenaba siempre lo mismo: su huevo frito y sus salchichas.[p]Y lo más sorprendente es que en el fondo era rastafari."
casa	ans		--		Figure Coche	"Aquello fue toda una sorpresa.[p]En el garaje de la [casa], bajo una lona que parecía anodina un increíble coche.[p]No un coche normal, más o menos abandonado, como otros muchos en aquellos tiempos.[p]No, se trataba de una increíble pieza de lujo del pasado, todo un coche deportivo, probablemente el orgullo de un joven de [tiempos] mejores."


Section 99 - Fin de la historia

Table of Topic of Story (continued)
key		thread	gate	figure					phrase
fin		general	--		Figure Ojo	"Todo había sido vana ilusión, a [fin] de cuentas.[p]El mundo podía irse  al garete por lo que a mí respectaba, pues sus ojos me reflejaron mi propia muerte.[finalizar el juego]"





