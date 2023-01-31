"Anillo III - Original" by Johan Paz (in spanish)

[==============================

	Anillo 3 - Diseño Original

	Por Mel Hython, 2008-2009
	Sobre diseño y planos originales de 
	Melitón Rodriguez del año 1989.

	Tras mucho hablar en los foros del CAAD
	sobre lo que debería y no debería ser una
	aventura, ví que hay aún una gran cantidad
	de personal que adora las aventuras a la
	antigua usanza, lo que al parecer es puzzle, 
	puzzle, puzzle... y luego algo más de puzzle.

	El diseño original del Anillo 3 del que había
	hasta fuentes escritas a mano de PAWS
	pero que nunca llegó a terminar de 
	'transcribirse' es exactamente eso, así
	que he decidido implementarlo 'tal cual'
	a ver si es éso lo que realmente gusta.

	Por lo tanto esta aventura es 
	voluntariamente 'retro' en muchos
	aspectos, aunque realizada sobre I7, 
	lo que indudablemente le dará un 
	aire diferente a las de antaño.

	Además no puedo, simplemente, 
	resistirme a aprovechar las capacidades
	actuales en cuanto a cantidad de 
	texto.
	
	Actualizado y modernizado en 2014 
	con motivo del 25 aniversario del CAAD.
	
==============================]

[==============================

	Librerías y opciones

==============================]

Include Decorations by Johan Paz.
Include Patrollers Sp by Michael Callaghan.
Include Glulx Entry Points by Emily Short.
Include Simple Graphical Window by Emily Short.
Include Glulx Boxed Quotation by Eliuk Blau.
Include Multiple Sounds by Massimo Stella.
Include Aki Basic by Johan Paz.

Use full-length room descriptions.
Use no scoring.
Use boxed quotation without frame.
Use fast route-finding.
Use MAX_STATIC_DATA of 700000.
Use undo prevention.
Release along with cover art, a website, the source text,[ a file of "introduccion" called "intro.pdf" and ]an interpreter.

[==============================

	Referencia bibliográfica

==============================]
The story headline is "El final de la saga del Anillo".
The story genre is "Tragicomedia/Fantasía".
The release number is 3.
The story description is "Tras mucho vagar por el mundo sin poder caminar, finalmente Uudrum alcanza su destino, las cercanías de la fortaleza del nigromante Sady Omú. Sus penurias pueden estar cercanas a terminar, pero los peligros del pantano de Hapawa se interponen entre él y un final... féliz.

Un dragón puede soportar la reducción de la inmovilidad algún tiempo, especialmente si se trata de un anciano y sabio dragón, pero Uudrum es un joven vigoroso y... algo impaciente. Ya basta, ya está más que harto de toda esta situación y desde luego no va a desaprovechar ninguna oportunidad para librarse de la maldición.

¡Qué tengan cuidado aquellos que se interpongan en su camino!

Bueno...

...del camino de su portador.

¡¡Maldito El Nigróh!!".
The story creation year is 2009.

[==============================

	Multimedia

==============================]

Part 0 - Multimedia

Chapter 0 - Right alligned rule

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

Chapter 1 - Ficheros

Sound of inicio is the file "inicial.ogg".
Sound of cuevas is the file "cuevas.ogg".
Sound of pantano is the file "pantano.ogg".
Sound of final is the file "final.ogg".
Sound of castillo is the file "castillo.ogg".
Sound of gota is the file "gota.ogg".
Sound of efectos is the file "efectos.ogg".
Sound of grunido is the file "grunido.ogg".
Sound of aleteo is the file "aleteo.ogg".
Sound of machete is the file "machete.ogg".
Sound of aullido is the file "aullido.ogg".
Sound of grulobo is the file "grulobo.ogg".
Sound of fail is the file "fracaso.ogg".

[ Valor nulo]
Figure of Nada is the file "pantini.png".

[ Oscuridad    ]
Figure of Darkness is the file "darkness.png".

[ Pantano inicial ]
Figure of Pantano Inicial is the file "pantini.png".

[ Pantano aleatorios  ]
Figure of Pantano1 is the file "pant1.png".
Figure of Pantano2 is the file "pant2.png".
Figure of Pantano3 is the file "pant3.png".
Figure of Pantano4 is the file "pant4.png".
Figure of Pantano5 is the file "pant5.png".
Figure of Pantano6 is the file "pant6.png".
Figure of Pantano7 is the file "pant7.png".
Figure of Torreon is the file "torreon.png".
Figure of Lenadores is the file "lenadores.png".
Figure of Spider is the file "spider.png".
Figure of Huerta is the file "huerta.png".
Figure of Frozen is the file "frozen.png".

[ Castillo ]
Figure of Castillo is the file "castillo.png".

[ Cuevas aleatorios  ]
Figure of Cuevas1 is the file "cueva1.png".
Figure of Cuevas2 is the file "cueva2.png".
Figure of Cuevas3 is the file "cueva3.png".
Figure of Cuevas4 is the file "cueva4.png".

[ Campamento orco ]
Figure of Orc Camp is the file "orc-camp.png".
Figure of Tree Cage is the file "tree-cage.png".
Figure of TopTree is the file "toptree.png".

[ Túmulo ]
Figure of Tumulo is the file "tumulo1.png".
Figure of In Tumulo is the file "int-tumulo.png".

[ Entrada a las cuevas ]
Figure of Entrada a Cuevas is the file "ent-cuevas.png".
Figure of Inicio Cuevas is the file "cave-entrance.png".

[ Lava ]
Figure of Next Lava is the file "next-lava.png".
Figure of Lava Caliente is the file "lava-caliente.png".
Figure of Lava Fria is the file "lava-fria.png".

[ Tesoro ]
Figure of Tesoro Sin is the file "tesoro-sin.png".
Figure of Tesoro Con is the file "tesoro-con.png".

[ Final ]
Figure of Final is the file "final.png".

[ Trono ]
Figure of Trono is the file "bone-throne.png".

[ Éxito ]
Figure of Success is the file "success.png".

Section 1 - Tabla de mapeo de figuras

Table of Figures on the Swamp
Figure of Pantano1
Figure of Pantano2
Figure of Pantano3
Figure of Pantano4
Figure of Pantano5
Figure of Pantano6
Figure of Pantano7

Section 2 - Figuras en el movimiento

To image (fig - a figure name):
	now currently shown picture is fig;
	follow the current graphics drawing rule.	
	
To current image:
	if in darkness:
		image Figure of Darkness;	
	otherwise if the default picture of the location is not Figure of Nada:
		image default picture of the location;		
	otherwise if location is in Pantano:
		choose row with num of selected description of location in the Table of descripciones de pantano;
		image imagen entry;
	otherwise if location is Lava:
		if Lava is congelada:
			image Figure of Lava Fria;
		otherwise:
			image Figure of Lava Caliente;	
	otherwise if location is Lugar_Oo_Drack:
		image Figure of Tesoro Sin.

First after going to somewhere:
	current image;
	continue the action.
	
Last after looking:
	current image;
	continue the action.

Section 3 - Inicio

The graphics background color is "$FFFFFF".
[The graphics window pixel count is 525.]
The graphics window proportion is  40.

The graphics window construction rule is not listed in any rulebook.

Graphics window position is g-right.

Before looking when the location is Pantano14 for the first time:
	now the current graphics drawing rule is the up right scaled drawing rule;
	now currently shown picture is Figure of Pantano Inicial;
	build graphics window;
	follow the current graphics drawing rule.
	
Before looking more than once:
	follow the current graphics drawing rule.
		

Chapter 2 - Cambios

Musica-Intro-Sonando is a truth state that varies. Musica-Intro-Sonando is false.

To start musical introduction:
	now Musica-Sonando is true;
	now Musica-Intro-Sonando is true; [aviso: la intro ahora esta sonando!]
	[asumimos que has asignado el canal con anterioridad]
	play the sound of inicio in foreground[, notifying when finished].

[Esta regla captura el Soundnotify, avisa que la intro termino (para que la regla Restore-Intro-Music ya no haga nada) y finalmente reproduce la musica del juego]
A glulx sound notification rule (this is the Start-Game-Music rule):
	now Musica-Intro-Sonando is false; [aviso: la intro ya no esta sonando!]
	now Musica-Sonando is false;
	[asumimos que has asignado el canal con anterioridad]
	reponer banda sonora.

Last glulx object-updating rule (this is the Restore-Intro-Music rule):
	if Musica-Intro-Sonando is true:
		start musical introduction.

To temporizar cada (MS - number) ms:
	(- if (glk_gestalt(gestalt_Timer,0)) { glk_request_timer_events({MS}); } -)

To activar sonidos ambientales:
	temporizar cada 2000 ms. [es decir, cada 2 segundo]

To desactivar sonidos ambientales:
	temporizar cada 0 ms. [es decir, desactiva el timer]

Last glulx object-updating rule (this is the Restore-Sonidos-Ambientales rule):
	if Primera-Ejecucion is true: [esto solo se ejecuta 1 vez, antes de iniciar nada del juego]
		now Primera-Ejecucion is false; [corrige la pifia de Windows Glulxe que te explique arriba!!]
		stop; [importante: no se debe seguir ejecutando el resto de la regla!!]
	if Efectos-Sonando is true:
		activar sonidos ambientales;
	otherwise:
		desactivar sonidos ambientales.

[ Poner lo adecuado cuando termine el inicial ]
To reponer banda sonora:
	now Musica-Intro-Sonando is false;
	now Musica-Sonando is true;
	if location is in Pantano:
		play sound of pantano in foreground with loop;
	otherwise if location is in Castillo:
		play sound of castillo in foreground with loop;
	otherwise:
		play sound of cuevas in foreground with loop.

Musica-Sonando is a truth state that varies. Musica-Sonando is false.
Efectos-Sonando is a truth state that varies. Efectos-Sonando is false.
	
To cambiar estado efectos:
	if Efectos-Sonando is true:
		say "Silenciando efectos sonoros.";
		now Efectos-Sonando is false;
		if location is in Pantano:
			stop the background sound;
	otherwise:
		say "Activando efectos sonoros.";
		now Efectos-Sonando is true;
		if location is in Pantano and location is not Pantano23 and location is not Pantano24:
			play sound of efectos in background with loop.

To cambiar estado musica:
	if Musica-Sonando is true:
		say "Silenciando música.";
		now Musica-Sonando is false;
		stop the foreground sound;
	otherwise:
		say "Activando música.";
		now Musica-Sonando is true;
		reponer banda sonora.

Primera-Ejecucion is a truth state that varies. Primera-Ejecucion is true.
Tiempo musica inicial is a number that varies. Tiempo musica inicial is 0.

A glulx timed activity (this is the Gran Ambientador de Sonidos rule):
	[ Cuando se va a acaba la musica inicial pasamos a la del pantano ]
	if Musica-Sonando is true and Musica-Intro-Sonando is true :
		if tiempo musica inicial is greater than 190:
			now Musica-Intro-Sonando is false;
			reponer banda sonora;
		else:
			increase tiempo musica inicial by 1;
	if Efectos-Sonando is true:
		if the location of lobo is adjacent to location and a random chance of 10 in 100 succeeds:
			play the Sound of aullido in midground;
		if lobo is visible and a random chance of 15 in 100 succeeds:
			play the Sound of grulobo in midground;
		if the location of deavork is adjacent to location and a random chance of 15 in 100 succeeds: 
			play the Sound of grunido in midground;
		if the deavork is visible and a random chance of 10 in 100 succeeds:
			play the sound of aleteo in midground; 
		if the location is in Cuevas:
			if a random chance of 10 in 100 succeeds:
				play sound of gota in midground.
	

[==============================

	El relato

==============================]

Part 1 - Reglas generales modificadas

Chapter  0 - Nuevas clases de objeto

Section 1 - Decorados y partes

[--------------------------------------------------

  Partes que son decoraciones

--------------------------------------------------]

Un partdecoration is a kind of thing.

Instead of doing something except examining or metacommanding with a partdecoration when the noun is part of anything (called padre) (this is the actpart rule):
	say "No tiene sentido intentar separar [the noun] [del padre], ¿a fin de cuentas para qué  quieres [the noun]?.". 


Section 2 - NSE container

[--------------------------------------------------

   Contenedores que no muestran 
   'vacio' cuando están vacíos.

   Especialmente útil para que un
   objeto que contiene cosas 
   'ocultas' a descubrir por 'registro'.

--------------------------------------------------]

A NSE container is a kind of container.

Before printing the name of a NSE container (called contenedor):
	if there is nothing in the contenedor:
		omit contents in listing.

Definition: a NSE container is muyVacio if the number of things in it is 0 and it is not a bag of tricks.

Instead of searching a muyVacio NSE container:
	say "No encuentras nada en [el noun].".

Section 3 - Bag of tricks

[--------------------------------------------------

   Contenedores en los que se 
   puede rebuscar y encontrar cosas
   más o menos aleatorias.

--------------------------------------------------]

A bag of tricks is a kind of NSE container. A bag of tricks has a list of objects called hidden objects. The hidden objects of a bag of tricks is usually {}.
A bag of tricks has a text called nothing inside phrase. The nothing inside phrase of a bag of tricks is usually "Buscas un rato en [the noun] sin encontrar nada.".
A bag of tricks has a text called found phrase. The found phrase of a bag of tricks is usually "Buscas un rato en [the noun] encontrando por sorpresa [a second noun].".
A bag of tricks has a number called avisos. The avisos of a bag of tricks is usually 0.

Instead of searching a bag of tricks:
	let HO be the hidden objects of the noun;
	let NHO be the number of entries in HO;
	if NHO is 0:
		say the nothing inside phrase of the noun;
		say line break;
	otherwise:
		let longitud be the number of entries of HO;
		let num be a random number from 1 to NHO;
		let kosa be the entry num of HO;
		now the second noun is kosa;
		say the found phrase of the noun;
		say line break;
		if the noun is scenery or the noun is a backdrop:
			move entry num of HO to the location;
		otherwise:
			move entry num of HO to the noun;
		remove entry num from the hidden objects of the noun.

[Pista sobre la existencia de la bolsa de trucos]
Every turn when there is a bag of tricks (called bolsa) in the location and not in darkness:
	let N be the number of entries in hidden objects of bolsa;
	if N is not 0:
		let MAX be 10;
		increase MAX by avisos of bolsa;
		if a random chance of N in MAX succeeds:
			say "[one of]Por un momento te ha parecido ver algo en [the bolsa][or]Uhm... tu intuición te dice que tal vez haya algo en [the bolsa][or]Te ha parecido ver con el rabillo del ojo algo extraño en [the bolsa][or]La verdad es que [the bolsa] tiene[n the bolsa] algo extraño, tal vez habría que registrar[lo the bolsa] a fondo[at random].";
			increase avisos of bolsa by 5.

Chapter 1 - Quitar textos tradicionales

Section 1 - Modificaciones para las localizaciones

The room description heading rule is not listed in any rulebook.
The AKI room description heading rule is not listed in any rulebook.

A room has a figure name called default picture. The default picture of a room is usually Figure of Nada.

Section 2 - Cambiar el banner inicial

Rule for printing the banner text: do nothing

Section 3 - Textos no deseados de AKI

Table of Keyword Interface messages (amended)
KI message				KI output 
not-a-verb-I-recognise	"Piensas en cosas que no tienen sentido en estos momentos. Te enfadas contigo mismo. ¡Céntrate en tu misión!" 


Section 4 - metacommanding de una localidad

Instead of metacommanding an adjacent room (called deseo):
	let way be the best route from the location to deseo;
	say "Uhm... ese lugar... eso está justo hacia [the way].";
	try going the way.
	
Instead of metacommanding an room:
	say "Piensas cosas extrañas.".
	
Section 5 - Casos excepcionales

Commanding manantial when manantial is examined:
	if give-explanation is true:
		say "(beber [del noun])";
	try drinking fuente.
	
Commanding a wearable not worn examined thing (called llevado) carried by player:
	if give-explanation is true:
		say "(ponerse [the noun])";
	try wearing noun.
	
Commanding a wearable examined thing (called llevado) worn by player:
	if give-explanation is true:
		say "(quitarse [the noun])";
	try taking off noun.

Chapter 2 - Utilidades o librerías integradas

Section 0 - Cosas comunes a usar

[Duracion]
A thing has a number called duracion. The duracion of a thing is usually 0.

[Substancias, al menos para considerar lo metálico ]

Substance is a kind of value. 
Substances are metal, flint, vegetable, meat, paper and irrelevant.
A thing has a substance called naturaleza. The naturaleza of a thing is usually irrelevant.

Definition: a thing is metalica if the naturaleza of it is metal.
Definition: a thing is chisposa if the naturaleza of it is flint.
Definition: a thing is carne if the naturaleza of it is meat.
Definition: a thing is vegetal if the naturaleza of it is vegetable.
Definition: a thing is papel if the naturaleza of it is paper.

[Volumen]
Volumen is a kind of value. The volumens are minusculo, pequeno, medio, grande and enorme.
A thing has a volumen called tamano. The tamano of a thing is usually pequeno.

To decide which number is espacio de (item - a thing):
	if the tamano of item is:
		-- minusculo: decide on 1;
		-- pequeno: decide on 10;
		-- medio: decide on 30;
		-- grande: decide on 200;
		-- enorme: decide on 1000.

[Capacidad]
A container has a number called capacidad. The capacidad of a container is normally 50. [objetos minusculos]

[Carga del jugador]
To decide which number is carga del jugador:
	let carga be 0;
	repeat with item running through the things carried by the player:
		increase carga by espacio de item;
	decide on carga.

[Contenido de un contenedor]
To decide which number is carga de (item - a thing):
	let carga be 0;
	repeat with cosa running through the things in item:
		increase carga by espacio de cosa;
	decide on carga.

[Como va de cargado el deavork]
To decide which number is carga del insecto:
	let carga be 0;
	repeat with cosa running through the things in estomago del deavork:
		increase carga by espacio de cosa;
	decide on carga.

[Verificar la carga del jugador]
Before taking a thing:
	let carga final be carga del jugador;
	increase carga final by espacio de the noun;
	let maxCarga be 235;
	if the player is icalante or the player is yerk:
		now maxCarga is 435;
	if carga final is greater than maxCarga:
		if the player is carrying anything:
			say "Tu portador ya lleva demasiadas cosas, tendrás que dejar algo antes de cargar con [the noun].";
		otherwise:
			say "Simplemente tu portador no puede cargar con eso, es demasiado grande.";
		stop the action.

[Verificar capacidad de un contenedor]
Before inserting a thing into a open container:
	let carga final be carga de the second noun;
	increase carga final by espacio de the noun;
	if carga final is greater than capacidad of the second noun:
		if there is anything in the second noun:
			say "[The noun] ya no cabe en [the second noun]. Saca algo antes.";
		otherwise:
			say "[The noun] parece que simplemente no cabe ahí.";
		stop the action.

[----------------------------------------------------

Algunas funciones de presentación

-----------------------------------------------------]

To bnw: [break and wait]
	say line break;
	[say paragraph break;]
	wait for any key.

To (pnj - a patroller) hace (text - a text):
	if pnj is visible:
		say text.

Section 1 - Facilidad para mostrar partes no interactivas

[--------------------------------------------------

La idea es bien simple -ya que hay muchas cosas 
que no sé hacer-, cada entrada de una tabla/lista 
simple, se muestra y tras ella se espera la 
pulsación de una tecla

--------------------------------------------------]

To relatar fragmento en (tabla - a table-name), limpiando pantalla or limpiando pantalla tras cada frase:
	if limpiando pantalla 
	begin;
		relatar fragmento en tabla;
		wait for any key;
		[simple fade out the sound of inicio to 40% over 1000 ms;]
		clear the screen;
	otherwise if limpiando pantalla tras cada frase;
		let N be the number of rows in tabla;
		repeat through tabla begin;
			decrease N by 1;
			say "[frase entry]";
			wait for any key;
			clear the screen;
		end repeat;
	otherwise;
		let N be the number of rows in tabla;
		repeat through tabla begin;
			decrease N by 1;
			say "[frase entry]";
			say paragraph break;
			if N is not 0, wait for any key;
		end repeat;
	end if.

Section 3 - Mover PNJ es lo último que hay que hacer

The carry out patrolling rule is listed last in the every turn rules.

Section 4 - 'Libreria' de conversaciones

[--------------------------------------------------

 Las que hay en el repositorio no 
 me acaban de encajar, así que
 me meto en el barullo de hacerme
 una propia.

--------------------------------------------------]

ConvTabla is a table-name that varies. ConvTabla is Table of NoConv.

Table of NoConv
numero	seleccion		respuesta		activado	activa	extra				
0	a text		"ERROR Conversación"		a number	a list of numbers	a rule

To decide whether conversacion iniciada:
	if ConvTabla is Table of NoConv:
		decide no;
	otherwise:
		decide yes.

Selecting option is an action applying to one number.  
Understand "[number]" as selecting option when conversacion iniciada.

Before doing anything except selecting option or looking when conversacion iniciada:
	say "Mejor no hacer nada hasta que termine esta conversación.";
	stop the action.

Instead of looking when conversacion iniciada:
	try selecting option 0.

Carry out selecting option:
	let N be the number understood;
	if N is 0:
		say "Selecciona una de las opciones indicadas.";
		decir opciones activas en ConvTabla;
		stop the action;
	if there is a activado of N in ConvTabla:
		choose row with activado of N in ConvTabla;
	otherwise:
		if there is a numero of -1 in ConvTabla:
			choose row with numero of -1 in ConvTabla;
			say "[respuesta entry]";
			say line break;
			say line break;
		otherwise:
			say "Selecciona una de las opciones indicadas.";
		decir opciones activas en ConvTabla;
		stop the action;
	say "[seleccion entry]";
	say line break;
	say "[respuesta entry]";
	say line break;
	if numero entry is less than 9000:
		say line break;
		quitar activados ConvTabla;
		nuevas opciones para numero entry en ConvTabla;
	otherwise:
		now ConvTabla is Table of NoConv; [FIN]
	follow extra entry.
	

This is the fake rule: 
	rule succeeds.

To quitar activados ( tabla - a table-name ):
	repeat through tabla:
		now activado entry is 0.

To decir opciones activas en ( tabla - a table-name ):
	repeat through tabla:
		if activado entry is not 0:
			say "[j][activado entry][x]) [seleccion entry][line break]".

To nuevas opciones para ( num - a number) en ( tabla - a table-name):
	choose row with numero of num in tabla;
	let L be activa entry;
	let N be number of entries of L;
	let C be 0;
	say "Respondes:[line break]";
	repeat with IND running through L:
		increase C by 1;
		choose row with numero of IND in tabla;
		now activado entry is C;
		say "[j][C][x]) [seleccion entry][line break]".

To iniciar conversacion ( tabla - a table-name):
	[ Marcamos que se inicia ]
	now ConvTabla is tabla;
	quitar activados tabla;
	[ Escogemos el nodo raíz ]
	choose row with numero of 0 in tabla;
	say respuesta entry;
	say line break;
	say line break;
	nuevas opciones para 0 en tabla.


[Tabla ejemplo]
Table of Conversacion Ejemplo
numero	seleccion	respuesta	activado	activa	extra
0 [inicial]	--	"'No molestes', dice."	1	{1, 2, 3}	the fake rule
1	"Tengo que molestar."	"'Pesado', contesta."	0	{3}	the fake rule
2	"Lo siento."	"'Ya, claro', dice."	0	{3, 4}	the fake rule
3	"Imbecil."	"'Te vas a cagar', dice."	0	{9999}	the fake rule
4	"En serio que lo siento."	"'No me lo creo', dice."	0	{3, 5}	the fake rule
5	"Juro que lo siento."	"'Y yo soy Napoleón', dice."	0	{3, 6}	the fake rule
6	"Por mi madre, lo siento."	"'Vale, te creo', contesta al fin."	0	{9991}	the fake rule
9991	"Gracias"	"'No hay de qué', dice."	0	--	the fake rule
9999	"Vete a la mierda"	"'Estás muerto', contesta."	0	--	the fake rule

Section 5 - quitar 'un poco de'

Original player's command is a text that varies.

First after reading a command: 
	let N be "[the player's command]"; 
	let pop be a indexed text;
	let pop be "[the player's command]";
	let pop2 be "[pop]";
	now original player's command is pop2;
	replace the regular expression "un poco de" in N with ""; 
	change the text of the player's command to N.

Section 7 - Finalizando el juego, modificaciones

The print obituary headline rule is not listed in any rulebook. 

When play begins: 
	choose row with a final response rule of immediately undo rule in the Table of Final Question Options; 
	blank out the final question wording entry. 

To finalizar juego, con victoria:
	stop the background sound;
	if not con victoria:
		now Efectos-Sonando is false;
		if Musica-Sonando is true:
			play the sound of fail in foreground;
		image Figure of Final;
	end the story saying "FIN".
	
Section 8 - Hiperenlaces es el estilo por defecto y para quitar el retorno de carro en los enlaces

The link clicked is a truth state that varies.

When play begins:
	sets echo line events off.
	
Every turn:
	now link clicked is false.
	
First hyperlink processing rule:
	now link clicked is true.
	
To sets echo line events off:
	(- glk_set_echo_line_event(gg_mainwin,0); -)
	
To sets echo line events on:
	(- glk_set_echo_line_event(gg_mainwin,1); -)
	
After reading a command:
	if link clicked is false:
		[if the player's command includes "matched scenery":
			let str be a indexed text;
			let str be player's command;
			replace the text "matched scenery" in str with "[matched scenery]";
			say str;
		otherwise:
			say player's command;]
		say "[original player's command]";
		say command clarification break.

First when play begins:
	now the style of room-word is keyword-link;
	now the style of object-word is keyword-link;
	now the style of direction-word is keyword-link;
	now the style of topic-word is keyword-link;
	now the style of parser-word is keyword-link;
	now  give-explanation is true.
	
Section 9 - Siempre se activa con nombres lo del hiperenlace

Rule for printing the name of a thing (called item):
	let output be indexed text;
	now output is the printed name of item;
	let kw be indexed text;
	now kw is the keyword of item;
	if kw is "":
		now kw is word number 1 in output;
	repeat with wordcounter running from 1 to the number of words in output:
		say "[if wordcounter > 1] [end if]";
		if word number wordcounter in output matches the regular expression "\b(?i)[kw]":
			say "[j][word number wordcounter in output][x]";
		else:
			say "[word number wordcounter in output]".
	
Section 10 - Siempre se activa con direcciones lo del hiperenlace

Rule for printing the name of a direction (called dir):
	if direction keyword highlighting is false:
		say the printed name of dir;
		continue the action;
	say "[d][the printed name of dir][x]".

Chapter 3 - Acciones modificadas

[Section 0 - Examina implícito

Understand "[a visible thing]" as examining.]

Section 1 - Comer

[ El hambre ]
The hambre_del_jugador is a number that varies. 
Hambre_del_jugador is 0.

Every turn when location is in pantano or the location is in Cuevas:
	increment hambre_del_jugador;
	if hambre_del_jugador is greater than 130:
		if hambre_del_jugador is greater than 220:
			say "Tu portador no puede aguantar más. Cae al suelo. Y simplemente se queda ahí. El hambre ha podido con él.";
			morir en cualquier parte;
		otherwise:
			let prob be hambre_del_jugador;
			decrease prob by 130;
			if a random chance of prob in 100 succeeds:
				if hambre_del_jugador is greater than 200:
					say "[one of]Siente a tu portador no sólo hambriento sino algo débil por el hambre.[or]¿Le acaban de temblar las rodillas a tu portador por el hambre?[or]Realmente parece que tu portador necesita comer.[in random order]";
				otherwise if hambre_del_jugador is greater than 190:
					say "Empieza a resultar problemático controlar las acciones de tu portador debido al hambre que siente.";
					if the player is carrying some edible thing (called comida):
						say "Tu portador se come [the comida] sin que puedas evitarlo.";
						remove comida from play;
				otherwise if hambre_del_jugador is greater than 180:
					say "[one of]Menudos sonidos hace el estómago de tu portador. Debe estar bastante vacío.[or]Tu portador no hace más que pensar en comida. ¡Maldito![in random order]";
				otherwise if hambre_del_jugador is greater than 150:
					say "[one of]Vaya, el estómago de tu portador acaba de sonar.[or]¡Qué débiles son los seres inferiores! Tu portador ya está hambriento.[or]Sientes que tu portador tiene hambre.[in random order]";
				otherwise:
					say "[one of]Tu portador tiene algo de hambre. ¡Qué se aguante! Hay cosas más importantes.[or]La mente de tu portador se llena de comida. Quiere comer, pero no es el momento. [or]El hambre que acaba de cruzar la mente de tu portador te hace pensar en jovencitas rollizas... ¡yum![in random order]".

[ La sed ]
The sed_del_jugador is a number that varies.
The sed_del_jugador is 0.
Every turn when the location is in pantano or the location is in Cuevas:
	increment sed_del_jugador;
	if sed_del_jugador is greater than 160:
		if sed_del_jugador is greater than 220:
			say "Tu portador no puede aguantar más. Cae al suelo. Y simplemente se queda ahí. La sed ha podido con él.";
			morir en cualquier parte;
		otherwise:
			let prob be sed_del_jugador;
			decrease prob by 160;
			if a random chance of prob in 100 succeeds:
				if sed_del_jugador is greater than 200:
					say "Tu portador se siente débil debido a la sed que tiene.";
				otherwise if sed_del_jugador is greater than 180:
					say "Puedes sentir la intensa sed de tu portador.";
				otherwise:
					say "[one of]Sientes que tu portador tiene bastante sed.[or]Te das cuenta de que tu portador se ha pasado la lengua por los labios sin que tu lo hayas podido controlar. Debe estar sediento.[or]Tu portador tiene la boca algo seca.[or]Tu portador piensa en beber.[in random order]".


[ Comer calabaza es energizante... en este juego ]
Instead of eating calabaza:
	say "Tu portador arranca un buen pedazo de calabaza y se lo come. No parece gustarle demasiado, pero le sienta bien.";
	decrease hambre_del_jugador by 40;
	decrease sed_del_jugador by 10;
	if calabaza is entera: 
		now calabaza is mordida;
	otherwise if calabaza is mordida: 
		now calabaza is poco;
	otherwise if calabaza is poco: 
		now calabaza is media;
	otherwise if calabaza is media: 
		now calabaza is casi;
	otherwise if calabaza is casi: 
		remove calabaza from play.

[ La nueva y compleja sección de comer ]
PrimeraComida is a truth state that varies.
PrimeraComida is false.

After eating a edible thing:
	if the player is icalante and the naturaleza of the noun is not vegetable:
		say "Tu portador rehúsa a comerse [the noun]. Tal vez sea exclusivamente vegetariano.";
		stop the action;
	otherwise if the player is an orco and the naturaleza of the noun is not meat:
		say "Tu portador se resiste a comerse [the noun]. ¿Será que los orcos comen solamente carne o cosas asquerosas?";
		stop the action;
	otherwise:
		if PrimeraComida is true:
			say "Tu portador se come [the noun] lo que aplaca un poco su hambre.";
		otherwise:
			say "Te comes [the noun]. Bueno, en realidad no te comes nada -ya quisieras- pero tu portador sí que lo hace, y, la verdad, puedes sentir que lo encuentra hasta agradable.";
			say line break;
			say "¡Ojalá este infierno acabe pronto! Anhelas tanto devorar alguna suculenta doncella.";
			now PrimeraComida is true;
		decrease hambre_del_jugador by 60;
		if the naturaleza of the noun is vegetable:
			decrease sed_del_jugador by 10.

Instead of eating a cadaver:
	if the noun is nuhur_muerto:
		say "Piensas por un momento en calmar el hambre de tu portador con el cadáver de Nuhur, pero te das cuenta de que te sientes incapaz. Parece que realmente sentías aprecio por este humano feo.";
	otherwise if the player is an orco:
		say "Haces que tu portador le de un buen mordisco [al noun]. Su sabor no es muy agradable, pero parece que le sacia.";
		decrease hambre_del_jugador by 70;
		now the noun is mordido;
		if noun is cadaver_serpiente:
			remove cadaver_serpiente from play;
	otherwise if the player is icalante:
		say "Eres incapaz de hacer que el icalante coma eso. Es vegetariano, la misma idea hace que casi pierdas el control sobre el mismo.";
	otherwise if the player is nuhur:
		if the noun is lobo_muerto:
			say "Tu portador come un poco de la carne [the noun]. Aunque no le gusta demasiado.";
			decrease hambre_del_jugador by 30;
			now the noun is mordido;
		otherwise if the noun is deavork_muerto:
			say "Tu portador coge un pedazo de la carne asquerosa del deavork y se la traga.";
			bnw;
			say "Oh, oh... ha sido mala idea...";
			bnw;
			say "Lo primero es el dolor, como siempre, y la parálisis, pero la muerte le sigue muy de cerca.";
			bnw;
			morir en cualquier parte;
		otherwise:
			say "A tu portador le da demasiado asco comerse eso.".

Before eating anything:
	if hambre_del_jugador is not greater than 0:
		say "Da igual lo que sea, tu portador se siente completamente ahíto, no puede comer más.";
		stop the action.

Section 2 - Acciones con 'fixed in place'

[ Coger ]
Instead of taking a fixed in place thing:
	say "No tendría sentido intentar llevarse eso, si es que realmente puedes cargar con ell[o noun].".

[ Golpear ]
Instead of attacking a fixed in place thing:
	say "Haces que tu portador golpee [the noun], pero lo único que logras es dañarle los nudillos. Le duele un poco.".

Section 3 - Acciones sobre cadáveres

[ Golpear ]
Instead of attacking a cadaver:
	say "Tu portador golpea [al noun] con saña. Pero no logras que esté... más muerto.".

[ Cortar ]
Instead of cutting a cadaver:
	try attacking the noun.

Section 4 - Cortar

Instead of cutting anything when the machete is not carried:
	say "Sin algo más o menos afilado con lo que cortar, cortar suele ser bastante complicado, incluso aunque uno sea muy fuerte.".

Section 5 - Atacar

[--------------------------------------------------

   Nada de combate rolero, sólo
   una matriz de lo que se puede matar
   según el personaje usado

--------------------------------------------------]

[ Golpear cosas ]

[ Un mínimo de color ]
Instead of pushing a patroller:
	if the noun is the player:
		say "Uno no puede empujarse a sí mismo.";
	otherwise if the location is Pantano12:
		say "¡Empujas [al noun] hacia las arenas movedizas!";
		bnw;
		if the noun is lobo:
			say "Pero el maldito perro flacucho de un salto sale de ellas.";
			respuesta ataque 1;
		otherwise if the noun is deavork:
			say "Pero el insecto simplemente 'nada' sobre las arenas. ¡Qué asco de cosa!";
			respuesta ataque 2;
		otherwise:
			repeat with item running through things which are carried by noun:
				remove item from play;
			matar al pnj noun;
			remove cuerpo of noun from play;
			say "[The noun] intenta desesperadamente salir de ellas, pero es engullido, lentamente engullido por las arenas hasta desaparecer sin dejar rastro.[line break]Todo ello acompañado por quejidos, lamentos y súplicas en lengua orca.[line break]Un espectáculo lamentable, la verdad.";
	otherwise:
		try attacking noun.
			
[ Decidir cuál es la mejor arma ]
To decide what object is the mejor arma:
	if machete is carried and machete is not lit:
		decide on machete;
	if leno seco is carried and leno seco is not lit:
		decide on leno seco;
	if hueso is carried and hueso is not lit:
		decide on hueso;
	if piedra is carried:
		decide on piedra;
	if guantes is worn:
		decide on guantes;
	decide on nothing.
	

[ Variables de combate ]
CArma is a object that varies. CArma is nothing.
CAtacante is a object that varies. CAtacante is nothing.
CAtacado is a object that varies. CAtacado is nothing.

[ Cosa 'fake' para representar a cualqueir combatiente ]
A cualquiera is a thing.

Instead of attacking a patroller:
	if the player is noun:
		say "Golpear a tu propio portador... una estupenda idea, es evidente que el cautiverio te está afectando demasiado.";
		stop the action;
	if the noun is icalante and icalante is i_siguiendote:
		say "Golpear a tan poderoso aliado sería absurdo por completo.";
		stop the action;
	now CArma is mejor arma;
	now CAtacante is the player;
	now CAtacado is the noun;
	let CDicho be 0;
	repeat through the Table of Combate:
		if atacante entry is cualquiera or atacante entry is CAtacante:
			if atacado entry is cualquiera or atacado entry is CAtacado:
				if arma entry is cualquiera or arma entry is CArma:
					[say "C: [CAtacado] [CArma] [ataque entry] [resultado entry].";] 
					ataque ataque entry;
					now CDicho is 1;
					if resultado entry is not 0: [ no es solo ataque hay respuesta ]
						if icalante is visible and icalante is i_siguiendote:
							[El icalante salva a Nuhur siempre]
							say "El [j]icalante[x] se interpone entre Nuhur y [the CAtacado] para que éste no tome represalias.";
							if CAtacado is an orco:
								[Si es un orco además lo mata]
								bnw;
								say "Bueno, en realidad 'interponerse' es una palabra un poco suave para describir el acto de retorcer la cabeza [del CAtacado] hasta que éste deje de moverse.";
								matar al pnj CAtacado;
							break;
						otherwise if lobo is visible and lobo is contentado:
							say "El [j]lobo[x] gruñe deteniendo temporalmente las posibles represalias de [el CAtacado].";
							break;
						otherwise:
							respuesta ataque resultado entry;
							break;
					otherwise if icalante is visible and icalante is i_siguiendote and CAtacado is an orco and CAtacado is not muerto:
						say "El [j]icalante[x] también ataca [al CAtacado] y su ataque acaba con su vida.";
						matar al pnj CAtacado;
						break;
					break;
	if CDicho is 0:
		ataque 0.

[ Tabla de combate ]
Table of Combate
atacante	atacado		arma		ataque		resultado
cualquiera	deavork		machete		2		0
cualquiera	lobo		hueso		4		0
cualquiera	berg		machete		6		0
cualquiera	icalante		cualquiera		1		3
nuhur	deavork		cualquiera		3		2
nuhur	zhur		machete		5		0
nuhur	zhur		cualquiera		1		4		
nuhur	yerk		machete		5		0
nuhur	yerk		cualquiera		1		4
nuhur	berg		cualquiera		1		4
icalante	deavork		cualquiera		2		0
icalante	zhur		cualquiera		7		0
icalante	yerk		cualquiera		7		0
icalante	berg		cualquiera		7		0
zhur	deavork		leno seco		2		0
zhur	deavork		piedra		2		0
zhur		deavork		cualquiera		3		2
zhur		yerk		machete			5		0
zhur		yerk		cualquiera		1		5
zhur		berg		cualquiera		1		5
yerk		deavork		cualquiera		2		0
yerk		berg	 	cualquiera		1		5
yerk		zhur		cualquiera		8		0
yerk		lobo		cualquiera		8		0
berg		deavork		leno seco		2		0
berg		deavork		hueso			2		0
berg		deavork		piedra			2		0
berg		deavork		guantes			2		0
berg		deavork		cualquiera		3		2
berg		zhur		machete			5		0
berg		zhur		piedra			5		0
berg		zhur		cualquiera		1		5		
berg		yerk		cualquiera		1		5
cualquiera	lobo		cualquiera		1		1
cualquiera	cualquiera	cualquiera		1		0


[ Secuencias de combate ]
To ataque (num - a number ):
	if num is:
		-- 0: [ Marca de no implementado ]
			say "QQQ!!";
		-- 1: [ Ataque ridículo ]
			say "[one of]Haces que tu portador ataque [al CAtacado][if CArma is not nothing] confiado en el poder [the CArma][end if]. Pero [the CAtacado] evita el ataque con gran facilidad.[or]Tu portador ataca [al CAtacado][if CArma is not nothing] usando [the CArma][end if], pero inmediatamente queda claro que se trata de un intento fútil. No puedes dañarlo así.[or]Atacas [al CAtacado][if CArma is not nothing] confiando en matarlo con [the CArma][end if], el resultado es simplemente demasiado ridículo como para describirlo.[at random]";
		-- 2: [ Destrucción del deavork ]
			say "Tu portador ataca al espantoso insecto[if CArma is not nothing] usando [the CArma][end if].";
			bnw;
			say "El primer impacto deja al insecto aturdido, lo que tu portador aprovecha para acabar con él.";
			if there is anything in estomago del deavork:
				bnw;
				say "Este ser era tan vorazmente asqueroso, que aún tenía la tripa inflada. Durante sus estertores hay cosas que salen escupidas de sus fauces.";
				say line break;
			matar al pnj deavork;
		-- 3: [ El deavork se molesta ]
			say "Tu portador golpea al deavork[if CArma is not nothing] con [the CArma][end if], pero sólo logra hacer sonar el caparazón duro del insecto.";
			say line break;
		-- 4: [ Broma destinada a Urba ]
			say "Tu portador intenta golpear al lobo con el hueso, pero el lobo malinterpreta tus intenciones. Captura el hueso con celeridad y da cuenta de él.";
			bnw;
			say "De hecho el maldito perrucho, parece incluso contento.";
			now lobo is contentado;
			now hueso is part of esqueleto;
			now hambre of lobo is 0;
		-- 5: [ Matar a un orco con el machete ]
			say "Tu portador ataca con el machete [al CAtacado].";
			bnw;
			say "En esta ocasicón la efectividad de este arma resulta devastadora, ya que con un sólo golpe [the CAtacado] cae muerto al suelo.";
			matar al pnj CAtacado;
		-- 6: [ Pero no en el caso de Berg, es rápido y listo ]
			say "Tu portador ataca con el machete [al CAtacado].";
			bnw;
			say "Pero [the CAtacado] se mueve con gran habilidad, y resulta, no sólo que el ataque fracasa, sino que de alguna forma el machete acaba en sus manos.";
			move machete to berg;
			[ Por si acaso ]
			activate berg;
			now berg is persiguiendo;
			now berg is following;
		-- 7: [ Matar orcos con el icalante ]
			say "El [j]icalante[x] ataca [al CAtacado][if CArma is not nothing] con [the CArma][end if].";
			bnw;
			say "Se nota, no sólo que este simio gigantesco sabe combatir, sino que además le gusta acabar con los orcos.";
			bnw;
			say "Todo el asunto no dura demasiado y el resultado es un orco menos en el pantano.";
			matar al pnj CAtacado;
		-- 8: [ Yerk mata muchas cosas ]
			say "Yerk ataca con toda su fuerza [al CAtacado][if CArma is not nothing] con [the CArma][end if].";
			bnw;
			say "Este orco es realmente brutal en su fuerza y tamaño, así que [the CAtacado] simplemente no sobrevive al ataque.";
			matar al pnj CAtacado.

[ Respuestas a un ataque ]
To respuesta ataque (num - a number ):
	if num is:
		-- 0: [ Marca de no implementado ]
			say "QQQ!";
		-- 1: [ Respuesta fulminante del lobo ]
			say "El lobo sin embargo sabe muy bien como atacar, demasiado bien.";
			bnw;
			say "Primero muerde el tobillo de tu portador, lo que hace que por un momento pierdas el control del mismo. Ése es todo el tiempo que necesita.";
			bnw;
			say "Cuando te das cuenta la garganta de tu portador está desgarrada y su vida se escapa en forma de una turbia corriente roja.";
			now hambre of lobo is 0;
			morir en cualquier parte;
		-- 2: [ Deavork se revuelve te devora ]
			say "El deavork se vuelve muy enfadado y no te da ninguna oportunidad.";
			bnw;
			say "Sus grandes pinzas golpean con fiereza el pecho de tu portador, quitándole la vida.";
			let aj be the player;
			morir en cualquier parte;
			move cuerpo of aj to estomago del deavork;
		-- 3: [ El icalante no tiene compasión ]
			say "El icalante reacciona de manera violenta y...";
			bnw;
			say "...esto... vamos a dejarlo, en que...";
			bnw;
			say "...deja la cabeza de tu portador en una peculiar posición.";
			morir en cualquier parte;
		-- 4: [ Respuesta de un orco a Nuhur]
			say "[The CAtacado] contesta con un ataque fulminante.";
			bnw;
			say "Matar a un humano debe despertar su pasión orca por la sangre.";
			morir en cualquier parte;
		-- 5: [ Respuesta de un orco ante otro ]
			say "[The CAtacado] se cabrea enormemente.";
			activate CAtacado;
			now CAtacado is following;
			now CAtacado is persiguiendo.

[ El pedernal es especial ]
Instead of attacking pedernal:
	let item be pedernal;
	while item is pedernal:
		now item is a random thing carried by player;
	try hiting pedernal with item.

[ Color para otros ataques ]
Definition: a thing is pateable if it is not fixed in place and it is not a patroller.

Instead of attacking a pateable thing:
	if noun is not in the location:
		say "(primero intentas ponerlo en el suelo)";
		try taking noun;
		try dropping noun;
		if noun is not in the location:
			stop the action;
	if noun is carried by player:
		say "(primero lo dejas en el suelo)";
		try dropping noun;
		if noun is carried by player:
			stop the action;
	otherwise if tamano of noun is minusculo:
		say "Tu portador intenta darle una patada [al noun] pero es demasiado pequeño y no acierta.";
	otherwise:
		say "Tu portador le propina una buena patada [al noun]";
		if tamano of noun is pequeno or tamano of noun is medio:
			let the destination be a random adjacent room;
			let the way be the best route from the location to the destination;
			say " lanzándol[o noun] a través de la vegetación lejos, hacia [the way]";
			move noun to destination;
		say ".".


Section 6 - Hacer fuego

[ Para saber usar el pedernal hay que haberlo probado ]
HacerFuego is a number that varies. HacerFuego is 0.

Instead of burning:
	let fuego be nothing;
	if there is a base antorcha thing (called base) which is carried by the player and base is lit:
		now fuego is base;
	if HacerFuego is 0 and fuego is nothing:
		say "¿Cómo? Habría que descubrir alguna forma de crear fuego. Ay... si aún tuvieses tu aliento.";
		stop the action;
	if the player is not carrying a chisposa thing and fuego is nothing:
		say "No tienes nada con lo que crear una chispa a mano.";
		stop the action;
	if the player is not carrying a metalica thing and fuego is nothing:
		say "Sin algún metal a mano es imposible crear una chispa.";
		stop the action;
	if fuego is nothing:
		say "Haces saltar un chispa golpeando el pedernal con [the random metalica thing which is carried by player] para ";
	otherwise:
		say "Usas el fuego que arde en [the fuego] para ";
	if the noun is telarana:
		say "prender un lateral de la telaraña.";
		bnw;
		say "Arde muy bien. El fuego se extiende con rapidez...";
		bnw;
		say "Oh, oh...";
		bnw;
		say "¡Con demasiada rapidez!";
		bnw;
		say "Intentas desesperadamente salir del infierno de llamas en el que se ha transformado todo este lugar antes de que...";
		bnw;
		say "Pero resulta inútil. Tu portador muere abrasado.";
		bnw;
		say "Poco a poco ves como las llamas se extinguen y todo queda reducido a cenizas... húmedas.";
		quemar arana;
		morir en el pantano;
	otherwise if the noun is polvora:
		say "prender la polvora.";
		bnw;
		say "¡Ouch!";
		bnw;
		if polvora is in a container (called contenedor):
			say "El polvo negro estalla destrozando [el contenedor] de paso.";
			bnw;
			say "Tu portador se ha salvado por un pelo.";
			bnw;
			remove contenedor from play;
		otherwise if polvora is carried:
			say "El polvo negro arde en un fogonazo lastimando la mano de tu portador.";
			bnw;
			say "Doloroso pero no mortal.";
			bnw;
		otherwise:
			say "El polvo negro arde en un fogonazo de luz y humo.";
			bnw;
		remove polvora from play;
	otherwise if the noun is papel:
		if noun is part of a base antorcha thing (called base):
			if resina is part of base: 
				say "encender tu improvisada antorcha. ¡A ver cuánto dura!";
				now base is lit;
			otherwise:
				say "prender [the noun] enrollado en [the base]. Mala idea el fuego lo consume rápidamente. Así no sirve como antorcha.";
				remove the noun from play;
		otherwise:
			say "prender [the noun] que arde con facilidad. La verdad es que el fuego no dura nada de nada, [the noun] arde de forma casi inmediata.";
			remove the noun from play;
	otherwise if the noun is base antorcha:
		if there is a papel thing (called pap) which is part of noun:
			if resina is part of noun:
				say "encender tu improvisada antorcha. A ver cuanto dura.";
				now noun is lit;
			otherwise:
				say "prender [the pap] enrollado en [the noun]. Mala idea. El fuego lo consume rápidamente. Así no sirve como antorcha.";
				remove the pap from play;
	otherwise if the noun is leno:
		say "intentar prender [the noun]. Pero no, tendrás que hacer algo para que resulte más fácil de prender.";
	otherwise:
		say "intentar prender [the noun], pero no funciona.".

Section 7 - Lanzar

[Algo de proyectiles]
Instead of throwing piedra at:
	say "Lanzas la piedra [al second noun] pero fallas por bastante.";
	try silently dropping piedra.

Section 8 - Inventario

Instead of taking inventory:
	say "Llevas (bueno, en realidad lleva [j][el portador][x]): [line break]";
	list the contents of the player, with newlines, indented, giving inventory information, including contents, with extra indentation.

Section 9 - Agitar
	
Before waving a thing which is not carried by the player:
	if the noun is not worn:
		say "(hay que cogerlo primero)";
		try taking the noun;
		if the noun is not carried:
			stop the action.

Section 10 - Coger que lleva alguien

Instead of removing a thing from a patroller:
	try taking noun.

Instead of taking a thing which is in a container which is carried by a posible jugador (called portador):
	if portador is icalante and icalante is i_siguiendote:
		move noun to location;
		say "El [j]icalante[x] te deja coger [the noun].";
		try silently taking noun;
	otherwise if portador is not the player:
		say "No va a dejar que cojas [the noun]. Tal vez haya que matarlo primero.";
	otherwise:
		continue the action.

Instead of taking a thing which is carried by a posible jugador (called portador):
	if portador is icalante and icalante is i_siguiendote:
		move noun to location;
		say "El [j]icalante[x] te deja coger [the noun].";
		try silently taking noun;
	otherwise if portador is not the player:
		say "No va a dejar que cojas [the noun]. Tal vez haya que matarlo primero.";
	otherwise:
		say "Ya tienes [the noun].".

Instead of taking a thing which is worn by a posible jugador (called portador):
	if portador is icalante and icalante is i_siguiendote:
		say "El [j]icalante[x] te deja bastante claro por gestos que no piensa devolverte [the noun]. ¡Parece que le ha gustado!";
	otherwise if portador is not the player:
		say "No va a dejar que cojas [the noun]. Tal vez haya que matarlo primero.";
	otherwise:
		continue the action.

Section 11 - Dar cosas al icalante

Instead of giving a thing to icalante when icalante is in location and icalante is i_siguiendote:
	if the noun is edible and noun is vegetal:
		say "El [j]icalante[x] olisquea [the noun] y... ¡se lo come de un bocado!";
		remove noun from play;
	otherwise if the noun is wearable and there is nothing worn by icalante:
		say "El [j]icalante[x] coge [the noun], le da un par de vueltas y... se lo pone.";
		if noun is sombrero:
			say "Está la mar de ridículo.";
		if noun is craneo_orco:
			say "¿Querrá aparentar ser un orco?";
		if noun is medallon:
			say "Casi no se ve con toda esa pelambrera que tiene.";
	otherwise:
		say "El [j]icalante[x] coge [the noun] y carga con ell[o noun].";
		move noun to icalante.

Section 12 - Atares diversos

[Lo que sirve de base de antorcha]
Definition: a thing is base antorcha if it is leno or it is hueso or it is rama or it is machete.

[Decir que tiene envuelto lo que sea]
After examining a base antorcha thing:
	if there is a papel thing (called pap) which is part of noun:
		say "Tiene envuelto un extremo con [the pap], casi como si se tratase de una antorcha.".

[Unir papeles a palo o hueso para antorcha]
Instead of tying a papel thing to base antorcha thing:
	if there is a papel thing (called pap) which is part of second noun:
		say "Ya tienes enrollado [the pap] en [the second noun], no necesitas más base para una antorcha.";
	otherwise:
		if noun is pedacito tela:
			say "[The noun] es demasiado pequeñ[o noun] para envolver nada.";
		otherwise:
			say "Envuelves [the second noun] con [the noun].";
			now noun is part of second noun;
			if resina is part of the noun:
				now resina is part of second noun;
				say "Ahora ya es una especie de antorcha cutre. Sólo queda encenderla.".

Instead of tying resina to a papel thing:
	if the resina is part of anything (called untado):
		say "La resina ya está untada en [el untado].";
	otherwise if noun is part of a base antorcha thing (called base):
		try tying resina to base;
	otherwise:
		now resina is part of second noun;
		say "Con cuidado untas la resina sobre [el second noun].".

Instead of tying a papel thing to resina:
	try tying resina to noun.

Instead of tying a base antorcha thing to a papel thing:
	try tying second noun to noun.

Instead of tying resina to a base antorcha when the resina is part of a papel thing (called pap):
	try tying pap to second noun.

[Untar resina]
Instead of tying resina to base antorcha thing:
	if the resina is part of anything (called untado):
		say "La resina ya está untada en [el untado].";
	otherwise if there is a papel thing (called pap) which is part of second noun:
		say "Untas la resina sobre [the pap] que envuelve [the second noun]. Ahora ya es una especie de antorcha cutre. Sólo queda encenderla.";
		now resina is part of second noun;
		now duracion of second noun is 20;
	otherwise:
		say "Untar la resina sobre [the second noun] sería 'gracioso', ¡un mazo resbaladizo para pegar a los orcos!, pero siendo serios para hacer una buena antorcha es necesario poner algo de tela o algo así sobre [the second noun] para que haga de 'mecha' del fuego.".

[En el inverntario]
After printing the name of a base antorcha thing (called base) while taking inventory:
	if base is lit:
		say " (ardiendo)";
	otherwise if there is a papel thing (called pap) which is part of base:
		if resina is part of base:
			say " (con [the pap] empapado en resina envolviendo un extremo)";
		otherwise:
			say " (con [the pap] envolviendo un extremo)".

[Desenrollar]
Instead of taking a papel thing which is part of a base antorcha thing (called base):
	if resina is part of base:
		say "¿Para qué? Ya está untado con la resina, en cualquier caso está echado a perder. El único uso que puede tener todo esto es usarlo como antorcha.";
		stop the action;
	say "Desenvuelves [the base], para separar [the noun].";
	now the player carries the noun.

[Avisar de que 'poner' no vale]
Instead of putting anything on a base antorcha thing:
	say "Poner algo 'sobre' o intentar insertar algo 'en' [the second noun] no serviría de nada. Tal vez pueda serte útil enrollar algo sobre [the second noun] o untarlo, según como sea."

[Si no es 'papel' no de puede enrollar]
Instead of tying liana to machete:
	try tying machete to liana.

Instead of tying a thing to a base antorcha thing:
	say "No ves una forma de enrollar [the noun] sobre [the second noun].".

Instead of tying a base antorcha thing to a thing:
	say "No ves una forma de enrollar [the second noun] sobre [the noun].".

[LIANA]
Instead of tying liana to a thing:
	try tying second noun to liana.

Instead of tying a thing to liana:
	if tamano of noun is enorme or tamano of noun is grande:
		say "[the noun] es demasiado grande para atarlo a la liana.";
	otherwise if noun is a patroller:
		say "¡No se dejaría así como así!";
	otherwise if noun is fixed in place:
		say "Eso no serviría más que para restringir tus movimientos y ya estás bastante 'restringido'.";
	otherwise:
		say "Atas [the noun] a la liana.";
		now noun is part of liana.

Before of taking a thing which is part of liana:
	say "(primero desatas [the noun])";
	now noun is in the location.

[Lista de cosas atadas]
After printing the name of liana:
	if there is a thing which is part of liana:
		let L be list of things which are part of liana;
		say " (atado[if number of entries in L is greater than 1]s[end if]: [L with definite articles])";

Section 13 - Apagar antorcha

[Apagar antochas]
Instead of switching off a base antorcha thing which is lit:
	if the location is in Cuevas or the location is Copa:
		say "Soplas la antorcha, pero ésta no se apaga.";
		bnw;
		say "Si tuviese pulmones de dragón...";
		bnw;
		say "...bueno, si tuviese pulmones de dragón toda la antorcha quedaría completamente reducida a cenizas tras soplar. Claro. Aunque desde luego eso la apagaría.";
	otherwise:
		say "Haces que tu portador cubra la antorcha con tierra hasta apagarla.";
		bnw;
		say "Lamentablemente eso echa a perder la antorcha completamente.";
		if there is a papel thing (called pap) which is part of noun:
			remove pap from play;
		remove resina from play;
		now noun is not lit.

[También se apaga sola]
Every turn:
	if leno is lit:
		decrease duracion of leno by 1;
		if duracion of leno is 0:
			say "La antorcha se agota. Ahora tan sólo vuelve a ser un pedazo de leña seca.";
			if there is a papel thing (called pap) which is part of leno:
				remove pap from play;
			remove resina from play;
			now leno is not lit;
		otherwise if duracion of leno is 5:
			say "El fuego de la antorcha empieza a ser escaso. Ya no debe quedar demasiado tiempo hasta que se consuma.";
	if hueso is lit:
		decrease duracion of hueso by 1;
		if duracion of hueso is 0:
			say "La antorcha se agota y se apaga. El hueso, muy deteriorado por el fuego, también queda inservible.";
			if there is a papel thing (called pap) which is part of leno:
				remove pap from play;
			remove resina from play;
			now hueso is part of esqueleto;
			now hueso is not lit;
		otherwise if duracion of hueso is 5:
			say "El fuego de la antorcha empieza a ser escaso. Ya no debe quedar demasiado tiempo hasta que se consuma. Además el hueso parece bastante estropeado por el efecto de las llamas.";
	if rama is lit:
		decrease duracion of rama by 1;
		if duracion of rama is 0:
			say "La antorcha se agota. Ahora tan sólo vuelve a ser un pedazo de leña seca.";
			if there is a papel thing (called pap) which is part of rama:
				remove pap from play;
			remove resina from play;
			now rama is not lit;
		otherwise if duracion of rama is 5:
			say "El fuego de la antorcha empieza a ser escaso. Ya no debe quedar demasiado tiempo hasta que se consuma.";
	if machete is lit:
		decrease duracion of machete by 1;
		if duracion of machete is 0:
			say "La antorcha se agota. Ahora tan sólo vuelve a ser un cuchillo largo y sucio.";
			if there is a papel thing (called pap) which is part of machete:
				remove pap from play;
			remove resina from play;
			now machete is not lit;
		otherwise if duracion of machete is 5:
			say "El fuego de la antorcha empieza a ser escaso. Ya no debe quedar demasiado tiempo hasta que se consuma.";

Section 14 - Saltar

[Solo tiene sentido en la copa del arbol... para quitarse la vida, claro]
Instead of jumping when the location is Copa:
	say "Saltas de la copa del árbol, confiando en sobrevivir a la caída...";
	bnw;
	try silently going down;
	if the player is icalante:
		say "...y sí, sobrevives, un mono de lo más útil este icalante.";
	otherwise:
		say "...y sobrevives, claro. Tu portador no.";
		morir en el pantano.

Section 15 - Sombreros

Definition: a thing is cubrecabeza if it is sombrero or it is craneo_orco or it is dedal.

Before wearing a cubrecabeza thing:
	if there is a cubrecabeza thing (called otro) which is worn by the player:
		say "No puedes llevar dos... esto... 'sombreros' a la vez y ya llevas puesto [the otro].";
		stop the action.

Section 16 - Entrar/Saltar

Understand "salta [a direction]" or "salta hacia [a direction]" as entering.

Before entering a direction:
	if the location is in Pantano:
		say "¿Saltar es mejor que andar en un pantano? Más bien no, podrías acabar en arenas movedizas o algo peor, mejor ir andando.";
		try going noun instead;
	otherwise if location is Lava and noun is west:
		say "Tomas carrerilla y saltas...";
		bnw;
		say "¡Maldita sea! ¡No es suficiente! Tu portador cae en el centro del río de lava.";
		bnw;
		muerte en la lava;
	otherwise:
		say "Saltar a lo loco hacia [the noun] no tienen ningún sentido." instead.
		
		
Section 17 - Commanding especiales para el juego

[ Comer cosas comestibles, siempre que se lleven y se hayan examinado]
Commanding a edible examined thing carried by player:
	say "(comer [noun])";
	try eating noun.
	
[ Los decorados SOLO se examinan ]
First commanding matched scenery:
	say "(ex [matched scenery])";
	try examining matched scenery.
	
Section 18 - Acciones concreta con algunos escenarios

To say beber el pantano:
	say "El agua del [j]pantano[x] es una fuente de enfermedad, beber de ella significaría la muerte de tu portador, cargar con ella sería inútil.".

Instead of taking matched scenery when matched by is "agua" and location is not Pantano1:
	say beber el pantano.
	
Instead of taking matched scenery when matched by is "agua" and location is Pantano1:
	say "No tienes dónde meter una cantidad significativa de agua.".
	
Instead of drinking matched scenery when matched by is "agua" and location is not Pantano1:
	say beber el pantano.

Chapter 4 - Sinónimos generales

[--------------------------------------------------

   Sección para poner sinónimos 
   generales, tales como los nuevos
   buscares o nuevos verbos

--------------------------------------------------]

[BUSCAR]

Understand "con cuidado/detalle" or "cuidadosamente/detalladamente" or "a fondo" or "a fondo en" as "[cuidado]".

Understand "examina [a thing] [cuidado]"  or "examina [cuidado] [a thing]" as searching.

Understand "el interior" or "dentro" or "interior" as "[dentrode]".
Understand "examina [dentrode] de/del [a thing]" or "examina [dentrode] [a thing]" as searching.
Understand "revisa [a thing]"  as searching.
Understand "busca entre [a thing]" or "busca [a thing]" or "busca [cuidado] [a thing]" as searching.
Understand "en [a thing]" as searching.

[QQQ: Habría que repensar esto un poco mejor]
Understand "en [text]" or "registra [text]" or "examina [dentrode] de/del [text]" or "revisa [text]" or "busca entre [text]" or "examina [cuidado] [text]" as a mistake ("Buscas entre los 'tesoros' del nigromante una forma de salir de este lugar, pero no hay suerte... de momento.") when the location is Lugar_Oo_Drack.
Understand "en [text]" or "registra [text]" or "examina [dentrode] de/del [text]" or "revisa [text]" or "busca entre [text]" or "examina [cuidado] [text]"as a mistake ("No encuentras nada ahí.") when the location is not Lugar_Oo_Drack.

[TOCAR]

Understand "tranquiliza [a thing]" or "tranquilizar [a thing]" as touching.

[Saborear no tiene sentido en esta aventura]

Instead of tasting a thing:
	try eating the noun.

[COGER]

Understand the command "arrancar" or "arranca" as "coge".

[ATACAR]

Understand "ataca [someone]" as attacking.

[ATAR, unimos las variantes de rodear, untar, etc... necesairas en atar]

Understand "une [a thing] en/con/sobre [a thing]" as tying it to. [¡¡No estaba!!]
Understand the commands "unta", "lia","enrolla","envuelve" and "envolver" as "une".

[VESTIR, no me gusta que no exista este sinónimo]
Understand "pon [a thing]" as wearing.
Understand "viste [a thing]" or "vestir  [a thing]" as wearing.

[DEJAR]
Before of putting a thing on down:
	try dropping the noun instead.

[DESATAR]
Understand "desata [a thing]" as taking.

[Para el icalante]
Understand "libera [a thing]" as dropping.

Chapter 4 - Acciones nuevas

Section 1 - Comando salidas

[Un poco fake]

Understand the commands "salidas" as something new.

Viewing exits is an action applying to nothing.

Understand "salidas" or "x" or "salida" as viewing exits.

Carry out viewing exits:
	if location is Pantano14:
		say "Desde aquí crees que la entrada a los sótanos de la fortaleza de Sady Omú se encuentra hacia el [south]. Aunque es difícil de saber si esa es la mejor dirección. La vegetación cortará muchos caminos y el [j]pantano[x] es igual de frondoso por todas partes.";
	otherwise if location is Pantano20:
		say "Casi seguro que la fortaleza de Sady Omú se encuentra hacia el oeste.";
	otherwise if location is Pantano24:
		say "Para encontrar la entrada a los sótanos de la fortaleza ante todo hay que salir del túmulo, ya sabes, hacia arriba.";
	otherwise if location is Copa:
		say "Para ir hacia la entrada de los sótanos de la fortaleza de Sady Omú primero tienes que bajar de este árbol.";
	otherwise if location is Pantano28:
		say "Desde este infecto rincón se puede regresar al pantano, hacia el [south], pero la ruta hacia Sady Omú pasa entrar en las cavernas.";
	otherwise if location is Cueva1:
		say "Desde este nido de deavorks, el camino parece oscuro e incierto en cualquier dirección excepto hacia el [south], por donde se puede regresar al pantano.";
	otherwise if location is Lava:
		say "No te cabe duda de que tu destino está al oeste, en la fortaleza de Sady Omú.";
	otherwise if location is Lugar_Oo_Drack:
		say "En alguna parte entre todos estos 'despojos' de batallas debe haber una salida de esta cámara del tesoro, un camino hacia el nigromante.";
	otherwise if location is parte del pantano:
		say "[one of]En este lugar lleno de barro y [j]plantas[x] cualquier dirección parece igualmente válida... sin embargo... algo, tal vez tu intuición de dragón, te dice que la manera más rápida de llegar hasta Sady Omú sería... uhm... sí, decididamente hacia [the dircuevas of the location].[or]En todas direcciones parece haber [j]plantas[x] y barro pero tu intuición de dragón, te hace pensar que la entrada a las cavernas bajo la fortaleza de Sady Omú se encuentra hacia [the dircuevas of the location].[or]Algo en tu atrapada mente de dragón te hace pensar en [the dircuevas of the location] como la mejor opción, pero parece que se podría caminar hacia cualquier dirección.[or]Uhm... para Sady Omú: [the dircuevas of the location], sin duda.[or]Intuyes que Sady Omú está hacia [the dircuevas of the location].[at random]";
	otherwise if in darkness:
		say "Incluso con tu visión de dragón esta oscuridad es impenetrable. No hay forma de saber en qué dirección se puede ir desde aquí.";
	otherwise if location is cueva oscura:
		say "Grietas, grietas y más grietas. Túneles horadados por la colonia de deavorks y cosas probablemente más sucias. ¡Se puede ir en cualquier dirección! Todas parecen igual de improbables y desagradables.".

Section 2 - Hechizos

[Pergamino azul]
Casting blue is an action applying to nothing.

Understand "Moroth Vankut Morai" or "decir Moroth Vankut Morai" as casting blue.

Carry out casting blue:
	if pergamino azulado is not carried:
		say "Pronuncias 'Moroth...' y todo eso, pero no ocurre nada en absoluto. Tal vez con uno de esos pergaminos entre las manos. Los humanos sostienen sus pergaminos cuando lanzan sus hechizos.";
	otherwise:
		remove pergamino azulado from play;
		say "Pronuncias las palabras del dorso del pergamino azulado y...";
		bnw;
		say "...vaya esto debe ser magia de los humanos, ya que sientes un escalofrío que recorre todo el cuerpo de tu portador...";
		bnw;
		if the location is Lava:
			say "...un frío intenso surge del pergamino y se dirije directamente al río de Lava, transformando su gloriosa superficie ígnea en mera piedra negra.";
			now Lava is congelada;
			now Lava is dark;
			current image;
		otherwise:
			say "...vaya es más que un escalofrío, es... un frío muy intenso...";
			bnw;
			say "...esto... más bien un frío mortal.";
			bnw;
			say "...¡todo queda completamente congelado!... y, por su puesto, tu portador muere.";
			congelar the location;
			morir en cualquier parte;
			current image.

[Pergamino amarillo]
Casting yellow is an action applying to nothing.

Understand "Mandai Bukah" or "decir Mandai Bukah" as casting yellow.

Carry out casting yellow:
	if pergamino amarillo is not carried:
		say "Pronuncias 'Mandai...' y todo eso, pero no ocurre nada en absoluto. Tal vez con uno de esos pergaminos entre las manos. Los humanos sostienen sus pergaminos cuando lanzan sus hechizos.";
	otherwise:
		remove pergamino amarillo from play;
		say "Pronuncias las palabras del dorso del pergamino amarillo y...";
		bnw;
		say "...se produce un fogonazo de luz.";
		bnw;
		say "Pierdes la capacidad de ver durante unos segundos.";
		bnw;
		say "Cuando recuperas la vista encuentras que el pergamino amarillo ha desaparecido";
		if cuenta is carried:
			say " y parece que la cuenta de cristal ha capturado algo de toda esa luz, ahora brilla.";
			now cuenta is lit;
		otherwise:
			say ".";
		say  "La luz parece haber asustado también a todas las [j]criaturas[x].";
		repeat with mov running through patroller:
			if mov is in the location and mov is not the player:
				try silently mov going a random direction;
				try silently mov going a random direction;
				try silently mov going a random direction;
				try silently mov going a random direction.


Section 3 - Examina todo

Fullexamining is an action applying to nothing.

Understand "examina todo" as fullexamining.

Carry out fullexamining:
	repeat with item running through visible things:
		if item is not scenery and item is not backdrop and item is not partdecoration:
			say "[item]: ";
			try examining item.

Section 4 - Aumentar y disminuir

Sizing is an action applying to nothing.

Understand "aumenta" or "aumentar" or "disminuye" or "disminuir" or "reduce" or "reducir" as sizing.

Carry out sizing:
	say "Esas cosas ya no tienen sentido y solamente podrían poner en peligro el control que tienes con tu portador actual.".

Section 5 - Brillar

Shining is an action applying to nothing.

Understand "brilla" or "brillar" as shining.

Carry out shining:
	if the player is an orco:
		if there is an orco which is not the player in the location:
			cambiar de portador orco;
	otherwise: 
		say "Tu ojo esmeraldino brilla intensamente. Tan mono como inútil en la actual situación.".

Section 6 - Pinchar (bajo deseos de Urba)

Stucking is an action applying to one thing.
Dstucking is an action applying to two things.

Understand "pincha [a thing]" as stucking.
Understand "pincha [a thing] con/en [a thing]" as dstucking.

Carry out of dstucking:
	if the second noun is aguja:
		try stucking the noun;
	otherwise:
		try attacking the noun.

Carry out of stucking:
	if aguja is not carried:
		say "¿Con qué? Tal vez si tuviésemos en la mano alguna clase de aguja.";
	otherwise:
		if noun is a patroller:
			say "Piensas en pinchar [al noun] con la extraña aguja, pero la verdad es que parece una mala idea.";
		otherwise:
			say "Pinchas [al noun] con la extraña aguja, sin que ocurra nada especial.";

Section 7 - Alimentar (petición de Urba)

Feeding is an action applying to one thing.

Understand "alimenta a/al [a thing]" or "alimenta [a thing]"  as feeding.

Dfeeding is an action applying to two thing.

Understand "alimenta a/al [a thing] con/dandole [a thing]" or "alimenta [a thing] con/dandole [a thing]"  as dfeeding.

Carry out of dfeeding:
	if the player is the noun:
		try eating the second noun;
	otherwise:
		try giving noun to second noun.

Carry out of feeding:
	if the noun is the player:
		if the player is icalante and there is a vegetal thing (called verdura) which is carried by the player:
			try eating verdura;
		otherwise if the player is an orco and there is a carne thing (called filete) which is carried by the player:
			try eating filete;
		otherwise if the player is an orco and there is a cadaver (called muerto) which is carried by the player:
			try eating muerto;
		otherwise if there is a edible thing (called comida) which is carried by the player:
			try eating comida;
		otherwise:
			say "¿Con qué?";
	otherwise if the noun is lobo:
		if hueso is carried:
			try giving hueso to lobo;
		otherwise if there is a edible thing (called comida) which is carried:
			try giving comida to lobo;
		otherwise if there is a cadaver (called cad) which is carried:
			try giving cad to lobo;
		otherwise:
			say "¿Con qué?";
	otherwise if the noun is icalante:
		if goolos is carried:
			try giving goolos to icalante;
		otherwise if there is a vegetal thing (called comida) which is carried:
			try giving comida to icalante;
		otherwise:
			say "¿Con qué?";
	otherwise:
		say "No tiene sentido alimentar [al noun].".

Section 8 - Golpear nuevo

Hiting it with is an action applying to two thing.

Understand "golpea a/al [a thing] con [a thing]" or "golpea [a thing] con [a thing]" or "golpea con [a thing] [a thing]" or "golpea con [a thing] a/al [a thing]" as hiting it with.

Carry out of hiting:
	say "Golpeas [the noun] con [the second noun]";
	if (noun is metalica and second noun is chisposa) or (noun is chisposa and second noun is metalica):
		say " consiguiendo una breve chispa";
		now HacerFuego is 1;
	otherwise if noun is metalica and second noun is metalica:
		say " provocando un ruido metálico";
	otherwise if noun is chisposa and second noun is chisposa:
		say " pero no parece que salten chispas";
	otherwise:
		say " sin que eso parezca llevar a nada útil";
	say ".".

Instead of hiting grilletes with anything:
	try opening the noun.

Instead of hiting anything with grilletes:
	try opening the noun.

Section 9 - Atacar con algo

[ No lo vamos a usar pero informamos ]
Dattacking is an action applying to two thing.
Understand "ataca [a thing] con [a thing]" as dattacking.

Check dattacking:
	if second noun is noun:
		say "Atacar [the noun] consigo mismo... uhm... tal vez si fuese tu portador.";
		stop the action;
	if second noun is not carried:
		say "(intentas coger [the second noun] primero)";
		try taking second noun;
		if second noun is not carried:
			stop the action;
	if mejor arma is nothing:
		say "Piensas en atacar con [the second noun] pero no es un arma para nada.";
		stop the action;

Carry out of dattacking:
	let arma be mejor arma;
	if the second noun is not arma:
		say "Piensas que atacar con [the second noun] pero te das cuenta que usar [the arma] es mejor.";
	try attacking noun.

Section 10 - Apuntar con el dedo

Pointing is an action applying to one thing.

Understand "senala [a thing]" or "senalar [a thing]" or "apunta [a thing]" or "apuntar [a thing]" or "apunta con el dedo [a thing]" or "apuntar con el dedo [a thing]" as pointing.

Carry out pointing:
	if icalante is in the location and icalante is i_siguiendote:
		say "Señalas [el noun] y el icalante l[o noun] mira con interés.";
		if noun is liana and liana is unida:
			now liana is cortada;
			now liana is not fixed in place;
			say "Finalmente el icalante arranca la liana de un tirón y la coge.";
			move liana to icalante;
		otherwise if the noun is carried by icalante or the noun is in a container which is carried by icalante:
			try icalante dropping the noun;
		otherwise if (the tamano of noun is grande or the tamano of noun is enorme) and the noun is not fixed in place:
			try icalante taking the noun;
	otherwise:
		say "Señalas [the noun] aunque eso no produce ninguna reacción.".

Section 11 - Ir a la lava con todo lo necesario DEBUG 

Laving is an action applying to nothing.

Understand "lava" as laving.

Carry out laving:
	now mosaico is leido;
	now icalante is i_siguiendote;
	move player to Lava;
	move pergamino azulado to player;
	now lava is congelada;
	deactivate icalante;
	move cuenta to player;
	move dedal to player;
	now cuenta is lit.

Section 12 - Control de la musica

Musicing is an action out of world applying to nothing.
Efecting is an action out of world applying to nothing.

Understand "musica" as musicing.
Understand "efectos" as efecting.

Carry out musicing:
	cambiar estado musica.

Carry out efecting:
	cambiar estado efectos.

Section 13 - Ayuda 'Fake'

Helping is an action out of world applying to nothing.

Understand "ayuda" as helping.

Carry out helping:
	say "Este relato no contiene 'ayudas'. Tal vez te resulten de ayuda acciones tales como: escuchar, mirar hacia alguna dirección o 'salidas'.".

Section 14 - Lanzar completamente nuevo

Nthrowing is an action applying to two things.

Understand "lanza [a thing] a/por/contra [something]" as nthrowing. 
[Understand the command "arroja" as "lanza". ]
Understand "lanza a [someone] por/contra [something]" as nthrowing.
Understand "sobre" or "por encima de" as "[sobre]".
Understand "lanza [a thing] [sobre] [a thing]" as nthrowing.

Carry out nthrowing:
	if noun is not part of liana:
		try throwing noun at second noun;
	otherwise:
		try throwing liana at second noun.

Section 15 - Regresar a un lugar 

A room can be conocido. A room is usually not conocido.
A thing can be conocido. A thing is usually not conocido.

After going to a room:
	now all not conocido things in the location are conocido;
	now location is conocido;
	continue the action.

After examining a not conocido thing:
	now noun is conocido.

Backing is an action applying to one topic.

Understand "regresa a [text]" as backing.

Carry out backing:
	say "Uhm... la verdad es que no tienes nada claro dónde estará eso.".

Table of Destinos
topic				objeto
"manzano"			manzano
"patio"				Pantano15
"manantial"			manantial
"arbusto"			arbusto
"mosaico"			mosaico
"destello"			destello
"esqueleto"			esqueleto
"hiedra"				hiedra espinosa
"jaula"				jaula_falsa
"liana"				liana
"monticulo" or "tumulo"		monticulo
"piedras" or "monton"		monton piedras
"goolos" or "rastrera" or "planta"	planta rastrera
"protector"			protector
"bulto"				bulto
"matorral"			matorral
"arbolillo"			arbolillo
"castillo" or "fortaleza"		PuertaCastillo
"campamento" or "orcos" or "orco"	Pantano19
"arana" or "telarana"		Pantano10
"arenas" or "movedizas"		Pantano13
"inicio"				Pantano14
"refugio"			Pantano16
"torreon" or "ruinas" or "icalante"	Pantano17
"huesos" or "serpiente"		Pantano18
"inquietante"			Pantano25
"cuevas" or "entrada"		Pantano28
"lava"				Lava
"salida"				Cueva1

To back to (obj - an object):
	if obj is conocido room:
		if the location is the obj:
			say "Piensas en regresar a [topic understood] pero ya estás en ese lugar. Todo este confuso [j]pantano[x] ya te está mareando.";
		otherwise:
			let way be the best route from the location to obj;
			say "Uhm... ese lugar... tu intuición te dice que está hacia [the way].";
			try going the way;
	otherwise if obj is conocido thing:
		if the obj is visible:
			say "Piensas en regresar a donde [the obj] pero ya estás en ese lugar. Todo este confuso [j]pantano[x] ya te está mareando.";
		otherwise if obj is in NoLugar or obj is off-stage:
			say "Uhm... ¿dónde había de eso? No recuerdas ahora.";
		otherwise:
			let way be the best route from the location to the location of obj;
			say "Uhm... [the obj]... tu intuición te dice que está hacia [the way].";
			try going the way;
	otherwise:
		say "¿Realmente hemos visto eso? No lo recuerdas.".

Instead of topiccommanding a topic listed in the Table of Destinos:
	back to the objeto entry.

Instead of backing a topic listed in the Table of Destinos:
	back to the objeto entry.

Part 2 - El Mapeado

Chapter 1 - El Pantano

Pantano is a region.

Parte del pantano is a kind of room.

[Para el comando salida debido a la lentitud en glulx de 'the best route' en este mapeado]
A parte del pantano has a direction called DirCuevas. The DirCuevas of a parte del pantano is usually south.

[Descripción siempre idénticada para cada sección del pantano por número]
A parte del pantano has a number called selected description. The selected description of a parte del pantano is usually 0.

[Para complicar aún más el 'bonito' laberinto, los nombres y descripciones de muchas habitaciones son al 'azar']
The printed name of a parte del pantano is usually "[one of]Un lugar como otro cualquiera del pantano[or]Entre árboles del pantano[or]En el apestoso [j]pantano[x] [j]Hapawa[x][or]En el barro del pantano[at random]".
The description of a parte del pantano is usually "[descripción de pantano de número selected description].".

To say descripción de pantano de número (sd - a number):
	choose row with a num of sd in the Table of descripciones de pantano;
	say description entry.

Table of descripciones de pantano
num	description	imagen
0		""			Figure of Pantano1
9	"Agua sucia y oler pestilente. Árboles amenazadores y juncos putrefactos. Eso es todo lo que se puede encontrar al [south] del castillo del nigromante"	Figure of Pantano1
1	"Humedad, [j]plantas[x] sucias, probablemente, pestilencia, árboles amenazadores y juncos putrefactos. En definitiva el brumoso [j]pantano[x] de [j]Hapawa[x]. Ojalá salgamos pronto de aquí"	Figure of Pantano1
2	"La [j]luz[x] se oculta tras las copas de los árboles y se difumina aún más con la sutil [j]bruma[x] que recorre el [j]pantano[x]. Uno no puede dejar de pensar que simplemente prefiere no entrar en este lugar abandonado"	Figure of Pantano5
3	"Veamos... hay [j]árboles[x] retorcidos de formas imposibles. Y [j]agua[x], mucho agua sucia, agua que tan pronto te llega al tobillo como a la cintura y [j]sonidos[x] extraños. En definitiva seguimos en el [j]pantano[x] y en su [j]bruma[x]"	Figure of Pantano3
4	"Más y más [j]plantas[x] del pantano.  Nenúfares sucios y juncos putrefactos. Suelo del pantano. Sonidos del pantano. Bruma de los pantanos. Probablemente olores del pantano. En definitiva, queda claro que no hemos salido de [j]Hapawa[x]"	Figure of Pantano4
5	"La oscuridad sólo disimula en parte la fealdad de este [j]lugar[x]. Sólo dragones menores vivirían en este lugar. Ni siquiera, sólo lo harían si además carecieran de autoestima"	Figure of Pantano2
6	"Es una suerte que haya [j]bruma[x] por todas partes, eso disimula un poco el que este lugar sea pura [j]putrefacción[x]. Aunque tanta [j]humedad[x] es probablemente lo que ha transformado este bosque con sus imponentes árboles en el adefesio que es en la actualidad"	Figure of Pantano6
7	"Dicen que [j]Hapawa[x] fue en el pasado uno de los feudos dragones. No puedo imaginar quién querría habitar en este lugar. Tal vez incinerándolo todo hasta transformarlo en cenizas... pero ni siquiera, probablemente de esta forma simplemente sería un lodazal negro y gris"	Figure of Pantano1
8	"[j]Inmundicias[x] flotantes sobre aguas malolientes. No hay nada más en este pantano. Lo mejor sería salir lo antes posible de aquí. Tu destino te espera si convences al nigromante de que deshaga el maleficio que han lanzado sobre tí"	Figure of Pantano3
10	"La vegetación es tán apretada en [j]Hapawa[x] que la [j]luz[x] se transforma, el día es noche, como si en lugar de un [j]pantano[x] fuese una caverna. Una caverna tenebrosa y azulada"	Figure of Pantano7
11	"El agua discurre por esta parte del [j]pantano[x] casi como si fuesen auténticos riachuelos, pero si se mira de cerca tan sólo son zanjas llenas de purulentos fluídos estancados, a penas ocultos por la [j]bruma[x]"	Figure of Pantano7

[ Fijar las descripciones de forma aleatoria, pero fija ]
When play begins:
	repeat with pant running through parte del pantano:
		while pant no tiene descripción correcta:
			now selected description of pant is a random number from 1 to 11.
			
To decide if (loc - a parte del pantano) no tiene descripción correcta:
	if selected description of loc is 0:
		decide yes;
	let current figure be Figure of Pantano1;
	choose row with num of selected description of loc in the Table of descripciones de pantano;
	now current figure is imagen entry;
	let adjacent figure be Figure of Pantano1;
	repeat with adja running through parte del pantano which are adjacent to loc:
		if adja is loc:
			next;
		[say "[loc] [selected description of loc] vs [adja] [selected description of adja].";]
		if selected description of loc is selected description of adja:
			decide yes;
		[not same image adjacent]
		choose row with num of selected description of adja in the Table of descripciones de pantano;
		now adjacent figure is imagen entry;
		if adjacent figure is current figure:
			decide yes;
	decide no.
	

[Todos las habitaciones del pantano tienen una serie de decorados iguales]
The decoration of pantano is Table of DecoPantano.

Table of DecoPantano
topic	description	genre 
"inmundicia" or "porqueria" or "musgo" or "musgos" or "suciedad"		"Cosas putrefactas que no apetece comerse, es decir, [j]plantas[x] muertas y putrefactas, por lo general, que no tienen ese magnífico olor a carne muerta. Claro que en tu estado poco puedes [j]oler[x], es una de las cosas que peor sobrellevas."	F
"pantano" or "manglar" or "hapawa" or "cienaga" or "cienagas" or "lugar"	"Aunque algunos de tus congéneres menores, sobre todo esos minúsculos dragones verdes de aliento pestilente, viven en los pantanos, por lo general cualquier dragón que se precie evitará vivir en estos lugares repletos [j]agua[x] y [j]suciedad[x]. Los seres que los habitan son lo más rastrero de entre los animales y las [j]plantas[x]."	M
"bosque"	"Más que un bosque se trata de un manglar repleto de aguas estancadas."	M
"aguas" or "agua" or "charco" or "charcos" or "humedad"or "fluidos" or "estancados"		"Las [j]aguas[x] de este [j]pantano[x], como el de todos, son sucias y pestilentes. Cuando un humano las cruza no puede verse sus propios pies. Sin embargo algunos de los habitantes de las aguas las encuentran lo bastante claras como para arrancarle los dedos."	F
"putrefaccion" or "pestilencia" or "olores"	"Por suerte en tu estado no puedes [j]oler[x] nada, pero seguro que está por todas partes."	F
"criaturas" or "criatura" or "bestias" or "seres"		"Se escuchan en todas direcciones pero no las ves. Son bestias avergonzadas de su aspecto deplorable, así que huyen en cuanto cualquiera se les acerca."	FP
"luz"	"Llamar [j]luz[x]a la penumbra que resulta tras atravesar las copas del manglar, es como una suerte de chiste cruel."	F
"bruma" or "niebla" or "neblina"	"Elevándose desde las cenagosas [j]aguas[x] una sempiterna nieblina lo desdibuja todo en este [j]pantano[x]."	F
"fortaleza" or "castillo"	"Realmente no se puede ver la fortaleza desde aquí. La [j]bruma[x] y los árboles la ocultan."	F
"nenufares" or "nenufar"	"En jardines estas plantas crees que pueden resultar hermosas, al menos para los humanos, aquí en el [j]pantano[x], solo es una pieza más del verdor sucio."	MP
"juncos" or "junco"	"Tubos podridos rellenos de moho."	MP
"cuevas" or "cueva"	"En el final del [j]pantano[x] está tu via de entrada al [j]castillo[x]. Un agujero negro de salvación."	FP
"sonidos" or "sonido"	"KK"	MP
"rama" or "ramas"	"Hay tantas ramas en el [j]pantano[x] y todas retorcidas."	M
"arbol" or "arboles" or "frondosidad" or "copas" or "plantas" or "vegetacion" or "maleza"	"Son [j]árboles[x] del pantano, no importa si están vivos o muertos, siempre están recubiertos de enormes cantidades de [j]musgo[x] u otras cosas peores, todas ellas clasificables dentro de la categoría de porquería. Bueno, algunas tal vez mereciesen la categoría de inmundicia."	MP

Before taking matched scenery when the matched by is "rama" and rama is not visible:
	move rama to location;
	say "Quiebras una de las ramas de uno de los árboles del pantano.".

Instead of taking matched scenery when the matched by is "rama":
	try taking rama.

Instead of taking matched scenery when the matched by is "arbol":
	say coger arboles.
	
Instead of taking matched scenery when the matched by is "arboles":
	say coger arboles.

Instead of taking matched scenery when the matched by is "plantas":
	say coger arboles.

To say coger arboles:
	say "Coger los árboles del pantano... buena idea, y de paso quemarlos a todos y destruir este lugar apestoso... Ojalá se pudiese, ¡ojalá!.".

Instead of climbing or entering matched scenery when the matched by is "arbol":
	say trepar arboles.

Instead of climbing or entering matched scenery when the matched by is "arboles":
	say trepar arboles.

Instead of climbing or entering matched scenery when the matched by is "plantas":
	say trepar arboles.
	
To say trepar arboles:
	say "Trepar aquí no parece tener mucho sentido y sería bastante arriesgado. Parece fácil resbalarse en estos troncos y ramas cubiertos de musgos húmedos.".

Instead of doing anything except metacommanding with matched scenery when the matched by is "sonido":
	try listening.

Instead of doing anything except metacommanding with matched scenery when the matched by is "sonidos":
	try listening.

[Entretenerse a oler el pantano tiene que resultar desagradable]
Instead of smelling while the location is in Pantano:
	say "No puedes oler nada en este estado, pero tu portador sí... Veamos: [one of]olor a [j]putrefacción[x].[or]olores extraños, probablemente de montones de esporas de todos esos [j]musgos[x]. ¿Serán tóxicos? Sí, casi seguro.[or]puff, una mezcla de olores completamente insoportable. Suerte que no lo estás oliendo con tu propia nariz de dragón.[or]asqueroso, asqueroso... y... un poco más de asqueroso...[at random][line break]No esperabas menos de este pantano.".

[Examina del suelo y del techo]
Instead of examining down while the location is in Pantano:
	if the location is Pantano17:
		say "Todo lo que queda del viejo torreón. Un robusto y resistente suelo. No parece ser más que eso, un recuerdo del pasado.";
	otherwise if the location is Pantano10:
		say "[if Pantano10 is quemado]El suelo está negro de la ceniza.[otherwise]El cieno y el agua sucia están cubiertos aquí de una fina capa de telarañas pegajosas.[end if]";
	otherwise if the location is Pantano26:
		say "Esta tierra fue cultivada en el pasado por los humanos. Es evidente. Restos de surcos y montículos de tierra, vano intento de dominar a la naturaleza.";
		if calabaza is off-stage and resuelto of Pantano26 is 0:
			bnw;
			say "¡Mira! ¡Una calabaza aún ha crecido por aquí! Igual resulta de utilidad.";
			move calabaza to Pantano26;
			now resuelto of Pantano26 is 1;
	otherwise:
		say "[one of]Aquí y allá hay algo de suelo seco cubierto de [j]plantas[x], pero por lo general todos son charcos pestilentes.[or]Más que nada agua sucia.[or]Aguas oscuras en las que se ocultan [j]criaturas[x] menores.[at random]".

Instead of examining up while the location is in Pantano:
	say "[one of]No se puede ver más que fugazmente el anhelado cielo. Lo demás lo cubren las ramas de estos odiosos árboles.[or]Los árboles lo cubren casi todo transformando la [j]luz[x]en una sucia penumbra.[or]Buscas el cielo al que anhelas volver mirando hacia arriba, pero tan sólo puedes ver ramas de árboles.[at random]".

To examina direccion fortaleza:
	say "No es que se vea realmente, pero estás casi seguro que en aquella dirección está la fortaleza de Sady Omú.".

To examina direccion sur:
	say "No se ve nada desde aquí, pero estás casi seguro de que la entrada a las cavernas está en esa dirección.".

[Examinar una dirección]
Instead of examining a direction while the location is in Pantano:
	if location is Pantano14:
		if noun is: 
			-- north:
				examina direccion fortaleza;
			-- northeast:
				examina direccion fortaleza;
			-- northwest:
				examina direccion fortaleza;
			-- south:
				examina direccion sur;
			-- southeast:
				examina direccion sur;
			-- southwest:
				examina direccion sur;
			-- otherwise:
				say "En esa dirección no ves nada de interés.";
	otherwise if location is PuertaCastillo:
		if noun is:
			-- north:
				say "En esa dirección se levanta la fortaleza del nigromante. Altas torres sobre un foso de brea ardiente.";
			-- south:
				say "En esa dirección está el pantano, un manglar de árboles sucios y retorcidos.";
			-- otherwise:
				say "En esa dirección tan sólo pueden verse las paredes abruptas de la colina que sostiene a la fortaleza.";
	otherwise if location is Copa:
		if noun is:
			-- north:
				say "Lejos, sobresaliendo sobre el [j]pantano[x] se divisa lo que podría ser la fortaleza de Sady Omú.";
			-- south: 
				say "Hay un pequeño claro en esa dirección.";
			-- otherwise:
				say "El [j]pantano[x] de [j]Hapawa[x] continúa interminable en esa dirección.";
	otherwise if location is Pantano28:
		if noun is:
			-- north:
				say "Hay un túnel horadado en la pared, en esa dirección.";
			-- south: 
				say "Ahí te espera el pantano.";
			-- otherwise:
				say "En esa dirección sólo se ve la pared de roca impenetrable.";
	[Verificamos varias cosas, una a una]
	otherwise:
		let destino be the room the noun from the location;
		if the destino is Pantano1:
			say "Se escucha un refrescante sonido de agua corriente en esa dirección.";
		otherwise if the destino is Pantano10:
			say "[if Pantano10 is quemado]Por allí el [j]pantano[x] parece quemado.[otherwise]No estás seguro, pero algo blanco parece cubrir el [j]pantano[x] en aquella dirección.[end if]";
		otherwise if the destino is Pantano19:
			say "Un hedor insoportable viene de esa dirección.";
		otherwise if the destino is Pantano23:
			say "En aquella dirección los animales callan, como si fuese irrespetuoso parlotear allí.";
		otherwise if the destino is Pantano25:
			say "Por un momento te ha parecido que los árboles mismos se movían en esa dirección, pero debe haber sido una ilusión óptica.";
		otherwise if the destino is Pantano28:
			say "Esa parte del [j]pantano[x] parece pegada a alguna clase de pared. Tal vez sea la base del castillo de Sady Omú, o sea tu destino.";
		otherwise if deavork is in destino:
			say "Las [j]plantas[x] en esa dirección se mueve, tiemblan, como si algo las estuviese zarandeando.";
		otherwise if lobo is in destino and hambre of lobo is greater than 15:
			say "De entre las [j]plantas[x] en esa dirección se escuchan quejidos lastimosos."; 
		otherwise if there is a orco in the destino:
			say "En esa dirección no parece haber más que [j]plantas[x] como en todas direcciones, aunque es cierto que cierto tufo especialmente apestoso viene desde allí.";
		otherwise if icalante is in destino and icalante is i_enfadado:
			say "Desde esa dirección parecen venir extraños gruñidos y quejidos inhumanas.";
		otherwise:
			say "Plantas, [j]plantas[x] y más plantas del pantano, eso es todo lo que se ve.".

Section 1 - Fuente

Pantano1 is a parte del pantano in Pantano. 

The printed name of Pantano1 is "Un rincón salubre".
The description of Pantano1 is "Este lugar no parece tan desagradable como el resto. La presencia de un manantial de [j]agua[x] limpia debe tener que ver en el hecho de que las [j]plantas[x] parecen... sanas.".

The decoration of Pantano1 is Table of DecoFuente.
The DirCuevas of Pantano1 is south.

Table of DecoFuente
topic			description							genre
"arbol" or "arboles" or "frondosidad" or "copas" or "plantas" or "vegetación"	"Aunque cubiertos de musgo, estos árboles parece árboles algo más normales, sanos, que en el resto del pantano."	M
"inmundicia" or "porqueria" or "musgo" or "suciedad"		"Cosas putrefactas que no apetece comerse, es decir, [j]plantas[x] muertas y putrefactas, por lo general, que no tienen ese magnífico olor a carne muerta. Pero aquí, junto a la fuente parecen algo más hermosas."	F
"aguas" or "agua" or "charco" or "charcos"		"Las [j]aguas[x] de este [j]pantano[x], como el de todos, son sucias y pestilentes. Sin embargo en este punto, debido al manantial parecen incluso potables."	M
"luz"	"Incluso la luz parece más vibrante en este punto."	F

[Salidas]
Pantano4 is north of  Pantano1.
Pantano2 is south of Pantano1.
Pantano4 is east of Pantano1.
Pantano27 is west of Pantano1.

Section 2 - Localidad vacía 1

Pantano2 is a parte del pantano in Pantano.

The DirCuevas of Pantano2 is east.

[Salidas]
Pantano4 is north of Pantano2.
Pantano3 is south of Pantano2.
Pantano5 is west of Pantano2.
Pantano26 is east of Pantano2.

Section 3 - Lugar de la cruz

Pantano3 is a parte del pantano in Pantano.

Pantano3 has a number called uvturn. The uvturn of Pantano3 is 0.

The DirCuevas of Pantano3 is north.

[Salidas]
Pantano2 is north of Pantano3.
Pantano6 is east of Pantano3.
Pantano6 is south of Pantano3.
Pantano11 is west of Pantano3.

Section 4 - Localidad vacía 2

Pantano4 is a parte del pantano in Pantano.

The DirCuevas of Pantano4 is west.

[Salidas]
PuertaCastillo is north of Pantano4.
Pantano1 is south of Pantano4.
Pantano5 is east of Pantano4.
Pantano2 is west of Pantano4.

Section 4bis - Puerta del castillo de SadyOmu (lugar mortal de necesidad)

PuertaCastillo is a parte del pantano in Pantano. It is female.
The default picture of PuertaCastillo is Figure of Castillo.
The printed name of PuertaCastillo is "El camino hacia la fortaleza".
The description of PuertaCastillo is "Estás en una estrecha senda entre matorrales espinosos junto a la ladera de la montaña sobre la que se alza la fortaleza de Sady Omú. Al [north] se divisan las formidables puertas de hierro de la misma y el foso de brea ardiente. Seguir hacia allí sería suicida. Mejor retroceder hacia el [j]pantano[x] al [south].".
The DirCuevas of PuertaCastillo is south.

The decoration of PuertaCastillo is Table of DecoPuertaCastillo.

Table of DecoPuertaCastillo
topic			description							genre
"senda" or "camino"	"Rodea la ladera de la montaña hasta la entrada a la fortaleza."	M
"matorrales" or "espinosos"	"Realmente impenetrables."	MP
"puertas" or "puerta"	"Grandiosas pero sucias. Impersionantes pero oxidadas. Impenetrables pero abiertas. Una contradicción en sí mismas, como el propio Sady Omú, un humano colaborando con los dragones y los orcos."	FP
"fortaleza"	"Puertas de hierro negro. Oscuros torreones. Cadáveres como decoración. Y un foso de brea llameante. Todo un lugar para vivir."	F
"torreones" or "torreon"	"Realizados en basalto negro y retorcidos por el paso del tiempo y la incapacidad para la construcción... ¿de los orcos?"	MP
"basalto" or "negro" or "negra"	"El basalto negro es la piedra de construcción de los nigromantes humanos. ¿Por qué será?"	M
"foso" or "brea" or "llamas" or "llameante"	"Lo más sorprendente de esta fortaleza es este ancho corredor repleto de brea ardiente. Es casi como un muro invisible de calor."	F
"calor"	"El calor es insoportable para tus portadores en el pantano. Pero aquí, con la presencia del foso siente como casi desfallecen sus fuerzas por el calor."	M
"cadaveres" or "restos" or "decoración" or "orcos"	"Siempre es de buen gusto colgar los restos de tus enemigos a las puertas de tu casa. Es decorativo. Asusta a los cobardes. Puedes comértelos más tarde... todo ventajas. En este caso el nigromante ha colgado tanto a sus enemigos como a muchos orcos. Los orcos siempre merecen que los cuelguen."	MP

[Salidas]
Pantano4 is south of PuertaCastillo.
PuertaCastillo is north of PuertaCastillo.

Instead of going north from PuertaCastillo:
	say "'¡Qué diablos!', piensas, 'Soy un maldito dragón dorado. Esos apestosos guardias tienen que reconocerme y llevarme a hablar con el nigromante'.";
	bnw;
	say "Así que avanzas decididamente hacia las puertas de la fortaleza. Divisas los oscuros torreones adornados con cadáveres. Superas el foso de brea llameante caminando por el puente levadizo de hierro-dragón y...";
	bnw;
	say "...los soldados orco, ocultos en las murallas reaccionan rápida y mortalmente. Una lluvia de flechas negras matan a tu portador con efectividad.";
	if the player is an orco:
		bnw;
		say "¡Esos sucios orcos de vigilancia! Ni siquiera siendo uno de los suyos se lo piensan antes de cumplir la orden de matar a cualquier cosa que se acerque por la puerta principal sin previo aviso.";
	bnw;
	say "'No es tan grave', piensas, 'cuando vengan a examinar el cuerpo domino a uno de esos sucios arqueros orcos y con él me presento ante el nigromante'.";
	bnw;
	say "Pero no tanta suerte... un guardia, efectivamente, sale de la fortaleza, pero no te da ninguna oportunidad. De una patada arroja a tu portador a las llameantes profundidades del foso de brea.";
	bnw;
	say "Presa del pánico ves como la brea engulle a tu portador y a ti con velocidad. La oscuridad absoluta se cierne sobre ti enterrado vivo en la brea.";
	bnw;
	say "La más temible ceguera. Para siempre.";
	bnw;
	say "¿O tal vez no?...";
	wait for any key;
	finalizar juego.

Instead of going nowhere from PuertaCastillo:
	say "La ladera es casi una pared vertical y los matorrales son impenetrables, las únicas salidas posibles desde aquí son hacia el [north] (e intentar entrar en la fortaleza) o hacia el [south] y regresar al pantano.".

Section 5 - Lobo

Pantano5 is a parte del pantano in Pantano.

The DirCuevas of Pantano5 is south.

[Salidas]
Pantano4 is north of Pantano5.
Pantano2 is south of Pantano5.
Pantano7 is west of Pantano5.
Pantano8 is east of Pantano5.

Section 6 - Bolsa del hechizo

Pantano6 is a parte del pantano in Pantano.

Pantano6 has a number called uvturn. The uvturn of Pantano6 is 0.

The DirCuevas of Pantano6 is south.

[Salidas]
Pantano5 is north of Pantano6.
Pantano9 is south of Pantano6.
Pantano3 is west of Pantano6.
Pantano7 is east of Pantano6.

Section 7 - Planta grasienta

Pantano7 is a parte del pantano in Pantano.

Pantano7 has a number called uvturn. The uvturn of Pantano7 is 0.

After going to Pantano7:
	if uvturn of Pantano7 is not 0:
		let t be turn count;
		decrease t by uvturn of Pantano7;
		if PasosEnCentral is greater than t:
			say "[one of]Uhm... ¿estás andando en círculos?[or]¡Otra vez este arbolillo? Realmente estás perdido en este pantano.[or]¿Es posible que estés dando vueltas y regresando una y otra vez al arbolillo?[at random]";
	now uvturn of Pantano7 is turn count;
	continue the action.

The DirCuevas of Pantano7 is south.

[Salidas]
Pantano6 is north of Pantano7.
Pantano1 is south of Pantano7.
Pantano8 is west of Pantano7.
Pantano8 is east of Pantano7.

Section 8 - Localidad vacía 3

Pantano8 is a parte del pantano in Pantano.

The DirCuevas of Pantano8 is west.

[Salidas]
Pantano9 is north of Pantano8.
Pantano7 is south of Pantano8.
Pantano5 is west of Pantano8.
Pantano9 is east of Pantano8.

Section 9 - Localidad vacía 4

Pantano9 is a parte del pantano in Pantano.

The DirCuevas of Pantano9 is south.

[Salidas]
Pantano18 is north of Pantano9.
Pantano8 is south of Pantano9.
Pantano15 is west of Pantano9.
Pantano7 is east of Pantano9.

Section 10 - Araña gigante

Pantano10 is a parte del pantano in Pantano.
Pantano10 has a number called asesino. The asesino of Pantano10 is 0.
Pantano10 has a object called muerto extra. The muerto extra of Pantano10 is nothing.

The DirCuevas of Pantano10 is west.
Pantano10 can be quemado. Pantano10 is not quemado.

To quemar arana:
	now description of Pantano10 is "La telaraña ha quedado reducida a cenizas. Restos de hilachos es todo lo que queda de la misma, y los árboles muestran claras marcas del intenso fuego que ha habido aquí.";
	now printed name of Pantano10 is "Un lugar reducido a cenizas";
	now decoration of Pantano10 is Table of DecoAranaQuemado;
	remove telarana from play;
	remove bulto pegajoso from play;
	now Pantano10 is quemado;
	repeat with item running through hidden objects of bulto pegajoso:
		move item to Pantano10;
	repeat with item running through things which are in ArribaArana:
		move item to Pantano10.

The printed name of Pantano10 is "Un lugar lleno de telarañas".
The default picture of Pantano10 is Figure of Spider.
The description of Pantano10 is "Este rincón del [j]pantano[x] parece muy diferente a todos los demás. Todo, hasta la copa de los árboles más altos, está recubierto de amenazadoras telarañas de hilos pegajosos y enormemente grandes. Los pies de tu portador se pegan en el suelo a cada paso.[if muerto extra of Pantano10 is not nothing] En lo más alto de la telaraña, en un lugar inalcanzable, cuelga el cuerpo envuelto en telarañas que antes era [the muerto extra of Pantano10].[end if]".

The decoration of Pantano10 is Table of DecoArana.

Table of DecoArana
topic			description							genre
"arbol" or "arboles" or "frondosidad" or "copas" or "plantas"	"Los árboles del [j]pantano[x]casi no se ven en este lugar. Todo es más bien como un tapiz de telaraña."	M
"pantano" or "cienagas" or "manglar" or "aguas" or "agua" or "charco" or "charcos" or "cienaga"	"Incluso las aguas del [j]pantano[x] están recubiertas del laborioso trabajo de lo que empiezas a sospechar que debe ser una monstruosa araña gigante."	M
"criaturas" or "criatura" or "bestias" or "seres"	"En este lugar las [j]criaturas[x] del pantano, callan. Tal vez por miedo."	FP
"cuerpo" or "orco" or "icalante" or "yerk" or "berg" or "zhur" or "nuhur" or "muerto"	"[if muerto extra of Pantano10 is nothing]No veo eso por aquí.[otherwise]El cuerpo está demasiado alto para ver nada, o para alcanzarlo.[end if]"	M

Table of DecoAranaQuemado
topic			description							genre
"arbol" or "arboles" or "frondosidad" or "copas" or "plantas"	"Los árboles están cubiertos de restos de la telaraña y de cenizas."	MP
"pantano" or "cienagas" or "manglar" or "aguas" or "agua" or "charco" or "charcos" or "cienaga"	"Incluso las aguas del [j]pantano[x] están cubiertas de cenizas."	M
"criaturas" or "criatura" or "bestias" or "seres"	"En este lugar las [j]criaturas[x] del pantano, callan. Tal vez por miedo al fuego."	FP
"ceniza" or "cenizas"	"Restos carbonizados de la telaraña, recuerdos del fuego que acabó con uno de tus portadores."	FP
"hilachos" or "hilacho"	"Lo poco que queda de la telaraña."	MP

Una telarana is a scenery. It is in Pantano10. The description of telarana is  "Blancas, pegajosas, amenazadoras.".

Understand "telaranas" as telarana when telarana is visible.

After examining telarana for the first time:
	say "Hay un bulto colgando de la telaraña que te llama poderosamente la atención.";
	move bulto pegajoso to Pantano10.

[Arriba en la arana]
ArribaArana is a room.

[ Para matarlos ]
To pnj (victima - a patroller) muerto por arana:
	repeat with item running through things which are carried by victima:
		move item to ArribaArana;
	matar al pnj victima;
	say "Una enorme araña, negra, peluda y muy rápida, cae sobre la espalda [del victima] y le hunde sus pedúnculos.";
	bnw;
	say "El veneno hace un efecto inmediato pero tanto daría, la araña no le da oportunidad de reaccionar.";
	bnw; 
	say "Se eleva entre los árboles llevándose [al victima] mientras lo rodea de seda y ambos desaparecen con rapidez.";
	remove cuerpo of victima  from play;
	now asesino of Pantano10 is 1.

[Caen cosas a veces]
Every turn when there is anything in ArribaArana:
	if a random chance of 1 in 8 succeeds:
		let item be a random thing in ArribaArana;
		move item to Pantano10;
		if the location is Pantano10:
			say "Tras un peculiar sonido [the item] ha caído desde algún lugar de entre las telarañas de arriba.".

[Código duplicado...]
Before of pushing telarana:
	if there is some orco (called victima) in the location:
		now muerto extra of Pantano10 is victima;
		if the player is not victima:
			pnj victima muerto por arana;
		otherwise:
			muerte por arana;
	otherwise:
		now muerto extra of Pantano10 is player;
		muerte por arana.;
	stop the action.

To muerte por arana:
	say "Apenas escuchas un leve sonido antes del dolor.";
	bnw;
	say "Pero reconoces pronto las hábiles patas de una araña gigante envolviendo a tu paralizado portador.";
	bnw;
	say "Esto pinta, pero que muy mal.";
	bnw;
	say "Así que saltas de los dedos de tu portador antes de que desaparezca entre las ramas de los árboles.";
	bnw;
	let nj be jugador mas proximo;
	if nj is the player:
		fracasar la aventura;
	otherwise:
		now the anillo is worn by nj;
		[Reiniciar hambre y sed]
		now hambre_del_jugador is 0;
		now sed_del_jugador is 0;
		[Detenerlo]
		deactivate  nj;
		[Ponerlo en dominado]
		now nj is dominado;
		[Hacer que sea el jugador]
		let aj be the player;
		now aj is muerto;
		if aj is nuhur:
			recordar a Nuhur;
		say "Esperar entre estas telarañas te resulta casi insoportable.";
		bnw;
		say "Muy pocas [j]criaturas[x] son los bastante estúpidas como para arriesgarse a entrar en este lugar y las pocas que lo hacen no sobreviven mucho tiempo.";
		bnw;
		say "Estás a punto de perder la esperanza cuando ves asomarse entre la maraña de sedas pegajosas [al nj].";
		bnw;
		say "Sus ojos están llenos de curiosidad, tal vez de codicia, y te coge sin sospechar que te resultará facilísimo tomar posesión de él. Cosa que haces.";
		move nj to location;
		now the player is nj;
		move aj to NoLugar;
		reinicia a los orcos;
		now lobo is not contentado;
	now asesino of Pantano10 is 1. [Solo te mata una vez]

[Salidas]
Pantano1 is north of Pantano10.
Pantano3 is south of Pantano10.
Pantano3 is west of Pantano10.
Pantano11 is east of Pantano10.

[Ataques repentinos de la araña]
Every turn when the location is Pantano10 and asesino of Pantano10 is 0:
	if there is some orco (called victima) in the location and a random chance of 1 in 3 succeeds:
		if the player is not victima:
			now muerto extra of Pantano10 is victima;
			matar al pnj victima;
			say "Una enorme araña, negra, peluda y muy rápida, cae sobre la espalda [del victima] y le hunde sus pedúnculos.";
			bnw;
			say "El veneno hace un efecto inmediato pero tanto daría, la araña no le da oportunidad de reaccionar.";
			bnw; 
			say "Se eleva entre los árboles llevándose [al victima] mientras lo rodea de seda y ambos desaparecen con rapidez.";
			remove cuerpo of victima  from play;
			now asesino of Pantano10 is 1.

After doing anything except going or examining or listening or smelling or viewing exits or taking inventory or searching when the location is Pantano10 and asesino of Pantano10 is 0:
	if  a random chance of 1 in 16 succeeds:
		say "Apenas escuchas un leve sonido antes del dolor.";
		bnw;
		say "Pero reconoces pronto las hábiles patas de una araña gigante envolviendo a tu paralizado portador.";
		bnw;
		say "Esto pinta, pero que muy mal.";
		bnw;
		say "Así que saltas de los dedos de tu portador antes de que desaparezca entre las ramas de los árboles.";
		bnw;
		let nj be jugador mas proximo;
		if nj is the player:
			fracasar la aventura;
		otherwise:
			now the anillo is worn by nj;
			[Reiniciar hambre y sed]
			now hambre_del_jugador is 0;
			now sed_del_jugador is 0;
			[Detenerlo]
			deactivate  nj;
			[Ponerlo en dominado]
			now nj is dominado;
			[Hacer que sea el jugador]
			let aj be the player;
			now aj is muerto;
			if aj is nuhur:
				recordar a Nuhur;
			say "Esperar entre estas telarañas te resulta casi insoportable.";
			bnw;
			say "Muy pocas [j]criaturas[x] son los bastante estúpidas como para arriesgarse a entrar en este lugar y las pocas que lo hacen no sobreviven mucho tiempo.";
			bnw;
			say "Estás a punto de perder la esperanza cuando ves asomarse entre la maraña de sedas pegajosas [al nj].";
			bnw;
			say "Sus ojos están llenos de curiosidad, tal vez de codicia, y te coge sin sospechar que te resultará facilísimo tomar posesión de él. Cosa que haces.";
			move nj to location;
			now the player is nj;
			move aj to NoLugar;
			reinicia a los orcos;
			now muerto extra of Pantano10 is aj;
			now lobo is not contentado;
		now asesino of Pantano10 is 1. [Solo te mata una vez]

Section 11 - Goolos

Pantano11 is a parte del pantano in Pantano.

The DirCuevas of Pantano11 is south.

[Salidas]
Pantano1 is north of Pantano11.
Pantano12 is south of Pantano11.
Pantano10 is west of Pantano11.
Pantano6 is east of Pantano11.

Section 12 - Arenas movedizas

Pantano12 is a parte del pantano in Pantano.
The printed name of Pantano12 is "Un lugar con demasiada arena burbujeante".
The description of Pantano12 is "Es lugar parece aún más peligroso que el resto del pantano. El suelo parece hecho de arena que burbujea peligrosamente.".

The DirCuevas of Pantano12 is west.

The decoration of Pantano12 is Table of DecoArenas.

Table of DecoArenas
topic			description							genre
"pantano" or "cienagas" or "manglar" or "aguas" or "agua" or "charco" or "charcos" or "arenas" or "arena" or "cienaga"	"No te gusta nada la pinta de este lugar, el suelo parece muy inestable, cuanto antes salgas de aquí mejor."	FP
"arbol" or "arboles" or "frondosidad" or "copas" or "plantas"	"En este punto muchos árboles del [j]pantano[x] han sido cortados y sólo quedan sus musgosos toncones."	M
"toncón" or "toncones"	"Los restos de un árbol del pantano. Por las marcas está claro que fue cortado con instrumentos humanos." 	M


[Salidas]
Pantano11 is north of Pantano12.
Pantano3 is south of Pantano12.
Pantano3 is west of Pantano12.
Pantano13 is east of Pantano12.

[Una primera implementación de la arenas, muy cutre]
After doing anything except going or examining or listening or smelling or viewing exits or taking inventory or searching when the location is Pantano12:
	if a random chance of 1 in 10 succeeds:
		if the player is icalante:
			say "Uff... por un momento pensaste que íbais a caer en las arenas movedizas, pero este mono es realmente ágil y ha saltado en el último momento.";
		otherwise:
			enterrado en la arenas.
	
After going to Pantano12 for the first time:
	say "Uff... casi caes en un charco de arenas de aspecto peligroso. Este lugar parece muy peligroso.";
	continue the action.

[Tambien se hunden los orcos]
Every turn when there is a orco (called victima) in Pantano12:
	if the player is not victima and a random chance of 1 in 7 succeeds:
		repeat with item running through things which are carried by victima:
			remove item from play;
		matar al pnj victima;
		if the location is Pantano12:
			say "¡[The victima] resbala y cae en las arenas movedizas!";
			bnw;
			say "Intenta desesperadamente salir de ellas, pero es engullido con rapidez y desaparece sin dejar rastros.";
			bnw;
			say "Será mejor no estar demasiado tiempo por estos lugares, no vaya a ser que nos pase lo mismo.".

To enterrado en la arenas:
	say "¡Maldita sea! Como temías tu portador resbala y pone sus torpes pies en una charca de arenas movedizas, en una muy profunda... pataleas para salir, pero tan sólo logras hundirte aún más. Pronto sientes que tu portador se asfixia bajo una intensísima presión en el pecho.";
	bnw;
	say "Tu portador desaparece así en el fondo de las arenas movedizas, aunque en el último momento logras que su mano, contigo, claro, quede fuera de las mismas al menos durante un tiempo.";
	repeat with item running through things which are carried by player:
		remove item from play;
	repeat with item running through things which are worn by player:
		remove item from play;	
	let aj be the player;
	morir en el pantano;
	remove cuerpo of aj from play.

Section 13 - Liana

Pantano13 is a parte del pantano in Pantano.

The DirCuevas of Pantano13 is east.

[Salidas]
Pantano6 is north of Pantano13.
Pantano8 is south of Pantano13.
Pantano12 is west of Pantano13.
Pantano14 is east of Pantano13.

Section 14 - Lugar de inicio

Pantano14 is a parte del pantano in Pantano. It is conocido.
The default picture of Pantano14 is Figure of pantano Inicial.
The description of Pantano14 is "[one of]El atardecer te ha alcanzado mientras intentabas alcanzar el [j]castillo[x] del nigromante, aunque casi parece noche en este pantano. La fortaleza está, casi con total seguridad, al [north] o al [northeast], pero crees que las [j]cuevas[x]  tienen su salida mucho más lejos, hacia el [south] de esta posición tal vez.[or]Árboles del [j]pantano[x] de [j]Hapawa[x] te rodean. La [j]frondosidad[x] es tal que apenas deja pasar la luz. Por doquier se escuchan sonidos de [j]criaturas[x] menores entre las copas. La [j]humedad[x] probablemente llena el aire de olores a cosas muertas en [j]putrefacción[x].[stopping]".
The printed name of Pantano14 is "Un lugar algo más seco en el [j]pantano[x] de [j]Hapawa[x]".

[Salidas]
Pantano6 is north of Pantano14.
Pantano15 is south of Pantano14.
Pantano13 is west of Pantano14.
Pantano18 is east of Pantano14.

The decoration of Pantano14 is Table of Prueba

Table of Prueba
topic		description							genre
"lugar"		"Has llegado a este lugar, algo más seco y cómodo tras un largo y penoso viaje en una destartalada carreta de paja. Los orcos os atacaron y crees que han... incorporado al conductor de la carreta a sus provisiones; pero tú, controlando al retrasado humano lograste escapar."	M

Section 15 - Manzana

Pantano15 is a parte del pantano in Pantano.
The description of Pantano15 is "El [j]pantano[x] no es tan denso aquí. Es casi como si esto hubiese estado civilizado alguna vez, hace mucho."
The printed name of Pantano15 is "¿Los restos de un viejo patio o una huerta?".
The DirCuevas of Pantano15 is south.
The  selected description of Pantano15 is 5.

[Salidas]
Pantano14 is north of Pantano15.
Pantano16 is south of Pantano15.
Pantano8 is west of Pantano15.
Pantano5 is east of Pantano15.

The decoration of Pantano15 is Table of DecoManzano.

Table of DecoManzano
topic			description							genre
"patio" or "huerta" or "construccion"	"Algo en la forma de esta parte del [j]pantano[x] hace pensar en un patio de una casa lujosa o tal vez en una huerta interior, pero en realidad no queda ni una piedra de los muros ni ninguna otra cosa que confirme la primera impresión."	M
"muros" or "piedra"	"No, no queda realmente ningún rastro de la construcción antigua si es que realmente hubo algo aquí."	MP


Section 16 - Leña

Pantano16 is a parte del pantano in Pantano.

The DirCuevas of Pantano16 is east.

The printed name of Pantano16 is "Un viejo refugio de leñadores".
The description of Pantano16 is "Aquí vivía gente, probablemente antes de la noche del Levantamiento, cuando Sady Omú lideró el ataque a las órdenes mágicas. Ya casi no queda nada, pero está claro que los leñadores trabajaban en esta parte del [j]manglar[x]. Incluso quedan los restos de un [j]refugio[x]".
The default picture of Pantano16 is Figure of Lenadores.
The selected description of Pantano16 is 2.

The decoration of Pantano16 is Table of DecoLennadores.

Table of DecoLennadores
topic			description							genre
"refugio"	"Ya no es más que un montón desordenado de piedras."	M

Un monton piedras is fixed in place with keyword "piedras". It is in Pantano16. The description of monton piedras is  "No es más que un montón de piedras de lo que antiguamente debió ser un [j]refugio[x] de leñadores.". 
The printed name of monton piedras is "montón de piedras".

Understand "desordenado" as monton piedras when monton piedras is visible.
Understand "monton de piedras" as monton piedras when piedra is not visible and monton piedras is visible.

After examining monton piedras for the first time:
	say "Entre las piedras encuentras el último resto de la actividad de los leñadores aquí, un [j]leño[x] alargado y seco.";
	move leno seco to Pantano16.

Instead of taking monton piedras:
	say "El portador no puede llevar toneladas de piedras inútiles, aunque probablemente intentarlo sería motivo para reírse un buen rato.";
	if piedra is part of monton piedras:
		bnw;
		say "Tal vez una de ellas...";
		move piedra to Pantano16.

Instead of searching monton piedras:
	try examining the noun.

[Salidas]
Pantano15 is north of Pantano16.
Pantano17 is south of Pantano16.
Pantano8 is west of Pantano16.
Pantano5 is east of Pantano16.

Section 17 - Icalante

Pantano17 is a parte del pantano in Pantano.

The DirCuevas of Pantano17 is south.
The default picture of Pantano17 is Figure of Torreon.
The printed name of Pantano17 is "Las ruinas de un torreón".
The description of Pantano17 is "Este lugar debió ser un [j]torreón[x] en el pasado, o alguna clase de torre de vigilancia. ¿De quién? ¿De cuándo? En cualquier caso no queda casi nada excepto algunas piedras y el resistente suelo.[if icalante is i_enfadado] Sin embargo, este poco que queda ha debido parecerle a alguien de las tropas de Sady Omú el lugar ideal para 'atar' una bestia lo más lejos posible de él mismo.[end if]".

The selected description of Pantano17 is 4.

The decoration of Pantano17 is Table of DecoTorreon

Table of DecoTorreon
topic			description							genre
"torreon" or "torre" or "vigilancia"	"Tal vez sea una de esas construcciones de vigilancia que crean los humanos, aunque, al encontrarse en mitad del [j]pantano[x] no puedes imaginar qué estaba 'vigilando'. Parece antigua, aunque todo lo que han construído los humanos es ridículamente moderno en comparación con vuestras venerables construcciones dragón. En cualquier caso esto ha sido destruído y por el color de las [j]piedras[x] por un dragón y su aliento. Esa idea te reconforta, aunque desearías haberlo hecho tú mismo... Tal vez pronto..."	M
"color" or "hollin"	"Todo está ennegrecido, como si el viejo hollín del fuego que destruyó este torreón se hubiese transformado en una segunda piel de sus restos."	M
"piedras" or "piedra"	"No son más que restos de lo que fue el torreón. Inservibles, excepto para subir tu orgullo de raza. Uno de los tuyos destruyó este lugar. Lo demuestra el color de la piedra y ese particular aspecto de roca calentada hasta casi fundirse."	FP

Understand "bestia" as icalante.

[Salidas]
Pantano16 is north of Pantano17.
Pantano7 is south of Pantano17.
Pantano8 is west of Pantano17.
Pantano7 is east of Pantano17.

Section 18 - Serpiente y huesos

Pantano18 is a parte del pantano in Pantano.
The DirCuevas of Pantano18 is south.

The printed name of Pantano18 is "Un lugar repleto de restos óseos".
The description of Pantano18 is "Mires donde mires ves restos de [j]huesos[x]. Te recuerda a un [j]cementerio[x] de dragones, de los que se pueden encontrar en valles perdidos entre montañas, pero sin su majestuosidad.".

Pantano18 has a number called serpAcecha. The serpAcecha of Pantano18 is 0. 

The decoration of Pantano18 is Table of DecoOseo.

Table of DecoOseo
topic			description							genre
"cementerio"	"La cantidad de restos de hueso haría pensar en que esto es realmente un cementerio, mas, sin embargo, parece más lamentable que digno. Tal vez se trate sólo de un montón de restos de comida."	M

[Salidas]
Pantano21 is north of Pantano18.
Pantano5 is south of Pantano18.
Pantano14 is west of Pantano18.
Pantano19 is east of Pantano18.

[Peligrosas serpientes se ocultan en este lugar]
Every turn while the location is Pantano18:
	if a random chance of 1 in 8 succeeds: [Primero, a veces se ver moverse a las serpientes]
		say "[one of]¿Qué ha sido eso? Por un momento te ha parecido ver moverse a algo entre los huesos.[or]¡Ey! ¡Por ahí hay un... No, ya no se ve, pero estabas casi seguro que justo por detrás de ti se había movido... pero no hay nada por ahí.[or]Por un momento te parece ver moverse algo entre las [j]plantas[x], pero debe ser sólo la impresión de este triste lugar.[at random]";
		increase serpAcecha of Pantano18 by 1;
	otherwise:
		if a random chance of serpAcecha of Pantano18 in 80 succeeds: [A veces te matan, pero muy raramente]
			if the player is not the icalante:
				say "Ouch...";
				bnw;
				say "Una serpiente de colores chillones ha surgido como un rayo desde la maleza y ha picado a tu portador. ¿Será este lugar su guarida?";
				bnw;
				say "Oh, ¡mierda!. Tu portador ha caído de bruces así sin más. Parece que el veneno era mortal.";
				let aj be the player;
				morir en el pantano;
				now cuerpo of aj is mordidoserpiente;
			otherwise:
				say "Uff...";
				bnw;
				say "Una serpiente de colores chillones ha salido de la nada y tenía toda la intención de picar a tu portador. Pero el icalante la ha aplastado de un pisotón.";
				bnw;
				say "Tiene reflejos rápidos este bicho.";
				move cadaver_serpiente to Pantano18.

After going from Pantano18:
	now serpAcecha of Pantano18 is 0;
	continue the action.

Every turn while there is a orco (called victima) in Pantano18:
	if victima is not the player and a random chance of 1 in 30 succeeds:
		matar al pnj victima;
		now cuerpo of victima is mordidoserpiente;
		if location is Pantano18:
			say "¡Vaya! Una serpiente de colores chillones ha surgido de la maleza y ha picado [al victima] en su tobillo. Y [the victima] ha caído muerto al instante soltando espumarajos por la boca.".



Section 19 - Campamento Orco

Pantano19 is a parte del pantano in Pantano.
The DirCuevas of Pantano19 is south.
The default picture of Pantano19 is Figure of Orc Camp.

The printed name of Pantano19 is "Un campamento de orcos".
The description of Pantano19 is "El olor es más que suficiente para reconocer un campamento de orcos. Pero si eso no fuese suficiente, los restos de comida putrefacta, los excrementos, y el desorden lo confirmaría.".

The decoration of Pantano19 is Table of DecoOrcos.

Table of DecoOrcos
topic			description							genre
"restos" or "comida"	"Ni el más degenerado de los dragones se pondría estos restos en la boca. ¡Puagh!."	MP
"excrementos"	"Lo que comen los orcos y lo que defecan es tan similar que te planteas si realmente digieren o simplemente la porquería los atraviesa limpiamente."	MP
"desorden" or "campamento"	"El desorden es como la naturaleza básica del orco. Cuando una de sus legiones ataca a un enemigo, más que vencerlo lo marean."	M


[Salidas]
Pantano2 is north of Pantano19.
Pantano5 is south of Pantano19.
Pantano18 is west of Pantano19.
Pantano20 is east of Pantano19.

Section 20 - Carcel

Pantano20 is a room.
The default picture of Pantano20 is Figure of Tree Cage.
The printed name of Pantano20 is "Una suerte de cárcel orca".
The description of Pantano20 is "En este lugar crece un viejo y recio árbol del que los orcos parecen colgar jaulas. Una cárcel. Aunque teniendo en cuenta lo que hacen muchas veces los orcos con los prisioneros tal vez la palabra más adecuada sería 'almacén', o tal vez 'alacena'. Desde este punto la vegetación impide ir a cualquier parte que no sea el campamento orco.[line break][line break]Una [j]jaula[x] cuelga en entre las ramas del árbol.[if liana is part of recio arbol][line break][line break]No muy lejos de la jaula y sobre la misma rama cuelga la liana haciendo de improvisada ayuda para poder trepar hasta arriba.".

[Salidas]
Pantano19 is west of Pantano20.
[Copa is above Pantano20.]

The decoration of Pantano20 is Table of DecoJaula.

Table of DecoJaula
topic	description	genre 
"inmundicia" or "porqueria" or "musgo" or "musgos" or "suciedad"		"Cosas putrefactas que no apetece comerse, es decir, [j]plantas[x] muertas y putrefactas, por lo general, que no tienen ese magnífico olor a carne muerta. Claro que en tu estado poco puedes [j]oler[x], es una de las cosas que peor sobrellevas."	F
"luz"	"Llamar [j]luz[x]a la penumbra que resulta tras atravesar las copas del manglar, es como una suerte de chiste cruel."	F
"bruma" or "niebla" or "neblina"	"Elevándose desde las cenagosas [j]aguas[x] una sempiterna nieblina lo desdibuja todo en este [j]pantano[x]."	F
"frondosidad" or "copas" or "plantas" or "vegetación"	"Son árboles del pantano, no importa si están vivos o muertos, siempre están recubiertos de enormes cantidades de [j]musgo[x] u otras cosas peores, todas ellas clasificables dentro de la categoría de porquería. Bueno, algunas tal vez mereciesen la categoría de inmundicia."	MP


Section 20bis - Parte superior del árbol

Copa is a room above Pantano20. Pantano20 is below Copa.
The default picture of Copa is Figure of TopTree.
The printed name of Copa is "Entre las ramas de un vestusto árbol".
The description of Copa is "Las ramas son anchas y estables. No es un sitio muy desagradable.".

[Pantano20 is below Copa.]

The decoration of Copa is Table of DecoCopa.

Table of DecoCopa
topic			description							genre
"rama" or "ramas"	"Buena y estable madera. Corteza resbaladiza. Minúsculas hojas."	FP
"arbol"			"Imponente ejemplar que domina esta región del pantano."		M
"corteza"		"De un color pálido, y de tacto resbaladizo, casi cerúleo."		F
"hojas" or "hoja"		"Realmente minúsculas."						FP

Una Fortaleza is scenery in Copa. It is a female. The description of fortaleza is "A lo lejos se levanta la fortaleza de Sady Omú. Viejos recuerdos de poder injustificado, violencia gratuita y banquetes inacabables llenan tu mente de felicidad.".
Un Claro is scenery in Copa. The description of claro is "Parece haber un pequeño claro en esa dirección, pero no se divisa nada más.".

Instead of doing anything except examining or metacommanding fortaleza while the location is in Copa:
	say "Tendrás que ir hasta la fortaleza para intentar cualquier cosa en ella o con ella a parte de mirarla.".

Instead of doing anything except examining or metacommanding claro while the location is in Copa:
	say "El claro simplemente está demasiado lejos.".

Section 21 - Localidad vacia 5

Pantano21 is a parte del pantano in Pantano.
The DirCuevas of Pantano21 is south.

[Salidas]
Pantano22 is north of Pantano21.
Pantano18 is south of Pantano21.
Pantano25 is west of Pantano21. [Retorcadas]
Pantano23 is east of Pantano21.

Section 22 - Deavork

Pantano22 is a parte del pantano in Pantano.
The DirCuevas of Pantano22 is south.

[Salidas]
Pantano4 is north of Pantano22.
Pantano21 is south of Pantano22.
Pantano25 is west of Pantano22.
Pantano23 is east of Pantano22.

Section 23 - Túmulo

Pantano23 is a parte del pantano in Pantano.
The default picture of Pantano23 is Figure of Tumulo.
The DirCuevas of Pantano23 is east.
The printed name of Pantano23 is "[if monticulo is inicial]Unas ruinas sospechosamente familiares[otherwise]Un antiguo túmulo draconil[end if]".
The description of Pantano23 is "[if monticulo is inicial]Arbustos espinosos cubren un gran [j]montículo[x] de piedra. No conocías este lugar, pero de alguna forma te resulta extrañamente familiar.[otherwise]Es muy reconfortante encontrar en este sucio [j]pantano[x] un destello de la vieja y gloriosa historia dragón. Aquí se alza un [j]túmulo[x] de un viejo señor de los dragones.[end if]".

The decoration of Pantano23 is Table of DecoTumulo.

Table of DecoTumulo
topic			description							genre
"arbol" or "arboles" or "frondosidad" or "copas" or "plantas" or "vegetación"	"En este lugar hay algo menos de [j]humedad[x]. La vegetación más que putrefacta en este lugar parece espinosa, especialmente la enredadera que cubre gran parte del montículo de piedra."	F
"inmundicia" or "porqueria" or "musgo" or "suciedad"		"En esta parte del [j]pantano[x] hay mucha menos porquería que en el resto."	F
"aguas" or "agua" or "charco" or "charcos"		"En esta parte del [j]pantano[x] el agua es casi inexistente."	F

[Salidas]
Pantano4 is north of Pantano23.
Pantano21 is south of Pantano23.
Pantano22 is west of Pantano23.
Pantano25 is east of Pantano23.

[ Entrar en el túmulo es peligroso ]
IATumulo is a number that varies. IATumulo is 0.
Instead of going down from Pantano23 when the location of protector is Pantano23:
	increase IATumulo by 1;
	if IATumulo is:
		-- 1:
			say "El protector cesa en su inmovilidad pétrea y se interpone, dejando claro que no permitirá el acceso sin luchar.";
			bnw;
			say "De momento abandonas la idea.";
		-- 2:
			say "El protector al ver que vuelves a intentar entrar en el túmulo se mueve como un relámpago y toca el pecho de tu portador.";
			bnw;
			say "Su corazón se para al instante.";
			morir en el pantano.	

After going to Pantano23:
	if Efectos-Sonando is true:
		stop the background sound;
	continue the action.

After going from Pantano23 to a room which is not Pantano24:
	if Efectos-Sonando is true:
		play sound of efectos in background with loop;
	continue the action.


Section 24 - Interior túmulo

Pantano24 is a room. Pantano24 is dark.
The printed name of Pantano24 is "El interior de un túmulo dragón".
The default picture of Pantano24 is Figure of In Tumulo.
The description of Pantano24 is "Las enormes piedras rituales te rodean por todas partes. Al fondo los sagrados [j]huesos[x] y [j]escamas[x] de uno de los antepasados de los Drack, un hermano de tu filia dorada. Bajo tus pies los innumerables restos de sus [j]servidores[x] sacrificados y probablemente de sus enemigos derrotados.".

The decoration of Pantano24 is Table of DecoIntTumulo.

Table of DecoIntTumulo
topic			description							genre
"inmundicia" or "porqueria" or "musgo" or "suciedad"		"En esta parte del [j]pantano[x] hay mucha menos porquería que en el resto."	F
"aguas" or "agua" or "charco" or "charcos"		"En esta parte del [j]pantano[x] el agua es casi inexistente."	F
"piedra" or "piedras" or "tumulo"	"Estas enormes y arcaicas piedras es de lo poco queda de la gloriosa Edad Ígnea en el mundo. ¡Malditos humanos!"	M


Section 25 - Árbol estrangulador

Pantano25 is a parte del pantano in Pantano.
Pantano25 has a number called asesino. The asesino of Pantano25 is 0.
The DirCuevas of Pantano25 is east.

The printed name of Pantano25 is "Un lugar inquietante en el pantano".
The description of Pantano25 is "En este lugar la vegetación parece más densa y aún dirías que ominosa que en el resto del pantano. Hasta los árboles parecen diferentes a los demás, largos, delgados y rojizos.".

The decoration of Pantano25 is Table of DecoEstran.

Table of DecoEstran
topic				description		genre
"arbol" or "arboles"	"faaaalta"	M					

[ TODO ]

La vegetacion is a scenery in Pantano25. It is female. The description of vegetacion is "Algo en este lugar te asusta, algo en esta vegetación no es como debería ser. No es el olor, que es igual de malo que en todas partes... es no sabes, algo que simplemente es incorrecto.".

Understand "frondosidad" or "plantas" or "copas" as vegetacion when the location is Pantano25.

Some arboles rojizos (m) are a scenery in Pantano25. The description of arboles rojizos is "Largos y delgados, de un siniestro rojo, dan la extraña sensación de que están observando.".

The printed name of arboles rojizos is "árboles rojizos".

Does the player mean doing something with arboles rojizos: it is very likely.

Understand "arbol"  as arboles rojizos when the location is Pantano25.

[Ahorcar, ahorcar...]
Every turn when the location is Pantano25:
	if there is some orco (called victima) in the location and a random chance of 1 in 3 succeeds:
		if the player is not victima:
			matar al pnj victima;
			say "Uno de los árboles agarra con la velocidad del látigo el cuello [del victima] y lo estrangula hasta matarlo.";
			bnw;
			say "Esta claro que esta vegetación no tiene nada de normal.".

After doing anything except going or examining or listening or smelling or viewing exits or taking inventory or searching when the location is Pantano25 and asesino of Pantano25 is 0:
	if  a random chance of 1 in 8 succeeds:
		morir ahogado vegetal.

To morir ahogado vegetal:
	say "Uno de los árboles te atrapa... bueno a tu portador. Puedes sentir como su tráqueta se hunde bajo la presión de la madera.";
	morir en el pantano;
	now asesino of Pantano25 is 1. [Solo te mata una vez]

 Instead of searching or touching or pushing or attacking arboles rojizos:
	if there is some orco (called victima) in the location and a random chance of 1 in 3 succeeds:
		if the player is not victima:
			matar al pnj victima;
			say "Uno de los árboles agarra con la velocidad del látigo el cuello [del victima] y lo estrangula hasta matarlo.";
			bnw;
			say "Esta claro que esta vegetación no tiene nada de normal.";
		otherwise:
			say "Tiene que haber algo en estos...";
			bnw;
			say "Oh, oh...";
			bnw;
			morir ahogado vegetal;
	otherwise:
		say "Tiene que haber algo en estos...";
		bnw;
		say "Oh, oh...";
		bnw;
		morir ahogado vegetal.


[Salidas]
Pantano23 is north of Pantano25.
Pantano21 is south of Pantano25.
Pantano23 is west of Pantano25.
Pantano22 is east of Pantano25.

Section 26 - Calabaza

Pantano26 is a parte del pantano in Pantano.
The DirCuevas of Pantano26 is east.
The printed name of Pantano26 is "Los restos de una huerta humana".
The description of Pantano26 is "Parece que humanos habitaron este lugar. La tierra aún tiene las heridas de sus vanos intentos de trabajarla. Tal vez se trató de una lamentable '[j]huerta[x]'. Es evidente que los orcos se han cebado con este lugar.".
The default picture of Pantano26 is Figure of Huerta.

Pantano26 has a number called resuelto. The resuelto of Pantano26 is 0.

[Salidas]
Pantano5 is north of Pantano26.
Pantano5 is south of Pantano26.
Pantano5 is west of Pantano26.
Pantano27 is east of Pantano26.

Section 27 - No muy lejos

Pantano27 is a parte del pantano in Pantano.
The printed name of Pantano27 is "No muy lejos de las [j]cuevas[x] ".
The description of Pantano27 is "Desde este lugar, semioculta por los árboles y las demás [j]plantas[x] se divisa una hondonada hacia el [north] que estás casi seguro que debe ser el punto en el que se puede entrar a las [j]cuevas[x]  bajo la fortaleza de Sady Omú.".
The DirCuevas of Pantano27 is north.

A cueva_fake is a scenery in Pantano27. It is female. The description of cueva_fake is "Aún no son visibles, pero seguro que están ahí mismo, al [north], en la hondonada.".
The printed name of cueva_fake is "cueva".
Understand "cuevas" or "cueva" as cueva_fake when the location is Pantano27.

A hondonada is a scenery in Pantano27. It is female. The description of hondonada is "Destaca sobre el resto del pantano. ¡Seguro que es la entrada a las [j]cuevas[x] !".

Instead of doing anything except examining or metacommanding with cueva_fake:
	say "Las [j]cuevas[x]  deben estar al [north] en la hondonada.".

Instead of doing anything except examining or metacommanding with hondonada:
	say "¡Simplemente hay que ir al [north]!".


[Salidas]
Pantano28 is north of Pantano27.
Pantano5 is south of Pantano27.
Pantano26 is west of Pantano27.
Pantano5 is east of Pantano27.

Section 28 - Entrada a las cuevas

Pantano28 is a parte del pantano in Pantano.
The default picture of Pantano28 is Figure of Entrada a Cuevas.
The printed name of Pantano28 is "Entrada a las cuevas".
The description of Pantano28 is "El [j]pantano[x] acaba aquí, aunque lamentablemente se encuentra no muy lejos hacia el [south]. Este lugar no es más que un sucio agujero en el suelo en cuya pared [north] está horadado un [j]túnel[x]. [if resuelto of Pantano28 is 0]Es estrecho, oscuro, sucio... y por desgracia debe ser la ruta bajo tierra al castillo de Sady Omú que estabas buscando.[otherwise if resuelto of Pantano28 is 1]Dentro de él viven deavorks.[otherwise]La entrada al laberinto de túneles que lleva hasta el castillo de Sady Omú.[end if]".

Pantano28 has a number called resuelto. The resuelto of Pantano28 is 0.

The decoration of Pantano28 is Table of DecoEntrada.

Table of DecoEntrada
topic			description							genre
"agujero" or "letrina"	"Todo este lugar no tiene otra descripción posible que la de 'agujero infecto'. Bueno, también podrías llamarlo 'letrina infernal', pero eso ya sería exagerar. Tal vez el [j]pantano[x] en su conjunto sí que merezca la segunda descripción."	M

Un tunel is a scenery in Pantano28.
The description of tunel is "[if resuelto of Pantano28 is 0]Es demasiado estrecho, demasiado oscuro y salen de ahí ruidos demasiado raros como para que sea razonable entrar en él. Y sin embargo estás casi seguro de que no queda otra que ir por ahí.[otherwise if resuelto of Pantano28 is 1]La entrada al peligroso nido de los deavorks.[otherwise]Es la entrada a los laberínticos túneles bajo la fortaleza de Sady Omú.[end if]".
The printed name of tunel is "túnel".

Una pared is a scenery in Pantano28. It is female. The description of pared is "Sucia, como todo en el pantano, pero de aspecto impenetrable.".
Understand "roca" as pared when the location is Pantano28.

Understand  "estrecho" or "oscuro" or "sucio" or "cueva" or "cuevas" as tunel when the location is Pantano28.

Instead of pointing matched scenery when the location is Pantano28 and matched by is "agujero":
	try pointing tunel.

Instead of pointing tunel when the location is Pantano28 and icalante is in Pantano28 and icalante is i_siguiendote:
	say "El [j]icalante[x] mira unos segundos el agujero. Luego, entendiendo,[if there is a thing carried by icalante] deja todo lo que lleva y[end if] entra en el agujero.";
	bnw;
	say "Se escuchan chillidos, y gritos, sobre todo de insecto y al poco varios insectos salen huyendo por el agujero; y tras ellos un sonriente icalante.";
	repeat with item running through things carried by icalante:
		move item to location;
	now resuelto of Pantano28 is 2.

Instead of searching tunel:
	try going north.

[Salidas]
Cueva1 is north of Pantano28.
Cueva1 is inside of Pantano28.
Pantano27 is south of Pantano28.

Chapter 2 - Cuevas

Cuevas is a  region.

A cueva oscura is a kind of room. A cueva oscura is usually dark.

[Para complicar aún más el 'bonito' este laberinto, los nombres y descripciones de muchas habitaciones son al 'azar']
The printed name of a cueva oscura is usually "[one of]Un rincón oscuro de las [j]cuevas[x] [or]Una cavidad natural, más bien angosta[or]Apenas un túnel[or]En la oscuridad, rodeadao de piedras de extrañas formas[at random]".
The description of a cueva oscura is usually "[one of]Una parte de las [j]cuevas[x]  bajo el castillo de Sady Omú. Aquí y allá se abren orificios de diverso tamaño redondeados por el efecto de algún elemento natural (¿agua tal vez?) y que deben llevar a otras partes de las [j]cuevas[x] .[or]Rocas, pared de roca, formaciones rocosas y los huecos entre todas esas rocas. Eso es todo lo que te rodea.[or]Rocas que a ratos parecen amenazantes en la penumbra y a ratos simplemente parecen aburridas.[or]Tanta vida allá fuera en el pantano, aunque sucia y de podredumbre, y aquí abajo solamente hay rocas.[at random]".

When play begins:
	let cave pictures be {Figure of Cuevas1,Figure of Cuevas2,Figure of Cuevas3,Figure of Cuevas4};
	sort cave pictures in random order;
	let position be 1;
	repeat with cave running through {Cueva2,Cueva3,Cueva5}:
		now the default picture of cave is entry position of cave pictures;
		increase position by 1.
			
	

[Todos las habitaciones del pantano tienen una serie de decorados iguales]
The decoration of Cuevas is Table of DecoCuevas.

Table of DecoCuevas
topic			description							genre
"roca" or "rocas"	"Rocas. Nunca te han interesado. Son simplemente pedazos inertes de naturaleza de diversos colores y extrañas formas."	FP
"huecos" or "tuneles" or "grietas"	"En todas direcciones se abren huecos por los que parece posible pasar a lugares igual de oscuros. Una de estas direcciones tiene que llevar a los sótanos del castillo de Sady Omú."	MP
"cueva" or "cuevas"	"Estas [j]cuevas[x]  parecen tan sólo un sucio conjunto de túneles. Nada que ver con las residencias de los antiguos dragones en la Edad Ígnea."	FP

Section 1 - Junto a puerta

Cueva1 is a cueva oscura in Cuevas. Cueva1 is lighted.
The default picture of Cueva1 is Figure of Inicio Cuevas.

The printed name of Cueva1 is "El destrozado nido de deavorks".
The description of Cueva1 is "Esto debía de estar repleto de deavorks, ahora sólo quedan sus [j]restos[x]. Pero lo que hay más allá no pinta mejor que morir a manos de uno de estos insectos. Oscuras y laberínticas, así parecen las [j]cuevas[x] .".

The decoration of Cueva1 is Table of DecoNido.

Table of DecoNido
topic			description							genre
"roca" or "rocas" or "cueva" or "cuevas"	"En este lugar todo está pegajoso por los restos de los asquerosos deavorks."	FP

[Salidas]
Cueva3 is north of Cueva1.
Pantano28 is south of Cueva1.
Cueva3 is west of Cueva1.
Cueva2 is east of Cueva1.

Section 2 - Cueva 2 (Loc 32)

Cueva2 is a cueva oscura in Cuevas.

[Salidas]
Cueva3 is north of Cueva2.
Cueva5 is south of Cueva2.
Cueva3 is west of Cueva2.
Cueva3 is east of Cueva2.

Section 3 - Cueva 3 (Loc 35)

Cueva3 is a cueva oscura in Cuevas.

[Salidas]
Cueva1 is north of Cueva3.
Cueva1 is south of Cueva3.
Cueva1 is west of Cueva3.
Cueva1 is east of Cueva3.

Section 4 - Cueva 4 (Loc 34)

Cueva4 is a cueva oscura in Cuevas.

The printed name of Cueva4 is "Donde el resplandor".
The default picture of Cueva4 is Figure of Next Lava.
The description of Cueva4 is "En esta parte de las [j]cuevas[x]  un resplandor rojizo se filtra desde el oeste.".
Cueva4 is lighted.

[Salidas]
Cueva3 is north of Cueva4.
Cueva3 is south of Cueva4.
Lava is west of Cueva4.
Cueva3 is east of Cueva4.

Section 5 - Cueva 5 (Loc 33)

Cueva5 is a cueva oscura in Cuevas.

[Salidas]
Cueva4 is north of Cueva5.  

Before going north from Cueva5:
	[ Esta conexión no funcionará sin luz y sin mapa]
	if in darkness or mosaico is not leido:
		now Cueva3 is mapped north of Cueva5;
		say "[one of]Hay demasiadas salidas en este laberinto de túneles. Te da la sensación de estar andando en círculos.[or]¿No has pasado ya antes por aquí? ¿No has cogido ya este túnel? Uhm...[or]Así podríamos pasar días y días, me parece que nos hace falta [if in darkness]luz para poder penertrar estas tinieblas[otherwise]un mapa o algo así.[end if][or]Te empieza a parecer que estás perdido en estos túneles.[at random]";
	otherwise:
		now Cueva4 is mapped north of Cueva5;
	continue the action.

After going north from Cueva5:
	[say "Pongo C4.";]
	now Cueva4 is mapped north of Cueva5;
	continue the action.

Cueva3 is south of Cueva5.
Cueva3 is west of Cueva5.
Cueva3 is east of Cueva5.

Chapter 3 - Castillo

Castillo is a region.

Parte del castillo is a kind of room.

Section 1 - Lava

Lava is a room in Castillo.

Lava can be congelada. Lava is not congelada.

The printed name of Lava is "[if Lava is not congelada]Un túnel surcado por un río de lava[otherwise]Un túnel oscuro[end if]".
The description of Lava is "[if Lava is not congelada]Un vibrante río de lava cruza este lugar de [north] a [south]. Al otro lado del río, al [west] puede divisarse un túnel. Probablemente ese sea tu destino.[otherwise]El lugar ha quedado temporalmente transformado en roca endurecida y oscura. Al otro lado, al [west] te espera un prometedor túnel de salida.[end if]".

The decoration of Lava is Table of DecoLava.

Table of DecoLava
topic			description							genre
"lava" or "rio" or "roca"	"[if Lava is not congelada]La roca hirviente siempre es una visión reconfortante para un dragón. Las leyendas dragón hablan de héroes míticos de vuestro pueblo que surcaban estas aguas de fuego, que vivían en ellas o que nacieron de ellas. Pero lo que vale para los héroes míticos no se aplica a los mortales, ni siquiera a los dragones. Si intentas cruzar este río de lava morirás sin remedio.[otherwise]Ver la lava transformada en roca es un alivio pues permite que sigas avanzando hacia tu destino, pero aún así resulta una visión decepcionante, nostálgica. Es como el mundo que desde el final de la Edad Ígnea se endurece y vuelve oscuro.[end if]"	F

[Salidas]
Lugar_Oo_Drack is west of Lava.
Cueva4 is north of Lava.

[¡¡La lava no se puede cruzar!!]
Instead of going west from Lava when Lava is not congelada:
	say "Oh... oh...";
	bnw;
	say "¡Maldita sea! Con la emoción olvidaste por completo que no puedes volar y que tu portador no puede soportar la lava hirviente.";
	bnw;
	muerte en la lava.

To muerte en la lava:
	say "Sientes su terrible suplicio mientras se incinera con un poco de culpabilidad.";
	bnw;
	say "Oh...oh...";
	bnw;
	say "Estás sintiendo demasiado calor. Demasiado calor... ¡esto es mucho peor que una olla de hirviente cera!";
	bnw;
	say "Tu ojo esmeraldino se quiebra finalmente y tu alma de dragón se escapa, probablemente condenada al helado infierno de los dragones por haber finalizado su vida con semejante estupidez.";
	finalizar juego.

Instead of jumping when location is Lava:
	if Lava is congelada:
		say "Saltas... para caer a la mitad del río de lava... endurecido... por suerte.";
		try going west;
	otherwise:
		try entering west.
	

After going west from Lava when Lava is congelada:
	Oo Drack ataca in five turns from now;
	continue the action.

Instead of going from Lava when in darkness:
	say "¡Ouch!";
	bnw;
	say "Intentando ir en esa dirección tu portador choca violentamente contra una pared.";
	bnw;
	say "Esto es demasiado grande, necesitarías luz.".

Instead of going east from Lava when in darkness:
	if a random chance of 2 in 3 succeeds:
		say "Intentando salir de este lugar tu portador choca violentamente contra algo.";
		bnw;
		say "Esto es demasiado grande, necesitarías luz.";
	otherwise:
		continue the action.

Section 2 - Oo Drack

Lugar_Oo_Drack is a parte del castillo in Castillo.
The printed name of Lugar_Oo_Drack is "Una inmensa sala del tesoro".
The description of Lugar_Oo_Drack is "El [j]botín[x] de un centenar de batallas de acumulan en este lugar. Los humanos creen que los dragones sois avariciosos por naturaleza, no entienden que a menudo los pocos [j]tesoros[x] que guardáis en húmedas y lejanas cavernas no son más que los míseros restos de vuestra herencia, no entienden, que los apreciáis más por su significado histórico, por lo que eran en la Edad Ígnea, que por su valor real. Este lugar recuerda uno de esos tesoros de dragón, pero es mucho mayor, y existe por la avaricia de un humano. Este lugar es el tesoro del nigromante Sady Omú.".

[Salidas]
Lava is east of Lugar_Oo_Drack.

Instead of going nowhere from Lugar_Oo_Drack:
	say "Caminas un poco entre los 'tesoros' pero no parece haber una salida en esa dirección.".

The decoration of Lugar_Oo_Drack is Table of DecoTesoro.

Table of DecoTesoro
topic			description						genre
"tesoros" or "tesoro"	"No se trata de tesoros sino de rapiña. De los restos relucientes de los pueblos de su propia gente que el nigromante ha reducido a cenizas. No merecen la pena, lo que necesitas es un camino hacia el cubil del nigromante."	MP
"botin"			"Los humanos dicen que durante la Edad Ígnea vosotros, los dragones, esclavizabais a todos, que les robabais su trabajo. Sin embargo, no hay más que echar un vistazo a este lugar para darse cuenta que todas historias estaban constituídas exclusivamente por la envidia de los humanos, por su deseo de atesorar ellos mismos todas las riquezas."	M
"riqueza" or "riquezas"	"Cualquier dragón en su sano juicio sabe que todo esto no son riquezas, sino despojos. La auténtica riqueza está en sobrevolar tus propios dominios, ver tu ganado engordando en el campo y sentir así tu libertad."	F
"despojo" or "despojos" or "rapina"	"Todos estos despojos de batallas seguramente serán considerados tesoros por el nigromante, y 'codiciados' tesoros por sus orcos."	MP
"camara" or "lugar"	"Este lugar es demasiado grande para ser sólo una cámara del tesoro. En el pasado debió ser alguna otra cosa."	F

[The mensajes of Lugar_Oo_Drack is Table of MensajesTesoro

Table of MensajesTesoroNoVeo
descripcion
"No ves eso por aquí."

Table of MensajesTesoroDecorado
descripcion
"Sí... %10%... parece tentador. Pero en realidad es algo inútil."
"Entretenerse con %10% es una pérdida de tiempo. Necesitas un camino para llegar a Sady Omú."
"¡Olvídate de %10%! ¡Hay que encontrar una salida de este lugar!"]

Section 3 - Sady Omu

Lugar_Sady_Omu is a parte del castillo in Castillo.
The default picture of Lugar_Sady_Omu is Figure of Trono.
The printed name of Lugar_Sady_Omu is "La sala del trono del nigromante".
The description of Lugar_Sady_Omu is "Ahora que sabes que este lugar fué un castillo de la Edad Ígnea, reconoces este lugar como la más importante de las salas de una vivienda de los viejos señores dragón: el Incubatorio. Dada la extraña relación entre los machos y hembras humanos es probable que al nigromante no le agradase saber para qué se usaba esta sala. No es más que una prueba más de su ignorancia sobre nuestros temas. Por supuesto todo ha sido redecorado al gusto de un nigromante: trono de huesos humanos, orcos y de otras [j]criaturas[x] menores, cortinas viejas y oscuras, telarañas por todas partes, estandartes de ejércitos derrotados unidos a las cabezas disecadas de sus comandantes... todo muy inapropiado considerando que esto es el viejo Incubatorio.".

[Salidas]

Part 3 - Los objetos

Chapter 1 - EL ANILLO

Section 1 - Objeto en sí

El anillo is worn by nuhur. The description of anillo is "Verte a ti mismo reducido a un ridículo adorno para manos humanas va mucho más allá de la humillación. Jamás podrás olvidar haberte visto en estas circunstancias.". The tamano of anillo is minusculo.

El adorno is partdecoration. It is part of the anillo. The description of adorno is "Como anillo no luces nada mal. Dorado con ese color brillante y hermoso que tenían tus escamas. Con un ojo esmeraldino de 'mirada' penetrante. Muy mono. Este hecho incrementa considerablemente tus ganas de matar lentamente a Elnigróh.".

El ojo is partdecoration. It is part of the anillo. The description of ojo is "Verde esmeralda, un pobre sustituto de poderosa mirada de dragón, y probablemente tu parte más débil en tu nueva forma.".

Section 2 - Evitar las acciones que te pueden dejar fuera de juego

[--------------------------------------------------

   De momento todas, ya iré refinando

--------------------------------------------------]

Instead of doing anything except examining or feeding or smelling or burning or wearing or metacommanding with the anillo:
	say "Necesitas permanecer en la mano de tu portador o perderás el control del mismo, así que sería mejor no hacer eso.".

Instead of smelling the anillo:
	say "Huelo lamentablemente... a nada. ¡Debería oler a intenso azufre y alumbre! ¡Qué asco ser un anillo de oro en lugar de un varonil dragón!".

Instead of burning the anillo:
	say "A veces caes en la desesperación, pero no es el momento de pegarse fuego, además probablemente ni siquiera así consiguieses acabar con tu vida.".
		
Chapter 2 - Objetos en el matorral

Section 1 - Bolsa del hechizo

Una bolsa cuero is a thing. It is wearable and NSE container and openable and female. It is closed.
The description of bolsa cuero is "Está claro que no se trata de una bolsa de cuero normal, mientras casi todo lo demás del esqueleto estaba corroído por el pantano, ésta parece como nueva. Además estos extraños dibujos... tal vez se trate de un objeto hechizado de alguna forma.".

The capacidad of bolsa cuero is 5.
The printed name of bolsa cuero is "bolsa de cuero".

Understand "bolsa de cuero" as bolsa cuero.

Some dibujos (m) are partdecoration. They are part of the bolsa cuero. The description of dibujos is "Parecen marcas, tal vez grabadas con un punzón al rojo sobre el cuero. No sabes mucho de magia humana, pero has visto otras marcas similares en otros objetos encantados de los que hacen sus magos.".

Understand "marcas" as dibujos when dibujos is visible.

Section 2 - Pedacito de tela

Un pedacito tela roja is a thing with keyword "tela". 
The description of pedacito tela is "Es fácil de reconocer el pedazo como parte de una túnica de un hechicero. Ese color rojo con bordados plateados es inconfundible.".
The naturaleza of pedacito tela is paper.
The tamano of pedacito tela is minusculo.
The printed name of pedacito tela is "pedacito de tela roja".

Understand "pedacito de tela roja" as pedacito tela.

Some bordados (m) are partdecoration. They are part of the pedacito tela. The description of bordados is "Casi no queda nada de los bordados, pero debieron ser hermosos en su momento, al menos en el sentido de belleza que entienden los humanos, claro.".

Understand "plata" or "plateado" or "plateados" as bordados when the bordados are visible.


Section 3 - Extrana aguja

Una extrana aguja is a thing with keyword "aguja". It is wearable and female.
The tamano of aguja is minusculo.
The naturaleza of aguja is metal.
The printed name of extrana aguja is "extraña aguja".
The keyword of extrana aguja is "aguja".
The description of extrana aguja is "Dorada con finos [j]trazos[x] en la superficie. Tal vez se trate de un objeto hechizado o del componente de un hechizo.".

Algunos trazos are partdecoration. It is part of extrana aguja. The description of trazos is "Apenas son visibles, pero te recuerdan un poco a las cosas que los humanos hacen para que sus objetos estén dotados de magia.".

Section 4 - Cuenta de cristal

Una cuenta cristal is a thing with keyword "cristal". It is female.
The tamano of cuenta is minusculo.
The description of cuenta cristal is "Perfectamente redonda y perfectamente transparente. No te haces una idea de qué puede ser o para qué puede servir.".
The printed name of cuenta cristal is "cuenta de cristal".

Instead of rubbing cuenta:
	say "Frotas un poco la cuenta de cristal, pero no ocurre nada especial. No debe ser una 'cuenta con un genio dentro'. Una lástima te vendría bien uno de esos ahora, si es que existen...".

Instead of searching cuenta:
	say "Uhm... sí, sólo se ve la piel de tu portador al otro lado. Nada de revelaciones místicas ni nada parecido.".

Understand "cuenta de cristal" as cuenta.

Section 5 - Esqueleto

Un esqueleto is a bag of tricks. It is transparent and fixed in place.
The hidden objects of esqueleto are {bolsa cuero, pedacito tela, extrana aguja}.
The description of esqueleto is "Son los [j]huesos[x] de un humano. El muy imbécil debió ser cazado por las fuerzas de Sady Omú cuando deambulaba por alguna razón en este [j]pantano[x]. Aunque algunos detalles del cuerpo te hacen pensar en que tal vez se tratase de un [j]mago[x].".

The found phrase of esqueleto is "Apartando las [j]espinas[x] del [j]matorral[x], procuras rebuscar entre los huesos hundidos en el suelo del [j]pantano[x] y las raíces. Finalmente encuentras [a second noun], aunque tal vez haya más cosas.".

Understand "cuerpo" or "muerto" or "mago" as esqueleto when esqueleto is visible.

Instead of taking esqueleto:
	say "Este esqueleto debe llevar mucho tiempo aquí. Está demasiado enmarañado en el matorral. No hay forma de sacarlo, tal vez algún hueso, o tal vez buscando entre ellos.";
	if hueso is not visible or hueso is part of esqueleto:
		now hueso is in matorral.

Understand "huesos" as esqueleto when the esqueleto is visible.

Section 6 - Matorral

Un matorral is a bag of tricks in Pantano6. It is transparent and fixed in place.
The hidden objects of matorral are {esqueleto}.
The description of matorral is "Destaca entre el resto de las [j]plantas[x] por su frondosidad y sus [espinas]. Es una planta fiera entre otras blandas y apestosas. Te cae bien.".

The found phrase of matorral is "Apartando las espinas y ramas duras con cuidado buscas en el matorral. Finalmente encuentras [a second noun], aunque tal vez haya más cosas.".

Some espinas (f) are partdecoration. They are part of the matorral. The description of espinas is "Casi parecen pequeñas zarpas. Hermoso arbusto.". The espinas are female.

Understand "arbusto" as matorral when the matorral is visible.
Understand "zarpas" as espinas when the matorral is visible.
Understand "busca [ramas] [a thing]" as searching when matorral is visible.

Before of waving or pushing matorral:
	say "[if matorral is supporter]si[otherwise]no[end if]";
	say "Lo sacudes un poco, pero no logras nada con ello. Tal vez buscando entre sus espinas con cuidado...";
	stop the action.

After going to Pantano6:
	if uvturn of Pantano6 is not 0:
		let t be turn count;
		decrease t by uvturn of Pantano6;
		if PasosEnCentral is greater than t:
			say "[one of]Uhm... ¿estás andando en círculos?[or]¡Otra vez este matorral? ¿O se trata de otro diferente?[or]¿Es posible que estés dando vueltas y regresando una y otra vez al matorral? ¿O es que es otro?[at random]";
	now uvturn of Pantano6 is turn count;
	continue the action.

Section 7 - Pergamino congelador

Un pergamino azulado is a thing. It is in bolsa cuero. The description of pergamino azulado is "En un lado su superficie azulada está repleta de extrañas runas y dibujos geométricos. Por el otro lado en letra muy pequeña hay unas palabras en escritura humana.".  The naturaleza of pergamino azulado is paper. The tamano of pergamino azulado is minusculo.

Understand "azul" as pergamino azulado.

Some palabras (f) are partdecoration and female. They are part of the pergamino azulado. The description of palabras is "Aunque la letra es muy pequeña y el lenguaje más que desconocido te resulta molesto, se puede leer 'Moroth Vankut Morai'.".

The printed name of palabras is "palabras del pergamino azulado".

Understand  "azul" or "azulado" or "azules" as "[azul]"

Understand   "[azul]" or "palabras del pergamino [azul]" or "palabras de pergamino [azul]" or "palabras pergamino [azul]" or "de pergamino [azul]" or "del pergamino [azul]" as palabras when palabras is visible.


Section 8 - Hueso

Un hueso is a thing. The description of hueso is "Uno de los huesos del esqueleto del matorral. ¿Una tibia? Algo así, no sabes mucho de anatomía humana. Por lo general para ti los huesos son 'esas cosas que escupes al acabar'.".
The tamano of hueso is medio.
Hueso is part of esqueleto.

Understand "antorcha" as hueso when resina is part of hueso and hueso is visible.

Hueso has a number called duracion. Duracion of hueso is 0.

Before taking hueso when hueso is part of esqueleto:
	now hueso is in matorral.

Chapter 3 - Objetos con el manzano perdido

Section 1 - Manzana

Una manzana is a thing. It is edible. It is female. 
The naturaleza of manzana is vegetable.
The description of manzana is "Amarillenta y de aspecto enfermizo, aún así comestible... para tu portador, al menos. Los anillos no comen nada. Lamentablemente.".
The tamano of manzana is medio.
Manzana has a number called quedan. The quedan of manzana is 5.

[ Si se la comen reponemos ]
Every turn:
	if manzana is off-stage and manzana is not listed in hidden objects of manzano and quedan of manzana is greater than 0:
		add manzana to hidden objects of manzano;
		decrease quedan of manzana by 1.
		

Section 3 - Manzano

Un manzano is a bag of tricks in Pantano15. It is transparent and fixed in place.
The hidden objects of manzano are {manzana}.
The description of manzano is "Este [j]árbol[x] frutal, triste y enfermucho, parece completamente fuera de lugar en esta [j]ciénaga[x]. Probablemente alguien tuvo la peculiar idea de tirar una manzana, o sus restos, aquí y el árbol la mala suerte de arraigar. O tal este lugar fue realmente parte de algo civilizado y este árbol es todo lo que queda de aquel tiempo.".

The found phrase of manzano is "Revisando entre las ramas del manzano finalmente encuentras [a second noun]. Aunque quién sabe si no habrá más cosas.".

Understand "entre/en las/-- ramas de/del" as "[ramas]". 
Understand "busca [ramas] [a thing]" as searching when manzano is visible.

[Los árboles se puede 'sacudir', aunque sea duplicando algo el código]
Before of waving manzano:
	let HO be the hidden objects of manzano;
	let NHO be the number of entries in HO;
	if NHO is 0:
		say "Sacudes un rato el manzano, pero nada cae de entre sus ramas.";
	otherwise:
		let longitud be the number of entries of HO;
		let num be a random number from 1 to NHO;
		say "[Un the entry num of HO] cae de entre las ramas.";
		move entry num of HO to location;
		remove entry num from the hidden objects of manzano;
	stop the action.

Instead of pushing manzano:
	try waving manzano.

[Una pequela trampa]
Looking for apples is an action applying to nothing.
Understand "busca manzanas" or "busca manzana" or "encuentra manzana" or "encuentra manzanas" or "encontrar manzana" or "encontrar manzanas" as looking for apples:

Carry out looking for apples:
	if manzana is listed in hidden objects of manzano:
		say "Tal vez examinando cuidadosamente el manzano... veamos.";
		try searching manzano;
	otherwise:
		say "No parece que tenga más manzanas. Al menos no se le ve ninguna ahora mismo.".

Chapter 4 - Objetos junto a la fuente sanadora

Section 1 - Fuente sanadora

Un manantial is a thing in Pantano1. It is male. It is fixed in place.
The description of manantial is "Toda una sorpresa encontrar un manantial de aguas cristalinas aquí.".

Instead of drinking manantial:
	try drinking fuente.

Drinking fuente is an action applying to nothing.

Understand "bebe en el manantial" or "bebe del manantial" or "bebe" as drinking fuente when the location is Pantano1.

Instead of drinking matched scenery when the matched by is "agua" and the location is Pantano1:
	try drinking fuente.

Carry out drinking fuente:
	if sed_del_jugador is greater than 0:
		say "Bebes un poco de agua. Resulta refrescante... para tu portador.";
		decrease sed_del_jugador by 60;
	otherwise:
		say "Ya has bebido demasiado agua. Tu portador se siente algo empachado, mejor dejar de beber.".

Understand "fuente" as manantial when the location is Pantano1.

Chapter 5 - Objetos relacionados con la cruz

Section 1 - El crucifijo

Una cruz is a thing. It is female.
The description of cruz is "Uno de los objetos que representan a los dioses humanos. Crees que éste se corresponde a un tal Ou, un dios de la vida o algo así... Éste está realizado en alguna clase de metal bruñido, hierro tal vez.".

The naturaleza of cruz is metal.
The tamano of cruz is medio.

Some cruzhierro is partdecoration. It is part of cruz. The description of cruzhierro is "Se trata de hierro o algo muy parecido que de alguna forma no se ha oxidado aún en este entorno.". The printed name of cruzhierro is "hierro".

Understand "hierro" as cruzhierro when cruz is visible.

Section 2 - El arbusto (que no se distingue sin más)

Un arbusto is a bag of tricks. It is transparent and fixed in place. The description of arbusto is "[if the number of entries of hidden objects of arbusto is 1]No es más que un arbusto más del pantano, pero estás seguro que los destellos salían de él.[otherwise]Es el arbusto en el que estaba escondida la cruz.[end if]".
The hidden objects of arbusto are {cruz}.

Un destello is part of arbusto.

Understand "destellos" as destello.

Instead of examining or searching destello when cruz is listed in hidden objects of arbusto:
	try searching arbusto.

Instead of examining or searching destello when cruz is not listed in hidden objects of arbusto:
	try examining cruz.

Before taking cruz when the destello is part of arbusto:
	remove destello from play.

Instead of doing anything except metacommanding with destello:
	say "Eso no se puede hacer.".

The found phrase of arbusto is "¡Vaya! Tras buscar concienzudamente entre sus ramas encuentras [a second noun].".

Every turn when the location is Pantano3:
	if the arbusto is not in Pantano3:
		if a random chance of 1 in 4 succeeds:
			say "Te ha parecido ver por el rabillo del ojo que uno de los arbustos de este lugar ha emitido un destello de luz.";
			move arbusto to Pantano3.

Understand "matorral" or "arbustos" as arbusto when the arbusto is visible.
Understand "busca [ramas] [a thing]" as searching when arbusto is visible.

After going to Pantano3:
	if uvturn of Pantano3 is not 0 and arbusto is visible:
		let t be turn count;
		decrease t by uvturn of Pantano3;
		if PasosEnCentral is greater than t:
			say "[one of]Uhm... ¿estás andando en círculos?[or]¡Otra vez este arbusto? Realmente estás perdido en este pantano.[or]¿Es posible que estés dando vueltas y regresando una y otra vez al arbusto?[at random]";
	now uvturn of Pantano3 is turn count;
	continue the action.


Chapter 6 - Objetos relacionados con la grasa para antorchas

Section 1 - El arbolillo de la goma

El arbolillo goma is a NSE container. It is in Pantano7. It is fixed in place. 
The printed name of arbolillo is "arbolillo pequeño".
The description of arbolillo is "Un pequeño arbolillo con un peculiar olor y [j]glóbulos[x] amarillentos pegados a su corteza. Parece un arbolillo de las praderas o del desierto, triste por encontrarse en este espantoso pantano.".

Some globulos (m) are partdecoration. They are part of the arbolillo. The description of globulos is "Bultos, como grandes lágrimas que el arbolillo ha derramado, espesas y amarillentas como oro, algunas de ellas aún blandas, trémulas al tacto.".

Understand "globulo" or "lagrimas"  or "lagrima" as globulos when globulos is visible.
Understand "resina" as globulos when resina is not visible and globulos is visible.

Understand "busca [ramas] [a thing]" as searching when arbolillo is visible.

Instead of taking globulos (this is the takglob rule):
	if resina is not the location and resina is not visible and resina is not part of anything:
		move resina to location;
		try silently taking resina;
		say "Coges un poco de resina del arbolillo.";
	otherwise:
		say "Ya tienes bastante resina de este árbol.".

The takglob rule is listed before the actpart rule in the instead rules.

Before of waving or pushing arbolillo:
	say "Lo sacudes un poco, pero no logras nada con ello.";
	stop the action.

Instead of searching arbolillo:
	say "Lo único extraño que hay en el arbolillo son unos glóbulos amarillentos.";
	try examining globulos.

Section 2 - Resina

Un resina is a thing with keyword "resina". The printed name of resina is "poco de resina".
The tamano of resina is medio.
Understand "poco de resina" as resina when the resina is visible.
The description of resina is "Un poco de resina de uno de los [j]árboles[x] raros, de esos que parecían fuera de contexto en el [j]pantano[x]. Crees que es el árbol con el que lo humanos construyen muchos de sus 'instrumentos', como las antorchas. Los dragones tienen otras formas mucho más efectivas y directas de iluminar un lugar.".

Chapter 7 - Objetos en la tela de araña

Section 1 - Pedernal

Un pedazo pedernal is a thing with keyword "pedernal". The description of pedazo pedernal is "No se trata más que de una minúscula piedra oscura que muchos humanos llevan encima. Crees que la usan para crear fuego de alguna forma. Los dragones lleváis algo parecido en vuestra garganta. ¡Ojalá pudieses usarla!".
The printed name of pedernal is "pedazo de pedernal".

Understand "pedazo de pedernal" as pedernal.

The naturaleza of pedernal is flint.
The tamano of pedernal is minusculo.

Section 2 - Guantes de cota de malla

Some guantes cota malla (m) is a wearable thing. The description of guantes cota malla is "Unos pesados guantes de cota de malla. Están oxidados pero servirían para proteger las manos de cualquiera contra armas, espinos o incluso metales calientes por un corto periodo de tiempo.".
The tamano of guantes is medio.
The printed name of guantes is "guantes de cota de malla".
Understand "guantes de cota de malla"  or "guante" as guantes.

The naturaleza of guantes cota malla is metal.

Understand "guanteletes" as guantes.

Instead of wearing guantes when the player is icalante or the player is yerk:
	say "Este portador tiene las manos demasiado grandes, simplemente no le caben los guantes de cota de malla.".

Instead of wearing guantes when the player is berg:
	say "Este portador tiene 'zarpas' en los dedos y no hay forma de ponerle los guantes de cota de malla. Estas asquerosas uñas roñosas se quedan enganchadas todo el tiempo. ¡Qué asco!".

Section 2 - Cadáver en la telaraña

Un bulto pegajoso is a bag of tricks. It is transparent and fixed in place. The description of bulto pegajoso is "Se trata del cadáver de un humano. Por la pinta el de un desdichado comerciante más bien pobre. Está reseco, la araña gigante ha debido alimentarse de él durante largo tiempo.".
The hidden objects of bulto pegajoso is {pedazo pedernal, guantes cota malla}.

The found phrase of bulto pegajoso is "Rebuscas en el bulto pegajoso, arrancando pedazos de la tela de araña que se quedan desagradablemente pegados entre los dedos de tu portador, y lo que es peor en ti mismo, pero finalmente merece la pena porque logras encontrar [a second noun].".

Chapter 8 - Goolos

Section 1 - Planta del goolos

Una planta rastrera is a NSE container in Pantano11. It is transparent, female and fixed in place. The description of planta rastrera is "Hojas alargadas con pintas amarillas. Zarcillos que se aferran desesperados a cualquier cosa. Un tronco rojizo y ridículamente grueso. Es claramente una planta goolos.".

Section 2 - Goolos

Un goolos is a thing in planta rastrera. The description of goolos is "De color naranja intenso, de forma remotamente parecido a un híbrido entre una calabaza y una pera,  y de un olor intenso. Extremadamente dulce y nutritivo para muchos herbívoros grandes. Embriagador para un dragón. Mortal para casi todos los humanoides. Eso es un goolos maduro.".
The tamano of goolos is medio.

[ Acciones modificadas para el Goolos ]
Before taking goolos when the goolos is in planta rastrera:
	say "Retuerces el goolos hasta que se suelta de su planta.".

Instead of inserting goolos into planta rastrera:
	say "Una vez cortado no es posible unir el goolos a su planta. Ni el goolos ni casi ninguna fruta, y aquellas con las que es posible suelen estar armadas de zarpas y dientes afilados.".

Instead of eating goolos:
	remove goolos from play;
	if the player is nuhur or the player is a orco:
		say "Uhm... puedes sentir el gozo de tu portador al saborear el dulce goolos.";
		bnw;
		say "Recuerdas como si fuese hace más de un siglo cuando los comías tu mismo, llenando tu mente de pensamientos raros, de visiones extravagantes... oh... que absurdo placer te proporcionaba... vaya... ¿qué pasa?";
		bnw;
		say "Parece que a tu portador el goolos no le sienta nada bien. Ese dolor, ¡ouch!, debe estar reventándole algo por dentro.";
		bnw;
		say "Oh, vaya... No va a sobrevivir.";
		morir en el pantano;
	if the player is Icalante:
		say "Uhm... delicioso, puedes sentir cómo, no sólo lo encuentra exquisito, sino también fortalece a tu portador.";
		now hambre_del_jugador is 0.

[ Parte del puzzle del Icalente ]
Instead of giving goolos to icalante when the icalante is i_enfadado:
	remove goolos from play;
	say "El enorme icalante olisquea la fruta. Primero con desconfianza, luego con sorpresa y finalmente con placer.";
	bnw;
	say "La coge con avidez y la devora de un único bocado. ¡Vaya parece muy satisfecho!";
	now the icalante is i_preso.

[ Con comida vegetal lo acepta y tiene cierta probabilidad de quedarse contento, probabilidad baja ]
Instead of giving a edible vegetal thing (called comida) to icalante when the icalante is i_enfadado:
	remove comida from play;
	say "El [j]icalante[x] olisquea [the comida] y finalmente se l[o comida] come, pero no parece gustarle demasiado.";
	bnw;
	if a random chance of 1 in 20 succeeds:
		say "Aún así parece satisfecho y mucho más tranquilo.";
		now icalante is i_preso;
	otherwise:
		say "Aún sigue muy enfadado.".

[ Otros objetos los pilla y los arroja lejos ]
Instead of giving a thing (called regalo) to icalante when the icalante is i_enfadado:
	let the destination be a random adjacent room;
	let the way be the best route from the location to the destination;
	move regalo to the destination;
	say "Con mucho cuidado le das [the regalo] al icalante; pero parece que no le gusta nada ese regalo. Reacciona con violencia, gruñendo y arrojándolo lejos en dirección [way].".

[ Replantar Goolos ]
Every turn:
	if goolos is off-stage and the location is not Pantano11:
		move goolos to planta rastrera.

Chapter 9 - Madera seca

Section 1 - Leno seco

Un leno seco is a thing. The printed name of leno seco is "leño seco".
The description of leno seco is "Lo más destacable de este pedazo de madera alargado es que ha permanecido seco en este entorno en el que todo está húmedo.".
The tamano of leno is medio.

Understand "madera alargada" or "madera" or "pedazo alargado" or "pedazo de madera" or "palo" as leno seco when leno seco is visible.
Understand "antorcha" as leno seco when resina is part of leno seco and leno seco is visible.

Leno seco has a number called duracion. Duracion of leno seco is 0.

Section 2 - Piedra

Una piedra is a thing. It is female. The description of piedra is "No es más que una tosca piedra. Una más de entre los restos del refugio de los leñadores.".
The tamano of piedra is medio. Piedra is part of monton piedras.

Before taking piedra when piedra is part of monton piedras:
	now piedra is in location.

Chapter 10 - Junto al Icalante

Section 1 - Grilletes

Some grilletes (m) are a thing. The description of grilletes is "Unos grilletes de viejo hierro-dragón, oxidados pero extremadamente resistentes. Sólo la llave correcta, la magia o alguien fuerte como un dragón podría abrirlos.".

El HierroDragon is partdecoration. It is part of grilletes. The description of hierrodragon is "Este metal conocido como hierro-dragón es probablemente el más resistente de todos los que existen, una aleación del burdo hierro común con las más sagradas escamas de antiguos ancestros nuestros. Ni el más intenso fuego puede usarse para darle forma, ni el aliento de un dragón, tan sólo la hechicería puede moldearlo una vez forjado por primera vez.".
The printed name of HierroDragon is "hierro-dragón de los grilletes".

Understand "hierro" or "hierro-dragon" or "dragon" or "metal" as HierroDragon when HierroDragon is visible.

[Abrir grilletes, sinónimos]
Instead of unlocking grilletes with llave:
	try opening grilletes.

Instead of unlocking grilletes with aguja:
	try opening grilletes.

Instead of dropping icalante when the grilletes is visible:
	try opening grilletes.

Instead of attacking grilletes:
	try opening grilletes.

Instead of taking or opening grilletes:
	let icalibre be 0;
	if llave is not carried and aguja is not carried:
		say "Intentas abrir los grilletes por la fuerza y liberar así al icalante, pero resulta imposible.";
	otherwise if llave is not carried:
		say "Uhm... tal vez con la aguja se pueda abrir... veamos...";
		bnw;
		if a random chance of 15 in 100 succeeds:
			say "¡Sí! ¡Los grilletes ceden ante la aguja!";
			move grilletes to the location;
			now icalibre is 1;
		otherwise:
			say "¡Oh, no! La aguja no era tan resistente como parecía y ha quedado inservible.";
			remove aguja from play;
	otherwise:
		say "Veamos si esta es la llave que abre los grilletes...";
		bnw;
		say "...pues sí, ha habido suerte.";
		now icalibre is 1;
	if icalibre is 1:
		bnw;
		say "El [j]icalante[x] parece muy, pero que muy agradecido con tu portador.";
		now icalante is i_siguiendote;
		activate icalante;
		remove grilletes from play.

Instead of putting polvora on grilletes:
	say "Si pones un poco de este polvo negro en los grilletes y... uhm... no";
	bnw;
	say "...eso no funcionaría, el hierro-dragón puede resistir el fuego de un dragón, una explosión de este polvo no le haría ni calentarse.".

Instead of inserting polvora into grilletes:
	try putting polvora on grilletes.


Chapter 11 - En Zhur

Section 1 - Machete oxidado

Un machete oxidado is a thing. The description of machete oxidado is "Supones que un orco considerará esta cosa oxidada una espada de la mejor calidad, pero en realidad a duras penas merece el calificativo de 'machete inaceptable'.".
The tamano of machete is medio.
The naturaleza of machete is metal.

Section 2 - Llave del icalante

Una llave is a thing. It is female. The description of llave is "Una llave grande, vieja, negra, pero que no está oxidada, ¿tal vez una llave de hierro-dragón? Tal vez, aunque, ¿para qué se construiría algo así con tan caro metal?, parece absurdo.".
The naturaleza of llave is metal.

HierroDragon2 is partdecoration. It is part of llave. The description of hierrodragon2 is "Este metal conocido como hierro-dragón es probablemente el más resistente de todos los que existen, una aleación del burdo hierro común con las más sagradas escamas de antiguos ancestros nuestros. Ni el más intenso fuego puede usarse para darle forma, ni el aliento de un dragón, tan sólo la hechicería puede moldearlo una vez forjado por primera vez.".
The printed name of HierroDragon2 is "hierro-dragón de la llave".

Understand "hierro" or "hierro-dragon" or "dragon" or "metal" as HierroDragon2 when HierroDragon2 is visible and HierroDragon is not visible.

Chapter 12 - Liana

Una liana is a thing in Pantano13. "Entre la vegetación de este lugar destaca una robusta [j]liana[x].".
The liana can be unida or cortada. The liana is unida. The liana is fixed in place. The liana is female.
The tamano of liana is medio.
The description of liana is "[if liana is unida]Está firmemente anclada a los árboles y demás vegetación circundante. Será necesario algo para poder cortarla, o mucha mucha fuerza.[otherwise]Flexible y resistente, podría usarse muy bien de cuerda para cualquier cosa.[end if][if there is a thing that is part of liana] Atado a ella: [list of things which are parts of liana with definite articles].[end if]".

Before taking liana:
	if the liana is unida:
		if the player is icalante or the player is yerk:
			say "Pues no ha resultado demasiado complicado arrancarla de cuajo. La verdad.";
			now the liana is cortada;
			now the liana is not fixed in place;
			continue the action;
		otherwise if machete is carried:
			say "Con facilidad el machete separa la liana de los árboles circundantes permitiéndote cogerla.";
			now the liana is cortada;
			now the liana is not fixed in place;
			play sound of machete in midground;
			continue the action;
		otherwise:
			say "Uof... nada. Imposible. Habría que ser muy fuerte para poder separarla de estos árboles.";
			stop the action;
	otherwise:
		continue the action.

Instead of cutting liana when liana is unida:
	try taking liana.

Chapter 13 - Túmulo

Section 1 - Hiedra

To say montumul:
	if monticulo is inicial:
		say "montículo";
	otherwise:
		say "túmulo".

Una hiedra espinosa is fixed in place. "[if hiedra is not despejada]Una [j]hiedra[x] espinosa recubre gran parte de las [j]piedras[x] que conforman un montículo en este lugar.[otherwise]La [j]hiedra[x] recubre buena parte del [montumul] pero la parte que has arrancado deja ver un acceso a su interior, hacia abajo.[end if]".
The description of hiedra is "Esta es una de esas planta malévolas del [j]pantano[x] Hapawa. No es una hiedra, ni una zarza exactamente, sino una especie de híbrido entre ambas, probablemente venenosa, y en cualquier caso una suerte de monstruo entre las [j]plantas[x]. Ésta se ha extendido mucho, debe ser muy antigua.".
Hiedra espinosa is in Pantano23.

Hiedra can be despejada. Hiedra is not despejada.

Understand "arbusto" or "arbustos" or "espinos" or "espino" as hiedra when the location is Pantano23.

[ Avisar que es espinoso ]
Instead of doing anything except examining or smelling or cutting or metacommanding with hiedra when guantes is not worn:
	say "La hiedra es demasiado peligrosa como para manipularla sin protección. Podrías perder el control sobre tu portador debido al dolor que sufra, o incluso perderlo a él si se envenena demasiado.".

Understand "podar [a thing]" or "poda [a thing]" as cutting when the location is Pantano23.

[ Para cortarla hace falta un machete ]
Instead of cutting hiedra when machete is not carried:
	say "No parece mala idea podar la hiedra, pero sin alguna clase de herramienta cortante va a resultar imposible.".

[ Con el machete sí ]
Instead of cutting hiedra when machete is carried:
	say "Tu portador va golpeando aquí y allá con el machete la hiedra.";
	play sound of machete in midground;
	bnw;
	say "Poco a poco, va quedando al descubierto un túmulo draconil que aún conserva algo de su antiguo esplendor.";
	bnw;
	play sound of machete in midground;
	mostrar entrada al tumulo.

[ Despejar la hiedra si se viste la cota de malla ]
Instead of taking not despejada hiedra when the guantes is worn:
	say "Los guantes de cota de malla parece ser suficiente protección para manipular la hiedra.";
	bnw;
	if the player is icalante or the player is yerk:
		say "Tu portador arranca con ellos la hiedra sin mostrar ninguna molestia.";
		bnw;
		say "Al poco queda al descubierto un túmulo draconil con lo que queda de su antiguo esplendor.";
		bnw;
		mostrar entrada al tumulo;
	otherwise:
		say "Sin embargo tu portador no es suficientemente fuerte como para arrancar casi nada de esta vieja hiedra. Tal vez cortándola.".

To mostrar entrada al tumulo:
	now hiedra is despejada;
	now monticulo is alDescubierto;
	now Pantano24 is mapped below Pantano23;
	now Pantano24 is mapped inside Pantano23;
	now Pantano23 is mapped above Pantano24;
	now Pantano23 is mapped outside Pantano24;
	move protector to Pantano23;
	say "Para tu sorpresa el túmulo tiene un acceso claro a su interior. Pero...";
	bnw;
	say "...protegida.";
	bnw;
	say "Un esqueleto hechizado se alza desde el suelo cuando avanzas hacia el acceso.";
	bnw;
	say "¡Un protector!";
	bnw;
	say "Habías escuchado historias sobre ellos. Sobre esclavos humanos condenados a vigilar la tumba de sus dueños para siempre. La vieja y gloriosa nigromancia de los sacerdotes dragón.";
	bnw;
	say "Pero no sólo el esqueleto es el prodigio. Lo circunda una luminiscencia negra, la poderosa magia de negación de la vida.";
	bnw;
	say "¿Reconocerá en ti a un descendiente de sus señores? ¿Te permitirá descender hacia las profundidades el túmulo?.".

Section 1 - Monticulo

Un monticulo piedras is a scenery. It is in Pantano23.
The printed name of monticulo is "montículo de piedras".
Monticulo can be inicial, esTumulo or alDescubierto. Monticulo is inicial.
The description of monticulo  is "[if monticulo is inicial]Grandes piedras, enormes más bien, que parecen parte de alguna clase de construcción, pero es irreconocible debido a la gran cantidad de [j]hiedra[x] espinosa que las recubren. Aún así se pueden entrever algunos [j]símbolos[x] o [j]líneas[x] esculpidas en algunas de ellas.[otherwise if monticulo is esTumulo]Se trata de un antiguo [j]túmulo[x] de tiempos remotos, la tumba de un arcaico señor de los dragones.[otherwise]Hay grandeza en la tumba de un señor dragón, más ahora que puedes verla al completo, con sus símbolos a la vista.[end if]".

Understand "piedra" or "piedras" or "ruinas" as monticulo when the location is Pantano23.
Understand "monticulo de piedras" as monticulo when the location is Pantano23.

Understand "tumulo" as monticulo when the location is Pantano23 and monticulo is not inicial.

Some lineas (f) are partdecoration. They are part of the monticulo. The description of lineas is "Líneas grabadas en las rocas que parecen forma uno o varios [j]símbolos[x].".

Some simbolos (m) are partdecoration. They are part of the monticulo. The description of simbolos is "[if monticulo is not alDescubierto]Son las antiguas marcas tribales que identifican a una familia dragón. Lamentablemente están demasiado recubiertas de [j]hiedra[x] para poder leer los símbolos.[otherwise]Una vez limpios de hiedra es fácil reconocer los símbolos de los dragones dorados, tu filia, así como los del tronco arcaico de la familia Drack. Toda esta región debió ser parte de las tierras de esta familia en los tiempos anteriores a las revueltas de los humanos.[end if]".

Instead of searching simbolos:
	try examining simbolos.

Instead of examining simbolos when monticulo is inicial:
	say "Parecen... pero, ¡por las heladas praderas del Infierno!";
	bnw;
	say "¡Esto es un túmulo draconil!";
	bnw;
	say "Una vieja tumba olvidada de los viejos tiempos, cuando los dragones gobernábamos sobre el resto de las [j]criaturas[x]. Un recuerdo de la Edad Ígnea, cuando hubiese sido imposible que un dragón cayese en un estado tan lamentable como el tuyo.";
	bnw;
	say "Hay que entrar. Aunque sea para honrar a los restos del gran señor que debe ocupar el túmulo.";
	now monticulo is esTumulo.

Instead of entering monticulo when monticulo is not alDescubierto:
	say "No ves una forma de entrar en él. Tal vez si despejases un poco la hiedra que lo cubre...".

Chapter 14 - Interior túmulo

Section 1 - Dedal

Un dedal is wearable. The printed name of dedal is "dedal de nobleza draconil".
The description of dedal is "¡Qué maravilla! Una vieja reliquia de la la Edad Ígnea. Estos dedales, normalmente realizados en metal, como éste, eran portados por los nobles dragones en su zarpa principal de su mano diestra. Con ellos mostraban su ascendencia, demostraban ser quienes decían y al tiempo sugerían a sus visitantes que sus intenciones eran, de momento, pacíficas, pues cubrían su zarpa principal.".
The naturaleza of dedal is metal.
The tamano of dedal is grande.

Understand "dedal de nobleza draconil" as dedal.

Section 2 - El mapa

Un antiguo mosaico is fixed in place with keyword "mosaico". The printed name of antiguo mosaico is "antiguo mosaico".
The description of antiguo mosaico is "Un viejo mosaico con escenas de la Edad Ígnea, con el mapa de los túneles bajo la fortaleza, que indica la ruta a seguir en los túneles: primero hacia el [east], luego hacia el [south], retroceder por otro túnel al [north] y finalmente hacia el [west] un largo trecho hasta los sótanos de la fortaleza.".
Mosaico can be leido. Mosaico is not leido.

Instead of examining antiguo mosaico for the first time:
	say "Justo bajo los restos de tus antepasado se extiende un antiguo mosaico, que representa...";
	bnw;
	say "...vaya, vaya, vaya...";
	bnw;
	say "...esto demuestra que los dragones dorados son los auténticos dueños de la fortaleza de Sady Omú... y esto... uhm...";
	bnw;
	say "¡vaya, parece un mapa de los túneles bajo la fortaleza!";
	bnw;
	say "Puede ser muy útil. Según esto tras entrar en las [j]cuevas[x]  hay que ir al [east]. Luego coger un túnel hacia el [south]...";
	bnw;
	say "ya ves... luego hay que retroceder hacia el [north] por otro túnel y finalmente...";
	bnw;
	say "...un largo trayecto hacia el [west] que lleva a los sótanos de la fortaleza.";
	now mosaico is leido.

Understand "mapa" as mosaico.

Section 9 - Restos

Some restos (m) are a bag of tricks. They are scenery. They are in Pantano24. The description of restos is "Al observar todos los huesos aquí presentes no cabe duda quién es la raza superior. Los sagrados restos de tus antepasados, especialmente las escamas están relucientes, como escudos de bronce recién forjados.".
The hidden objects of restos is {dedal, antiguo mosaico}.
The printed name of restos is "restos del poderoso señor dragon".

The found phrase of restos is "Con gran respeto revisas los restos de tus antepasados hasta encontrar [the second noun]. Aunque quién sabe si no habrá más cosas, este lugar es tan antiguo y sagrado...".

Understand "hueso" or "huesos" or "cadaver" or "muerto" or "dragon" or "escamas" or "escama" or "poderoso" or "senor" as restos when the location is Pantano24.

Section 10 - Restos servidores

Some restos_servidores (m) are a bag of tricks. They are scenery. They are in Pantano24. The description of restos_servidores is "Los huesos de los servidores del dragón enterado que tuvieron el honor de ser sacrificados a la muerte de su amo, así como probablemente los huesos de los enemigos lo bastante importantes como para ser recordados de esta forma.".
The printed name of restos_servidores is "restos de sus servidores y enemigos".

The found phrase of restos_servidores is "Revisas los restos hasta encontrar [the second noun]. Aunque quién sabe que más habrá, este lugar es tan antiguo...".

Understand "servidores" or "enemigos" or "restos de los servidores"  as restos_servidores when the location is Pantano24.

Chapter 15 - Huerta abandonada

Section 1 - Calabaza

Una calabaza is a thing. It is edible. It is female. The naturaleza of calabaza is vegetable.
The description of calabaza is "Una de esas calabazas dulces que gustan a casi todos los humanoides.[if calabaza is mordida] Le falta una parte.[otherwise if calabaza is poco] Una buena parte ya ha sido consumida.[otherwise if calabaza is media] Bueno, en realidad sólo como la mitad de ella.[otherwise if calabaza is casi] En realidad, ya sólo queda un poco de la calabaza.[end if]".

Calabaza can be entera, mordida, poco, media, or casi. Calabaza is entera.
The tamano of calabaza is medio.

Instead of wearing calabaza:
	say "Menudas ideas de clérigo tengo a veces. ¡He pensado en ponerle la calabaza en la cabeza a mi portador! Evidentemente sería gracioso verlo así, pero se caería todo el rato. Mejor que se la vaya comiendo.".

Section 2 - Huerta y decoración

Una huerta is a bag of tricks. It is scenery. It is in Pantano26.  It is female.
The description of huerta is "Agujeros y extraños surcos aún se ven entre la vegetación. Es la clase de cosas que hacen los humanos, dibujar en la tierra y de alguna forma esperar así que ésta los alimente. Desde el aire sus dibujos pueden llegar a provocar terror por su evidente malignidad.".

Understand "huerta" or "restos" or "tierra" or "huerto" or "surcos" as huerta when the location is Pantano26. 

Before searching huerta:
	if calabaza is off-stage and resuelto of Pantano26 is 0:
		add calabaza to hidden objects of huerta;
		now resuelto of Pantano26 is 1.

After examining huerta:
	if calabaza is off-stage and resuelto of Pantano26 is 0:
		bnw;
		say "¡Mira! ¡Una calabaza aún ha crecido por aquí! Igual resulta de utilidad.";
		move calabaza to Pantano26;
		now resuelto of Pantano26 is 1.


Chapter 16 - Cárcel

Section 1 - Jaula falsa

Una jaula_falsa is a scenery in Pantano20. It is female.
The printed name of jaula_falsa is "jaula".
The description of jaula_falsa is "Hierro vulgar y oxidado colgado allá en lo alto, unida a una rama gruesa, parece contener algo.".

Understand "jaula" as jaula_falsa when jaula_falsa is visible.

Instead of doing anything except examining or metacommanding with jaula_falsa:
	say "Está demasiado alta, habría que acercarse hasta ella antes.".

Section 2 - Arbol

Does the player mean doing something with arbol recio when the player is in Pantano20: it is very likely.
Does the player mean doing something with rama_arbol when the player is in Pantano20: it is very likely.

Un arbol recio is a scenery in Pantano20. 
The description of recio arbol is "Un arbol viejo y muy alto. Su [j]corteza[x] es demasiado lisa para tratarse de un árbol tan grande y sus [j]ramas[x] empiezan demasiado altas.".

La corteza is partdecoration. It is part of the recio arbol. The description of corteza is "De un tono pálido y de tacto liso, casi resbaladizo.".

La rama_arbol is partdecoration. It is part of the recio arbol. It is female. The description of rama_arbol is "Con la misma clase de corteza que el árbol, y demasiado altas como para saltar hasta ellas. Ojalá pudieses volar.". The printed name of rama_arbol is "rama". 

Before doing anything except tying or examining with rama_arbol:
	say "Está demasiado alta.";
	stop the action.

Understand "ramas" or "rama" as rama_arbol when the location is Pantano20.

Instead of climbing recio arbol:
	try going up.

Before of going up when the location is Pantano20:
	if player is icalante:
		say "La [j]corteza[x] de este árbol es realmente resbaladiza pero eso no es un problema para el icalante. Estos bichos viven para trepar.";
	otherwise if liana is not part of recio arbol:
		say "Intentas trepar por la corteza del árbol, pero es demasiado resbaladiza para tu portador. ¡Ojalá tuviese alas!";
		stop the action;
	otherwise:
		say "Te agarras a la liana y apoyando los pies en el árbol asciendes...".

[Atar no]
Instead of tying recio arbol to liana:
	say "Atar la liana a la base del árbol no nos ayudaría a subirlo. Es mejor idea buscar alguna forma de atarla en una de las ramas.".

Before of tying rama_arbol to liana:
	say "Todas las [j]ramas[x] están demasiado altas. No alcanzas a atar la cuerda a ninguna de ellas.";
	stop the action.

Instead of throwing liana at jaula_falsa:
	try throwing liana at rama_arbol.

Instead of throwing liana at recio arbol:
	try throwing liana at rama_arbol.

Instead of throwing a thing which is part of liana at jaula_falsa:
	try throwing liana at rama_arbol.

Instead of throwing a thing which is part of liana at rama_arbol:
	try throwing liana at rama_arbol­.

Instead of throwing a thing which is part of liana at recio arbol:
	try throwing liana at rama_arbol.

Instead of throwing liana at rama_arbol:
	let op be nothing;
	repeat with item running through things which are parts of liana:
		if tamano of item is medio:
			now op is item;
			break;
	if op is nothing:
		say "Arrojas la liana hacia la rama para intentar trepar por ella, pero te quedas corto. Tal vez atando algo de peso a uno de los extremos.";
	otherwise:
		say "Usando el peso [del op] logras impulsar la liana hasta que en pocos intentos pasa por encima de la rama.";
		now Copa is mapped above Pantano20;
		now Pantano20 is mapped below Copa;
		now liana is part of recio arbol.

Before of taking liana when liana is part of recio arbol:
		say "Tiras con fuerza de la liana para que se suelte de la rama.";
		now Copa is not mapped above Pantano20;
		now Pantano20 is not mapped below Copa;
		now liana is in location.

Chapter 17 - Copa del arbol

Section 1 - Jaula auténtica

Una jaula is a NSE container. It is fixed in place. It is in Copa. It is female and transparent. It is a closed openable container.
The naturaleza of jaula is metal.
The description of jaula is "[j]Barrotes[x] de recio hierro, aunque oxidado. Una [j]puerta[x] realizada con el mismo material y rematada con un cerrojo no demasiado grande.".

Jaula has a number called intentos. The intentos of Jaula is 0.

[Abrir jaula]
Instead of unlocking jaula with a thing:
	try opening jaula.

Instead of entering jaula:
	say "Sería de locos meterse en una jaula de prisioneros. ¡Y si se cierra por casualidad! Mejor sacar lo que tenga dentro.".

Instead of opening jaula when the aguja is not carried:
	increase intentos of Jaula by 1;
	say "Descolgándote peligrosamente desde la rama, intentas abrir la puerta de la jaula.";
	bnw;
	say "Pero la puerta está cerrada y no parece querer abrir tal y como lo estás intentando.";
	bnw;
	say "Haces fuerza para intentar abrirla...";
	if the player is icalante or the player is yerk:
		say "...y finalmente cede.";
		now jaula is open;
	otherwise if the player is an orco:
		if intentos of jaula is 1:
			say "...sin lograr nada.";
		otherwise:
			if a random chance of 1 in 3 succeeds:
				say "...y tu portador no consigue mantener el apoyo al tiempo que intenta forzar la jaula.";
				bnw;
				say "Cae. Es breve. Doloroso. Y, bueno, evidentemente mortal.";
				try silently going down;
				morir en el pantano;
			otherwise:
				say "...sin lograr nada.";
	otherwise:
		say "...sin lograr nada.".

Instead of opening jaula when the aguja is carried:
	say "Pruebas con la extraña aguja para abrir el cerrojo de la jaula, ¡y funciona! Abierta.";
	now the jaula is open.

This is the enjaulado rule:
	if the action requires a touchable noun and the noun is in jaula and the jaula is closed:
		say "Resulta demasiado complejo acceder [al noun] desde lo alto de la rama mientras la jaula siga cerrada." instead.

The enjaulado rule is listed before the basic accessibility rule in the action-processing rules.

Section 2 - Partes de la jaula

Some barrotes (m) are partdecoration. They are part of the jaula. The description of barrotes is "Demasiado gruesos como para torcerlos o romperlos. Probablemente abrir la puerta es la mejor opción para acceder al interior de la jaula.".
The naturaleza of barrotes is metal.

Understand "barrote" as barrotes when barrotes is visible.

Una puerta jaula is a partdecoration. It is part of the jaula. The description of puerta jaula is "No es más que una lámina de hierro oxidado con un [j]cerrojo[x].".
The naturaleza of puerta jaula is metal.

Understand "lámina" or  "puerta" as puerta jaula when the puerta jaula is visible.

Un cerrojo are partdecoration. It is part of the jaula. The description of cerrojo is "No es muy grande, ni muy resistente, aun sin la llave correcta tal vez se pueda forzar con facilidad si dispones de algún instrumento largo y delgado.".
The naturaleza of cerrojo is metal.

Understand "cerradura" as cerrojo when cerrojo is visible.

Instead of opening thing which is a part of jaula (this is the openjaula1 rule): 
	try opening jaula.
Instead of unlocking thing which is a part of jaula with a thing (this is the openjaula2 rule): 
	try opening jaula.

The openjaula1 rule is listed before the actpart rule in the instead rules.
The openjaula2 rule is listed before the actpart rule in the instead rules.

Instead of putting a thing on cerrojo:
	try opening jaula.

Instead of putting a thing on puerta jaula:
	try opening jaula.


Section 3 - Petaca

Una petaca is a closed NSE container and openable. The description of petaca is "Se trata de una especie de botellita de cuerno repujado que has visto llevar a veces a los humanos. Especialmente a los despreciables soldados llamados 'escupe fuego'. Malditos simuladores del poder de los dragones.".

The material de cuerno (m) is partdecoration. It is part of the petaca. The description of material de cuerno is "Probablemente se trata del asta de una de las reses de los humanos. Ésta está repujada de forma compleja.".

Some repujados (m) are partdecoration. It is part of the petaca. The description of repujados is "Muchos humanos encuentran hermoso algo así, un tallado en sus instrumentos que pretenden simular flores y hojas. Supuestamente una representación de la naturaleza. En realidad una burda parodia, la deformación de la misma por la mente humana.".

Section 4 - Polvora

Un polvora is a thing. The printed name of polvora is "poco de polvo negro". The keyword of polvora is "polvo".
Understand "poco de polvora" or "poco de polvo negro" or "polvo negro" or "polvo" as polvora when the polvora is visible.
The description of polvora is "Un polvo negro de intenso olor, incluso para la limitada capacidad olfativa de tu portador, es posible que se trate del polvo ígneo que usan los odiados 'escupe fuego', esos soldados humanos que pretenden simular la grandeza de un dragón.".

Polvora is in Petaca.

Section 5 - Pergamino amarillo

Un pergamino amarillo is a thing. The description of pergamino amarillo is "Este pergamino tiene una extraña coloración amarillenta. Por una de sus caras un intrincado diseño de líneas rojizas se entrecruzan, la otra no contiene nada excepto algunas [j]palabras[x] en escritura humana.".  The naturaleza of pergamino amarillo is paper.
The tamano of pergamino amarillo is minusculo.

Some palabras2 (f) are partdecoration and female. They are part of the pergamino amarillo. The description of palabras2 is "Aunque la letra es muy pequeña y el lenguaje más que desconocido te resulta molesto, se puede leer 'Mandai Bukah'.".

The printed name of palabras2 is "palabras del pergamino amarillo".

Understand "palabras" or "amarillo" or "amarillas" or "palabras del pergamino amarillo" or "palabras de pergamino amarillo" or "palabras pergamino amarillo" or "de pergamino amarillo" or "del pergamino amarillo" as palabras2 when palabras2 is visible.

Some lineas_pergamino (f) are partdecoration. They are part of the pergamino amarillo. The description of lineas_pergamino is "No es un entrecruzamiento de líneas al azar, tal vez se trate de algo de magia humana.".

Understand "lineas" or "rojizas" or "diseño" as lineas_pergamino when lineas_pergamino is visible.

Una coloracion is partdecoration. It is part of pergamino amarillo. The description of coloracion is "No se trata tanto de que el pergamino en sí sea amarillo como de alguna clase de efecto con la luz. Tal vez sea magia.".

Section 6 - Esqueleto colgado

Un esq_colgado is a bag of tricks. It is transparent. It is in jaula.
The printed name of esq_colgado is "esqueleto".
The hidden objects of esq_colgado are {petaca, pergamino amarillo}.
The description of esq_colgado is "Son los huesos de un humano. Debieron capturarlo los orcos del campamento y lo dejaron colgado en la jaula hasta que murió.".
The tamano of esq_colgado is grande.

The found phrase of esq_colgado is "Removiendo los restos del humano consigues encontrar [a second noun], tal vez haya algo más.".

Understand "esqueleto" or "cuerpo" or "muerto" as esq_colgado when esq_colgado is visible.

Section 7 - Liana atada

Una liana_falsa is in Copa.
The printed name of liana_falsa is "liana".
Understand "liana" as liana_falsa when the liana_falsa is visible.
The description of liana_falsa is "Tu única vía para bajar de aquí... sin matarse, claro. Mejor no tocarla mucho hasta que bajemos de este lugar resbaladizo.".

Instead of doing anything except examining or metacommanding with liana_falsa:
	say "Ya habrá tiempo de hacer eso cuando bajemos de este peligroso lugar.".

Chapter 18 - Objetos de aparición aleatoria
	
Section 1 - Cajita de madera

Una cajita madera is a closed NSE container. "Abandonada sobre el suelo, manchada y mojada, se ve [cajita].".
It is female. It is openable.
The printed name of cajita madera is "cajita de madera".
Understand "cajita de madera" as cajita.
The description of cajita madera is "Una cajita de madera bastante sencilla y liviana.".
The capacidad of cajita madera is 10.

Section 2 - Venda

Una venda is a thing. It is in cajita madera. The naturaleza of venda is paper. Venda is female.
The description of venda is "Una banda estrecha y larga de tela. Supuestamente para ayudar a cuidar las heridas de los humanos.".  

Section 3 - Vieja caja

Una vieja caja is a NSE container. It is female.
It is in Pantano8. The printed name of vieja caja is "vieja caja".
The description of vieja caja is "Una vieja y destartalada caja largo tiempo atrás abandonada.".
The capacidad of vieja caja is 200.
The tamano of vieja caja is grande.

Section 4 - Queso rancio

Un queso rancio is a thing. It is edible.  It is in vieja caja. The naturaleza of queso rancio is meat.
The description of queso rancio is "Parece ya casi una piedra y no huele muy bien, pero es probable que su gruesa corteza lo haya protegido y aún sea comestible.".
The tamano of queso is medio.

Section 5 - Longaniza seca

Una longaniza seca is a thing. It is edible. It is in vieja caja. It is female. The naturaleza of longaniza is meat.
The description of longaniza is "Es una sorpresa que esta cosa humana aún parezca comestible... bueno, más o menos.".

Section 6 - El sombrero 'rojo'

Un viejo sombrero rojo is wearable with keyword "sombrero". "[if the location of the sombrero is in Pantano]Colgando de una rama se ve un mugriento [j]sombrero[x][otherwise]En el suelo hay un [j]sombrero[x] arrugado[end if].".
The description of viejo sombrero rojo is "Pequeño y arrugado, pero por algún motivo esta indumentaria humana de viejo terciopelo rojo te parece agradable.". 
The naturaleza of sombrero rojo is paper.

Section 7 - Viejo cráneo de orco

Un craneo_orco is wearable. "[if the location of the craneo_orco is in Pantano]Colocado sobre una rama, tal vez como una marca, se ve el [j]cráneo[x] de un orco[otherwise]Sonriendo desde el suelo un [j]cráneo[x] de orco[end if].".
It is in Pantano2. The printed name of craneo_orco is "cráneo de orco".
The keyword of craneo_orco is "cráneo".
The description of craneo_orco is "Lo poco que ha quedado de un orco. Aun sin piel ni carne sobre los huesos queda patente su estupidez. Es un cráneo de un tamaño considerable, debió pertenecer a un orco gigantesco.".
The tamano of craneo_orco is grande.

Some huesos craneo is a partdecoration. It is part of craneo_orco. The printed name of huesos craneo is "huesos del cráneo". The keyword of huesos craneo is "huesos".
The description of huesos craneo is "Hasta en los huesos los orcos tienen un color insano.".

Does the player mean doing something with craneo_orco when a orco is visible: it is very unlikely.
Does the player mean doing something with huesos craneo: it is very unlikely.

Understand "orco" or "craneo" as craneo_orco when craneo_orco is visible.

Section 8 - Medallon 'rojo'

Un medallon rojo is wearable. "[if the location of the medallon is in Pantano]Entre las hojas de la vegetación, ves el brillo del oro de un [j]medallón[x].[otherwise]Enrollado en el suelo, casi enterrado, se ve un [j]medallón[x][end if]".
The printed name of medallon is "medallón de rubí".
The description of medallon rojo is "Un pequeño medallón realizado en [j]plata[x] y con un [j]rubí[x] engarzado. No tiene ningún entramado de líneas en su superficie, pero la belleza roja del rubí hace pensar en magia.".
The tamano of medallon is minusculo.

Un rubi is partdecoration. It is part of the medallon. The description of rubi is "Casi tan hermoso como tus ojos de esmeralda. Claro que nada comparable con tus ojos reales cuando eras un dragón. Eso sí que era una joya.".

La plata is partdecoration. It is part of the medallon. The description of plata is "La plata aún es reconocible, pero muy pronto será tan negra y sucia como el pantano. Y la plata nunca podrá compararse, en cualquier caso, con el dorado de tus añoradas escamas.".

The printed name of rubi is "rubí".

Section 9 - Pergamino 'rojo'

Un pergamino rojizo is a thing. "[if the location of the medallon is in Pantano]Entre la maleza del [j]pantano[x] ves lo que parece un [j]pergamino[x] semienterrado.[otherwise]Un pedacito de [j]pergamino[x] está tirado en el suelo[end if]".
The naturaleza of pergamino rojizo is paper.
The description of pergamino rojizo is "Un pedazo de pergamino que ha estado doblado durante mucho tiempo. Su superficie es rojiza. Si alguna vez hubo palabras o líneas sobre él hace mucho que se borraron.".
The tamano of pergamino rojizo is minusculo.

Section 10 - Restos de una seta

Some restos seta (m) is edible. "[if the location of the restos seta is in Pantano]Entre el resto de la vegetación ves una [j]seta[x] medio comida.[otherwise]Aplastada en el suelo se ve una [j]seta[x] medio comida.[end if]".
The naturaleza of restos seta is vegetable.
The description of restos seta is "Parecen los restos un poco resecos de una seta comestible. Al menos comestible para un humano, un dragón jamás comería algo así.".
The tamano of restos seta is minusculo.
The printed name of restos seta is "restos de una seta".
The keyword of restos seta is "seta".

Section 11 - Colmillo 'rojo'

Un colmillo is a thing. "[if the location of the colmillo is in Pantano]Clavado en un árbol, ves un peculiar [j]colmillo[x].[otherwise]Tirado en el suelo se ve un peculiar [j]colmillo[x].[end if]".
The description of colmillo is "Se trata de un simple colmillo, de jabalí tal vez, [j]tallado[x] con simples líneas y tintado algo rojizo.".
The tamano of colmillo is minusculo.

Some tallados (m) are partdecoration. They are part of the colmillo. The description of tallados is "Son líneas decorativas, bueno, de mal gusto pero supones de decorativas. Probablemente se trata de 'arte' de los orcos.".

Understand "lineas" or "tallado" as tallados when the tallados is visible.

Section 12 - Fajin rojo

Un fajin rojo is wearable. "[if the location of the fajin rojo is in Pantano]Un viejo rojo [j]fajín[x] sucio tirado entre el follaje.[otherwise]Un viejo [j]fajín[x] rojo abandonado en el suelo.[end if]".
The description of fajin rojo is "Un viejo fajín de un color rojo desvahído, tal vez de seda.".
The printed name of fajin rojo is "fajín rojo".
The naturaleza of fajin rojo is paper.


Section 99 - Funcion para su colocación

[La lista de objetos nómadas]
Nomadas is a list of objects that varies.
Nomadas is {cajita madera, viejo sombrero rojo, pergamino rojizo, restos seta, fajin rojo,colmillo}.

[Al empezar el juego cada uno se coloca en alguno de los 'hidden' disponibles, asi como en varias localidades]
When play begins:
	sort Nomadas in random order;
	let N be 0;
	repeat with item running through Nomadas:
		increase N by 1;
		if N is 1: 
			move item to Pantano4;
		otherwise:
			let RBT be a random bag of tricks;
			if RBT is restos or RBT is arbusto:
				now RBT is shuesos;
			if item is seta and (RBT is manzano or RBT is bulto):
				now RBT is shuesos;
			[say "[item] --> [RBT].";]
			add item to the hidden objects of RBT.
			
Arcaicos is a list of objects that varies.
Arcaicos is {medallon rojo, cuenta cristal}

When play begins:
	sort Arcaicos in random order;
	repeat with item running through Arcaicos:
		let RBT be a random bag of tricks;
		if RBT is arbusto:
			now RBT is restos;
		add item to the hidden objects of RBT.

Chapter 19 - Serpientes y huesos

Some shuesos (m) is a bag of tricks. It is scenery. It is in Pantano18.  
The printed name of shuesos is "huesos".
The description of shuesos is "No son más que pequeños fragmentos de hueso inservibles. ¿Restos de una comida tal vez? ¿Restos del terror y el sufrimiento.".

Understand "huesos" or "restos" as shuesos when the location is Pantano18. 	

Chapter 20 - Restos deavorks

Some nrestos (m) is a bag of tricks. It is scenery. It is in Cueva1. 
The printed name of nrestos is "restos".
The description of nrestos is "Los sucios restos de los deavorks que has tenido que matar para poder pasar.".

Understand "restos" or "deavorks" as nrestos when the location is Cueva1. 

Chapter 21 - Se pueden coger de cualquier parte

[Objetos correspondientes a backdrops omnipresentes]
Una rama is a thing. It is female.
The description of rama is "Una rama tronchada de un árbol, aceptablemente seca.".
The tamano of rama is medio.

Understand "madera alargada" or "madera" or "pedazo alargado" or "pedazo de madera" or "palo" as rama when rama is visible.
Understand "antorcha" as leno seco when resina is part of rama and rama is visible.

Rama has a number called duracion. Duracion of rama is 0.


Part 4 - PNJs

Chapter 0 - Clases nuevas

[--------------------------------------------------

   Creamos una clase derivada de Patroller 
   solo para que quede más mona y darle
   valores por defecto.

--------------------------------------------------]

A Movil is kind of Patroller.
The drive of a movil is usually 30. [ se mueven un tercio de las veces]
The turn frequency of a movil is usually 1. [pero se plantea cada turno]
A movil is usually aimless. [y se mueven de forma aleatoria]
[no hay puertas pero por si acaso]
The openingcapability of a movil is usually unlockedonly.
the reclosingcapability of a movil is usually leave.

A movil can be muerto. A movil is usually not muerto.

[--------------------------------------------------

   Todos los de la nueva clase se activan al
   principio del juego.

--------------------------------------------------]

When play begins:
	repeat with pnj running through movil:
		activate the pnj.

[--------------------------------------------------

  Los pnjs muertos dejan un cadaver...
  exquisito para algunos...

--------------------------------------------------]

Un cadaver is a kind of thing.
Un cadaver can be nomordido, mordido or mordidoserpiente. Un cadaver is usually nomordido.
The indefinite article of a cadaver is usually "un".
Understand "cadaver" as cadaver.
The tamano of a cadaver is usually grande.

After examining a mordido cadaver (called comida):
	say "Ha sido mordid[o comida] por las bestias del pantano. Y le falta algún pedazo de carne.".

After examining a mordidoserpiente cadaver (called comida):
	say "Una de sus piernas presenta dos pequeños orificios y una leve hinchazón. Una mordedura de serpiente.".

After taking a cadaver:
	say "Uff... realmente pesa bastante, suerte que sólo lo sufre tu portador.".

Chapter 1 - Cadaveres

Section 1 - Lobo muerto

[--------------------------------------------------

  El lobo muerto

--------------------------------------------------]
El lobo_muerto is a cadaver. The printed name of lobo_muerto is "cadáver de lobo".
The description of the lobo_muerto is "Nunca fue un animal muy afortunado ni muy impresionante. Ahora simplemente es un cadáver.".

Understand "lobo" as lobo_muerto when the lobo_muerto is visible.
		

Section 2 - Deavork

[--------------------------------------------------

  Un deavork muerto

--------------------------------------------------]
El deavork_muerto is a cadaver. The printed name of deavork_muerto is "cadáver de deavork".
The description of the deavork_muerto is "Siempre es una buena noticia ver a un sucio y apestoso deavork muerto.".
Understand "deavork" as deavork_muerto when the deavork_muerto is visible.

Section 3 - Nuhur

[--------------------------------------------------

   Nuhur muerto

--------------------------------------------------]
El nuhur_muerto is a cadaver. The printed name of nuhur_muerto is "cadáver de Nuhur". The indefinite article of nuhur_muerto is "el".
The description of the nuhur_muerto is "Este humano feo te sirvió bien. Lo echarás de menos.".
Understand "nuhur" or "humano" as nuhur_muerto when the nuhur_muerto is visible.

Section 4 - Icalante

[--------------------------------------------------

   El icalante muerto

--------------------------------------------------]
El icalante_muerto is a cadaver. The printed name of icalante_muerto is "cadáver de icalante".
The description of the icalante_muerto is "Este gigantesco mono anaranjado sigue pareciendo un magnífico ejemplar a pesar de su muerte.".
Understand "icalante" as icalante_muerto when the icalante_muerto is visible.
The tamano of icalante_muerto is enorme.

Section 5 - Zhur

[--------------------------------------------------

   Zhur muerto

--------------------------------------------------]
El zhur_muerto is a cadaver. The printed name of zhur_muerto is "cadáver de orco".
The description of the zhur_muerto is "Un centinela que no vigilará más. Claro que es probable que nunca vigilase mucho.".
Understand "zhur" or "orco" as zhur_muerto when the zhur_muerto is visible.

[Cadaver de orco por defecto]
Does the player mean doing something with zhur_muerto: it is very likely.

Section 6 - Yerk

[--------------------------------------------------

   Yerk muerto

--------------------------------------------------]
El yerk_muerto is a cadaver. The printed name of yerk_muerto is "enorme cadáver de orco".
The description of the yerk_muerto is "Tan grande y tan maloliente, será un exquisito banquete para las moscas.".
Understand "yerk" or "orco" as yerk_muerto when the yerk_muerto is visible.
The tamano of yerk_muerto is enorme.

Section 7 - Berg

[--------------------------------------------------

   Berg muerto

--------------------------------------------------]
El berg_muerto is a cadaver. The printed name of berg_muerto is "cadáver de orco forzudo".
The description of the berg_muerto is "Te alegras de verlo muerto, este orco tiene pinta de esa extraña maldad que dota de alguna suerte de aterradora inteligencia a los más estúpidos.".
Understand "berg" or "orco" as berg_muerto when the berg_muerto is visible.

Section 8 - Serpiente

[--------------------------------------------------

   Serpiente muerta

--------------------------------------------------]
Una cadaver_serpiente is a cadaver. The printed name of cadaver_serpiente is "serpiente muerta".
The description of the cadaver_serpiente is "Una parte de tí se alegra de ver aplastado a este peligro potencial, otra parte se apena de que un ser tan cercano a un dragón haya sido aplastado por un mono absurdo.".
Understand "serpiente" or "muerta" as cadaver_serpiente when the cadaver_serpiente is visible.

Chapter 2 - Potenciales jugadores

Section 0 - Posibles jugadores

[ CLASE JUGADOR: una clase de persona, simplemente ]

A posible jugador is a kind of patroller.

The drive of a posible jugador is usually 50. [ se mueven la mitad de las veces]
The turn frequency of a posible jugador is usually 1. [pero se plantea cada turno]
A posible jugador is usually aimless. [y se mueven de forma aleatoria]
[no hay puertas pero por si acaso]
The openingcapability of a posible jugador is usually unlockedonly.
the reclosingcapability of a posible jugador is usually leave.

A posible jugador can be muerto. A posible jugador is usually not muerto.
A posible jugador can be dominado. A posible jugador is usually not dominado.

[Tienen un cadaver]
Un posible jugador have a thing called cuerpo.

Instead of telling a patroller about something, try asking noun about it.
Instead of answering a patroller that something, try asking noun about it.
Instead of asking a patroller for something, try asking noun about it.
Instead of asking a patroller about something:
	if the noun is icalante:
		say "Veamos: 'uh, uuuh, uh?'";
		bnw;
		say "Nada, no se entera de nada. No debo hablar correctamente el simio.";
	otherwise if the noun is an orco:
		say "Uhm... 'Vrek, verk, vrke?'.";
		bnw;
		say "Nada, ni caso. ¡Qué asco de lengua!";
	otherwise:
		say "¡Bah! Los seres inferiores no hablan.".


[ FUNCIÓN para obtener el potencial jugador más cercano]

To decide what posible jugador is the jugador mas proximo:
	let jmp be the player;
	let nmjmp be 100;
	repeat with pj running through posible jugador:
		if pj is the player:
			next;
		if pj is in NoLugar:
			next;
		if pj is icalante and (icalante is i_enfadado or icalante is i_preso):
			next;
		let nm be number of moves from the location to the location of pj;
		[say "[pj] a [nm].";]
		if nm is less than nmjmp and nm is greater than -1:
			now nmjmp is nm;
			now jmp is pj;
	decide on jmp.

[TO SAY: para expresar el portador ]

To say el portador:
	if the player is nuhur: 
		say "Nuhur";
	otherwise if the player is icalante: 
		say "el icalante";
	otherwise if the player is zhur: 
		say "Zhur";
	otherwise if the player is berg: 
		say "Berg";
	otherwise if the player is yerk: 
		say "Yerk".

[Every turn:
	say "Siguiente jugador: [jugador mas proximo]".]

[CLASE ORCO: una subclase de posible jugador ]

An orco is a kind of posible jugador.
An orco has a number called buscando. The buscando of an orco is 0.

[Estados de un orco... más simple que un arma hecha con un palo y un clavo]
An orco can be esperando, persiguiendo, patrullando.

Understand "orco" as orco.

[Sus objetos se ven]
Rule for deciding the concealed possessions of a orco: no.

[Lo que llevan encima]
After printing the name of a orco (called ello) while listing contents: 
	if ello carries anything:
		say " (llevando [a list of things carried by ello])".


Section 1 - Nuhur

[--------------------------------------------------

  Nuhur - el primer jugador

--------------------------------------------------]
Nuhur is a posible jugador in Pantano14. It is male.
The printed name of Nuhur is "Nuhur".
The description of Nuhur is "[if the player is Nuhur]Tu portador, [end if]Nuhur[if the player is Nuhur],[end if] no sólo es idiota, es rematadamente feo, incluso para un sucio humano.".
Cuerpo of Nuhur is nuhur_muerto.

Nuhur can be muerto. Nuhur is not muerto.

Understand "portador" or "humano" as Nuhur when Nuhur is visible.

Section 2 - Icalante

[--------------------------------------------------

   El Icalante vivo

--------------------------------------------------]

Un icalante is a posible jugador. It is in Pantano17. It is male.
The description of icalante is "Este enorme gorila de pelos anaranjados, es una de las bestias más fuertes que existen, y por lo general no son peligrosos. Excepto si están enfadados o atemorizados por alguna razón.[if the player is icalante] Será un excelente portador.[end if][if icalante is i_enfadado] Éste en concreto está fuera de sí de ira, probablemente debido a los grilletes que lo apresan.[end if][if icalante is i_siguiendote and icalante carries anything]Carga con: [list of things carried by icalante with definite articles] y viste: [list of things worn by icalante with definite articles]".
Cuerpo of icalante is icalante_muerto.
The drive of icalante is 100. [ se mueve siempre ]
The turn frequency of icalante is 1. [pero se plantea cada turno]
The icalante is following. [te sigue]
[no hay puertas pero por si acaso]
The openingcapability of icalante is unlockedonly.
the reclosingcapability of a icalante is leave.
AssI is a number that varies. AssI is 0.
Understand "portador" as icalante when the player is icalante.

[Pero no se activa!]

[Posibles estados del Icalante]
The icalante can be i_enfadado, i_preso, i_siguiendote, i_perdido, i_aterrado, i_enlaoscuridad.

[Empieza el juego preso]
The icalante is i_enfadado.

Understand "enfadado" or "preso" as icalante when icalante is visible and icalante is i_enfadado.

To say estado icalante:
	if icalante is  i_enfadado:
		say "enfadado";
	otherwise if icalante is i_preso:
		say "preso";
	otherwise if icalante is i_siguiendote:
		say "siguiéndote";
	otherwise if icalante is i_perdido:
		say "perdido";
	otherwise if icalante is i_aterrado:
		say "aterrado";
	otherwise if icalante is i_enlaoscuridad:
		say "aterrado";
	otherwise if icalante is dominado:
		say "atontado".

[Temporalmente pongo el estado visible]
After printing the name of the icalante while listing contents: 
	if the icalante carries anything or icalante wears anything:
		if icalante wears anything:
			if icalante carries anything:
				say " ([estado icalante] y llevando [list of things carried by icalante with definite articles] mientras que viste [list of things worn by icalante with definite articles])";
			otherwise:
				say " ([estado icalante] y vistiendo [list of things worn by icalante with definite articles])";
		otherwise:
			say " ([estado icalante] y llevando [list of things carried by icalante with definite articles])";
	otherwise:
		say " ([estado icalante])".

[Sus objetos se ven]
Rule for deciding the concealed possessions of the icalante: no.

[OBJETOS QUE LLEVA:]
The grilletes are carried by Icalante.

[ACCIONES del Icalante según estado]

[ENFADADO]
Every turn when the Icalante is i_enfadado and icalante is not muerto:
	if AssI is 0:
		[ Sólo un ataque iracundo por turno]
		if the player is an orco and the icalante is visible:
			say "El [x]icalante[x], por sorpresa, salta sobre tu portador y le coloca la cabeza en una postura incompatible con la vida.";
			bnw;
			morir en el pantano;
		otherwise if there is some orco (called victima) in the location of icalante:
			matar al pnj victima;
			if the icalante is visible:
				say "En un brutal arranque de ira el [j]icalante[x] ataca al orco, lo inmoviliza y finalmente acaba con él retorciéndole la cabeza.";
		otherwise if the icalante is visible and a random chance of 1 in 3 succeeds:
			say "[one of]El [j]icalante[x] aúlla, resultando un sonido aterrador[or]El [j]icalante[x] te mira con una ira ciega, probablemente ni ve lo que tiene delante, tal es su furia[or]El [j]icalante[x] hace un esfuerzo por arrancar las cadenas que le tienen preso. Casi parece un terremoto, pero las cadenas no ceden[at random].";
	otherwise:
		now AssI is 0;

[REACCIONES del Icalante según estado]

[ENFADADO]
Instead of taking or touching icalante when the icalante is i_enfadado:
	say "Intentas acercarte al [j]icalante[x]. Piensas que tal vez con unas palabras de ánimo y unas caricias puedas tranquilizarlo. Pero... en lugar de tranquilizarlo arremete contra tu portador, lo golpea con tal fuerza que lo arroja como un trapo entre la [j]maleza[x]. El sonido que hace su cabeza al golpear contra el último árbol no es muy prometedor.";
	now AssI is 1;
	morir en el pantano.

Instead of taking or touching or opening grilletes when the icalante is i_enfadado and grilletes is visible:
	say "Liberar al [j]icalante[x]. Ésa es la respuesta. Lo tranquilizará y... pero no, ¡oh, maldita sea! Mientras intentas acercarte a los grilletes para revisarlos con cuidado, tal vez abrirlos, el icalante reacciona con violencia. Golpea con tal fuerza a tu portador que éste muere casi al instante.";
	now AssI is 1;
	morir en el pantano.

Instead of putting polvora on grilletes when the icalante is i_enfadado:
	say "Intentas meter un poco del polvo negro en el grillete. Así podrías... oh, oh... Mientras intentas hacerlo el icalante reacciona con violencia. Golpea con tal fuerza a tu portador que éste muere de inmediato.";
	now AssI is 1;
	remove polvora from play;
	morir en el pantano.

Section 3 - Cosas que hacen los orcos

[--------------------------------------------------

  Comportamientos generales para todos
  los orcos.

--------------------------------------------------]

[ Objetos deseables para un orco ]
Table of DeseosOrcos
objeto
llave
machete
guantes
colmillo
longaniza
queso
medallon
seta

Definition: a thing is orcesable if it is a objeto listed in the Table of DeseosOrcos.

To hacer que (pnj - an orco) haga de orco:
	[ Mueven muertos al Pantano18 cargando con ellos]
	if the location of pnj is Pantano18:
		if there is a cadaver (called cuerpo) which is carried by pnj:
			try pnj dropping cuerpo;
	otherwise if pnj carries no cadaver:
		if there is a cadaver (called cuerpo) which is in the location of pnj:
			try pnj taking cuerpo;
	[cogen cosas]
	otherwise if there is a orcesable thing (called interesante) in the location of pnj and the location of pnj is not Pantano19:
		try pnj taking interesante;
	otherwise if there is a orcesable thing (called interesante) in a container which is in the location of pnj:
		try pnj taking interesante;
	[a veces comen cosas]
	otherwise if a random chance of 1 in 5 succeeds:
		if there is a edible carne thing (called comida) which is carried by pnj:
			try pnj eating comida;
	[a veces beben agua]
	otherwise if location of pnj is Pantano1 and pnj is visible and a random chance of 1 in 10 succeeds:
		say "[The pnj] se agacha y bebe un poco de agua del manantial.";
	[a veces dejan cosas en el campamento orco]
	otherwise if location of pnj is Pantano19 and a random chance of 1 in 10 succeeds:
		if there is a thing (called cosa) which is carried by pnj:
			try pnj dropping cosa.

[ Darles cosas ]
Instead of giving anillo to an orco:
	say "Pasarme al orco, tomarlo como portador... uhm... demasiado arriesgado desagradable.".

Instead of giving anillo to an orco when the player is an orco:
	say "Estos animales son tan codiciosos que bastara con... veamos...";
	bnw;
	try shining.

Instead of giving a thing to an orco when the player is nuhur or the player is icalante:
	say "¿Darle [the noun] a un orco? No, no eso no tiene sentido.".

Instead of giving a orcesable thing to an orco when the player is an orco:
	say "[The second noun] coge [the noun] un poco sorprendido. Lo mira con interés y finalmente dice: '¡Vrek, [el portador]!', parece contento.";
	move the noun to the location;
	try silently second noun taking the noun.

Instead of giving a thing to an orco when the player is an orco:
	say "[The second noun] coge [the noun]. Lo mira con desgana y finalmente lo deja caer diciendo: '¡Bhuck, [el portador]!', parece decepcionado.";
	move the noun to the location.

[Renovar los deseos de un orco]
Before going:
	if there is a persiguiendo orco (called asesino) in the location:
		now buscando of asesino is 0.


Section 4 - Zhur el orco

[--------------------------------------------------

   Zhur.

   Zhur es el primer orco que saldrá 
   a patrullar desde el campamento
   y el que tiene más cosas útiles
   encima.

--------------------------------------------------]

Un zhur is a orco. It is in Pantano19. It is male.
The description of zhur is "[if the player is zhur]Tu actual portador no es precisamente de tu gusto. [end if]Se trata de un explorador orco de los ejércitos del nigromante. No hay más que verlo para saberlo: indumentaria informal, cara de pasmao, armas en un estado lamentable. Indudablemente la élite del ejército.".
Cuerpo of zhur is zhur_muerto.
The printed name of zhur is "orco".

[Y es el orco por defecto]
Does the player mean doing something with zhur: it is very likely.

The drive of zhur is 100. [ se mueve siempre ]
The turn frequency of zhur is 2. [pero se plantea cada turno]
The zhur is aimless. [aleatorio en principio]
[no hay puertas pero por si acaso]
The openingcapability of zhur is unlockedonly.
The reclosingcapability of zhur is leave.
Understand "portador" as zhur when the player is zhur.

[Empieza el juego patrullando]
Zhur is patrullando.

[Ha sido poseido?]
Zhur can be antiguo poseso. Zhur is not antiguo poseso.

[Lo activamos desde el principio]
When play begins:
	activate zhur.

[OBJETOS QUE LLEVA:]
The machete and llave are carried by Zhur.

[ACCIONES de Zhur según estado]
[PATRULLANDO]
This is the zhurPatrullando rule:
	if zhur is in the location:
		if the player is not an orco or zhur is antiguo poseso:
			say "[The zhur] grita: 'Zoog! Jusk, jusk! Zoog!' mientras suelta espumarajos por la boca. ¿Eso es que va a atacar? Menudos bichos más asquerosos.";
			now buscando of zhur is 0;
			now Zhur is persiguiendo;
			now Zhur is following;
		otherwise if the player is an orco:
			if a random chance of 1 in 4 succeeds:
				say "[one of][The zhur] grita: '¡[el portador]! ¡Vronk! ¡Vronk!', parece divertido.[or][The zhur] te mira con una sonrisa. Debe ser un orco feliz. Dan ganas de decirle que él, el orco féliz, es el peor de todos los seres, pero probablemente no lo entendería.[or][The zhur] aparta a algunos mosquitos con aspavientos. Como si los mosquitos quisiesen beber apestosa sangre de orco.[or][The zhur] dice: '¿Mongu mongu [el portador] vronkuhg?', parece esperar respuesta; pero no piensas rebajarte a contestarle, desde luego que no.[at random]";
			otherwise:
				if the location is Pantano1 and a random chance of 1 in 7 succeeds:
					say "[The zhur] se arrodilla en el manantial y bebe del agua limpia.";
				otherwise if the location is Pantano15 and manzana is off-stage and a random chance of 1 in 6 succeeds:
					say "[The zhur] rebusca en el [j]manzano[x] encontrando una [j]manzana[x]. La olisquea y con asco la deja caer.";
					move manzana to Pantano15;
				otherwise:
					hacer que zhur haga de orco;
	otherwise:
		hacer que zhur haga de orco.

[PERSIGUIENDO]
This is the zhurPersiguiendo rule:
	if zhur is in the location:
		now buscando of zhur is 0;
		if lobo is visible and lobo is contentado:
			say "[The zhur] blande su machete pero el lobo se interpone y lo hace recular.";
		otherwise if icalante is visible and icalante is i_siguiendote:
			say "[The zhur] blande su machete pero el icalante se interpone y lo hace recular.";
		otherwise:
			say "[The zhur] te ataca[if machete is carried by Zhur] con su viejo machete[end if].";
			if a random chance of 8 in 10 succeeds:
				say "Pero falla. Además de asqueroso es patético [if machete is carried by Zhur]con un arma[otherwise]combatiendo[end if].";
			otherwise:
				if the player is nuhur:
					say "Y el ataque resulta mortal. [if machete is carried by Zhur]Su mugrienta espada produce un corte profundo en el pecho del retrasado humano, y sientes como éste se ahoga en su propia sangre[otherwise]Su puño hunde el pecho de Nuhur. Se escuchan costillas rotas y luego sólo estertores[end if]. ";
				otherwise:
					say "Y el ataque resulta mortal. [if machete is carried by Zhur]Su mugrienta espada produce un corte profundo en tu portador, y sientes como se le escapa la vida[otherwise]Su puño hunde el pecho de tu portador. Se escuchan costillas rotas y luego sólo estertores[end if]";
				morir en el pantano;
	otherwise:
		increase buscando of zhur by 1;
		 if a random chance of buscando of zhur in 45 succeeds: 
			[Zhur se cansa a veces de perseguir]
			now Zhur is patrullando;
			now Zhur is aimless.

[ GENERAL ]
Every turn:
	if the player is not zhur and zhur is not muerto:
		if zhur is patrullando:
			follow zhurPatrullando rule;
		otherwise if zhur is persiguiendo:
			follow zhurPersiguiendo rule.

[REACCIONES del Icalante según estado]

Section 5 - Yerk el orco

[--------------------------------------------------

   Yerk.

   Yerk es un orco enorme. Una 
   alternativa a usar el icalante.

--------------------------------------------------]

Un yerk is an orco. It is in Pantano19. It is male.
The description of yerk is "[if the player is yerk]Tu actual portador no es precisamente de tu gusto. [end if]Este orco es... grande. Sí, ese adjetivo lo define por completo. Grande de tamaño, grande en ignorancia y grande en estupidez."
Cuerpo of yerk is yerk_muerto.
The printed name of yerk is "orco enorme".
Understand "enorme" as yerk.
The drive of yerk is 100. [ se mueve siempre ]
The turn frequency of yerk is 2. [pero se plantea cada turno]
The yerk is aimless. [aleatorio en principio]
[no hay puertas pero por si acaso]
The openingcapability of yerk is unlockedonly.
The reclosingcapability of yerk is leave.
Understand "portador" as yerk when the player is yerk.

[Empieza el juego patrullando]
Yerk is esperando.

[Ha sido poseido?]
Yerk can be antiguo poseso. Yerk is not antiguo poseso.

[No lo activamos al principio]

[ACCIONES de Yerk según estado]
[ESPERANDO]
This is the yerkEsperando rule:
	if yerk is in the location and (the player is icalante or the player is nuhur):
		say "[The yerk] se levanta con cara de muy pocos amigos.";
		now yerk is persiguiendo;
		now yerk is following;
		activate yerk.

[PATRULLANDO]
This is the yerkPatrullando rule:
	if yerk is in the location:
		if the player is not an orco or yerk is antiguo poseso:
			say "[The yerk] grita: 'J'sosk Zug!.' que asco de lengua.";
			now yerk is persiguiendo;
			now yerk is following;
			now buscando of yerk is 0;
		otherwise if the player is an orco:
			if a random chance of 1 in 4 succeeds:
				say "[one of][The yerk] grita: '[el portador]. Morhg mouhk. ¿[el portador]? Mouhk.' te sorprende que pueda decir tantas cosas juntas.[or][The yerk] mira al infinito durante algunos segundos. Se le cae la baba. La recoge con una de las manos y la mira. Meditaciones orcas, no cabe duda.[or][The yerk] mira una hoja, duda un momento, y la lame. Pone cara de desagrado. Imbécil.[or][The yerk] silba. ¿Una canción orca tal vez? En cualquier caso es un ruido desagradable.[at random]";
			otherwise:
				hacer que yerk haga de orco;
	otherwise:
		hacer que yerk haga de orco.


[PERSIGUIENDO]
This is the yerkPersiguiendo rule:
	if yerk is in the location:
		now buscando of yerk is 0;
		if lobo is visible and lobo is contentado:
			say "[The yerk] te ataca pero el lobo se interpone y lo hace recular.";
		otherwise if icalante is visible and icalante is i_siguiendote:
			say "[The yerk] te ataca pero el icalante se interpone y lo hace recular.";
		otherwise:
			say "[The yerk] te ataca haciendo un esfuerzo tan grande que casi parece cómico.";
			if a random chance of 5 in 6 succeeds:
				say "Pero falla. [The yerk] es menos peligroso de lo que parecía.";
			otherwise:
				say "Y de un solo golpe arranca la cabeza [if the player is nuhur]del pobre retrasado[otherwise if the player is an orco]de su antiguo compañero[otherwise]del simio naranja[end if].";
				morir en el pantano;
	otherwise:
		increase buscando of yerk by 1;
		 if a random chance of buscando of yerk in 25 succeeds: 
			[Zhur se cansa a veces de perseguir]
			now Yerk is patrullando;
			now yerk is aimless.

[ GENERAL ]
Every turn:
	if the player is not yerk and yerk is not muerto:
		if yerk is patrullando:
			follow yerkPatrullando rule;
		otherwise if yerk is persiguiendo:
			follow yerkPersiguiendo rule;
		otherwise if yerk is esperando:
			follow yerkEsperando rule.

[REACCIONES de Yerk según estado]

Section 5 - Berg el orco

[--------------------------------------------------

   Berg.

   Berg es la última alternativa, por
   lo general para el jugador, no 
   soporta demasiado bien al anillo, 
   tiene tendencia a destruirlo.

--------------------------------------------------]

Un berg is an orco. It is in Pantano19. It is male.
The description of berg is "[if the player is berg]Tu actual portador no es precisamente de tu gusto. [end if]Este orco parece algo más inteligente que los demás."
The printed name of berg is "orco forzudo".
Cuerpo of berg is berg_muerto.
Understand "forzudo" as berg.
The drive of berg is 100. [ se mueve siempre ]
The turn frequency of berg is 1. [pero se plantea cada turno]
The berg is aimless. [aleatorio en principio]
[no hay puertas pero por si acaso]
The openingcapability of berg is unlockedonly.
The reclosingcapability of berg is leave.
Understand "portador" as berg when the player is berg.

[Empieza el juego patrullando]
Berg is esperando.

[Ha sido poseido?]
Berg can be antiguo poseso. Berg is not antiguo poseso.

[No lo activamos al principio]

[ACCIONES de Berg según estado]
[ESPERANDO]
This is the bergEsperando rule:
	if berg is in the location and (the player is icalante or the player is nuhur):
		say "[The berg] se levanta de un salto.";
		now berg is persiguiendo;
		now berg is following;
		activate berg.

[PATRULLANDO]
This is the bergPatrullando rule:
	if berg is in the location:
		if the player is not an orco or berg is antiguo poseso or a random chance of 1 in 8 succeeds:
			say "[The berg] grita: 'Morhg mouhk!' y parece muy cabreado.";
			now berg is persiguiendo;
			now berg is following;
		otherwise if the player is an orco:
			if a random chance of 1 in 4 succeeds:
				say "[one of][The berg] dice: '¿[el portador]? ¿Kerk bork?' parece preocupado.[or][The berg] te mira un poco extrañado. Igual sospecha algo.[or][The berg] se te queda mirando fijamente.[or][The berg] dice duditativo: '¿Monghak?'.[or][The berg] se acaricia la barbilla, casi como si pudiese estar pensando de verdad. Te engañaría si no supieses que todos los orcos son profundamente idiotas[or][The berg] alza una ceja antes de decir: '¿Burk mogh [el portador]?[at random]";
			otherwise:
				hacer que berg haga de orco;
	otherwise:
		hacer que berg haga de orco.

[PERSIGUIENDO]
This is the bergPersiguiendo rule:
	if berg is in the location:
		if lobo is visible and lobo is contentado:
			say "[The berg] te ataca pero el lobo se interpone y lo hace recular.";
		otherwise if icalante is visible and icalante is i_siguiendote:
			say "[The berg] te ataca pero el icalante se interpone y lo hace recular.";
		otherwise:
			say "[The berg] te ataca mientras sisea con un ruido muy desagradable.";
			if a random chance of 1 in 2 succeeds:
				say "Pero falla. [The berg] es menos listo de lo que parecía.";
			otherwise:
				say "Y de un mordisco secciona la vena del cuello [if the player is nuhur]del pobre retrasado[otherwise if the player is an orco]de su antiguo compañero[otherwise]del simio naranja[end if]. Un manantial de sangre es el resultado.";
				morir en el pantano;
	otherwise if a random chance of 1 in 35 succeeds: 
		[Berg se cansa muy raramente de perseguir]
		now Berg is patrullando;
		now Berg is aimless.

[ GENERAL ]
Every turn:
	if the player is not berg and berg is not muerto:
		if berg is patrullando:
			follow bergPatrullando rule;
		otherwise if berg is persiguiendo:
			follow bergPersiguiendo rule;
		otherwise if berg is esperando:
			follow bergEsperando rule.

[REACCIONES de Berg según estado]

[Berg puede matarte sin más, se resiste a la dominación y te destruye]
Before doing anything when the player is berg:
	if a random chance of 1 in 20 succeeds:
		say "¡Oh, no! Este orco es bastante más listo que la mayoría.";
		bnw;
		say "De alguna forma puede resistirse a tu poder mental y ahora sabe que lo has estado dominando.";
		bnw;
		say "Te saca de su dedo y te mira con desagrado.";
		bnw;
		ser aplastado por berg.

Chapter 3 - Moviles

Section 1 - Lobo

[--------------------------------------------------

  El lobo vivo

--------------------------------------------------]
Un lobo famelico is a movil. It is in Pantano5.
The printed name of lobo is "lobo famélico".
The description of the lobo is "Parece un perro famélico y peligroso. El sitio de un lobo no está en este apestoso pantano, debería estar con los suyos en los bosques o en las praderas. ¿Qué habrá pasado para que acabe aquí?".

The lobo has a number called hambre. The hambre of lobo is 0.

The lobo can be contentado. The lobo is not contentado.

The estomago del lobo is a room. 

[ El lobo a veces gruñe, pero solo si está hambriento es peligroso ]
Every turn:
	[Primero se incrementa su hambre cada turno]
	increase the hambre of lobo by 1;
	[Se considera hambriento si tiene más de 60 turnos sin comer algo]
	if the hambre of lobo is greater than 60:
		if there is a edible carne thing (called comida) in the location of lobo:
			move comida to estomago del lobo;
			now hambre of lobo is 0;
			if lobo is visible:
				say "El lobo, muy hambriento, se come [the comida].";
		otherwise:
			if there is a cadaver (called aMorder) in the location of lobo:
				now the aMorder is mordido;
				decrease hambre of lobo by 60;
				if aMorder is cadaver_serpiente:
					remove cadaver_serpiente from play;
				if lobo is visible:
					say "El lobo, con gran ansia, arranca un pedazo de la carne [del aMorder].";
			otherwise:
				if the location of lobo is the location:
					if a random chance of 1 in 4 succeeds:
						[Te mata y se te come]
						hacer que el lobo ataque;
						now hambre of lobo is 0;
					otherwise:
						say "[one of]El lobo te mira ansioso, tal vez pensando si tu portador es comestible.[or]El lobo parece muy, muy hambriento. ¿No querrá atacar a tu portador?[or]Por un momento has pensado que el lobo iba a atacar a tu portador cegado por el hambre.[at random]";
	otherwise if lobo is in Pantano18:
		if a random chance of 1 in 4 succeeds:
			let HO be the hidden objects of shuesos;
			let NHO be the number of entries in HO;
			if NHO is 0:
				lobo hace "El lobo olisquea los huesos, pero se retira frustrado.";
			otherwise:
				let longitud be the number of entries of HO;
				let num be a random number from 1 to NHO;
				let kosa be the entry num of HO;
				move kosa to Pantano18;
				lobo hace "El lobo rebusca entre los huesos y encuentra [the kosa].".

To hacer que el lobo ataque:
	if lobo is contentado:
		say "El lobo, presa del hambre, parece a punto de saltar sobre tu portador, pero, parece reconocerlo y se limita a gemir lastimosamente, tal vez pidiendo comida.";
	otherwise:
		say "El lobo, presa del hambre, se lanza a por tu portador. Intentas esquivarlo, pero el hambre es más ágil que tú. Sientes los dientes en el cuello. Sientes el cálido flujo de la sangre.";
		bnw;
		say "Sientes... que tu portador, muere.";
		morir en el pantano.

[ Contentar al lobo dándole algo de comida, basta con hacerlo una vez ]
Instead of giving hueso to lobo:
	now lobo is contentado;
	now hueso is part of esqueleto;
	say "Le lanzas el hueso al lobo, que lo atrapa en el aire de inmediato, y da buena cuenta de él. Parece muy contento.";
	now hambre of lobo is 0.

Instead of throwing a cadaver at lobo:
	try giving the noun to lobo.

Instead of throwing a edible thing at lobo:
	try giving the noun to lobo.

Instead of giving a edible thing to lobo:
	say "Le lanzas [the noun] al lobo,";
	if the naturaleza of noun is meat:
		say " que l[o noun] pilla al vuelo y acaba con ell[o noun] en un momento.";
		now lobo is contentado;
		now hambre of lobo is 0;
		remove the noun from play;
	otherwise:
		say " pero tras olfatearlo un poco l[o noun] ignora. Debe ser que no le gusta.";
		move the noun to location.

Instead of giving a cadaver (called cad) to lobo:
	now lobo is contentado;
	move cad to location;
	say "Dejas caer [the cad]. El lobo capta de inmediato tus intenciones y sacia su hambre. Parece muy contento.";
	now cad is mordido;
	now hambre of lobo is 0;
	if noun is cadaver_serpiente:
		remove cadaver_serpiente from play.

Instead of dropping a cadaver (called cad) when the lobo is in the location:
	try giving cad to lobo.
	
Instead of metacommanding estomago:
	say "No hay ningún lobo por aquí.".

Chapter 4 - Especiales

Section 1 - Esqueleto protector

El protector is a patroller. The description of protector is "Fabuloso ejemplo de la anciana nigromancia de los dragones. ¡Es tan glorioso poder verlo!. Estático, fija la mirada en los ojos de tu portador, defendiendo el paso a la tumba de su amo, probablemente igual que hace mil años. La magia de negación de la vida que lo sostiene lo circunda, parpadeando en su luminiscencia negra, recorriéndolo como el titilar de una estrella de oscuridad.".
The protector is aimless.

Understand "esqueleto" as protector when the protector is visible.

[ El esqueleto te mata en cuanto intentas cualquier cosa ]
Instead of doing anything except examining or metacommanding with protector:
	say "Nada más aproximarte al esqueleto, éste reacciona de manera fulminante.";
	bnw;
	say "Su huesuda mano se posa sobre la cara de tu portador y en ella se concentra la magia de la nigromancia.";
	bnw;
	say "Una magia poderosa, pues tu portador cae fulminado al instante.";
	bnw;
	say "¡Glorioso! Aunque también problemático dado que parece que no te reconoce como uno de sus amos.";
	morir en el pantano.

[ Enseñar la cruz ]
Instead of showing cruz to protector:
	say "La energía de la nigromancia se concentra en los ojos del protector y...";
	bnw;
	say "...salta hasta el crucifijo. Hay un estallido de luz y sombras, tras el cual la magia de la nigromancia parece haberse desvanecido por completo y con ella el protector. ¿Reducido a cenizas tal vez?";
	bnw;
	say "Una auténtica lástima. Aunque lo que más te revienta es que estos símbolos humanos tengan auténtico poder. ¡Malditos humanos!";
	remove protector from play.

[ Enseñar de despiste ]
Instead of showing anything  to protector:
	say "La energía de la nigromancia se concentra en los ojos del protector y parece observar [al noun]. Estarías por asegurar que sonríe. Debes estar haciendo el ridículo.".
		

Section 2 - Deavork

[--------------------------------------------------

   El deavork vivo

--------------------------------------------------]
Un deavork is a movil. It is in Pantano22.
The printed name of deavork is "[if carga del insecto is greater than 199]deavork muy hinchado[otherwise if carga del insecto is greater than 99]deavork apreciablemente hinchado[otherwise if carga del insecto is greater than 49]deavork algo hinchado[otherwise]deavork[end if]".
The description of the deavork is "Este sucio insecto de los pantanos siempre está hambriento, y puede comerse prácticamente cualquier cosa que pueda caberle en la [j]boca[x] y... su boca puede dilatarse (como el resto de su cuerpo) de una forma increíble. Lo mejor es no estar demasiado tiempo junto a él o devorará a tu portador.[if carga del insecto is greater than 199] Está hinchado, como si fuese a reventar.[otherwise if carga del insecto is greater than 99] Se mueve pesadamente como si hubiese comido demasiado.[otherwise if carga del insecto is greater than 49] Parece que lleva la barriga llena con algo.[end if]".

La BocaDeavork is partdecoration. It is part of the deavork. The description of bocadeavork is "Mejor no mirarla demasiado, es horrible y sucia, con eso basta.". The printed name of BocaDeavork is "boca".

Understand "boca" as BocaDeavork when Deavork is visible.

El CuerpoDeavork is partdecoration. It is part of the deavork. The description of cuerpodeavork is "Escamoso, duro, de quitina, pero sobre todo desagradable de mirar.". The printed name of CuerpoDeavork is "cuerpo".

Understand "cuerpo" as BocaDeavork when Deavork is visible.

Understand "insecto" as deavork.

The estomago del deavork is a room.

Escupidos is a list of things that varies. Escupidos is {}.

[ Este monstruo se come todo lo que no está fijo... a veces...]
Definition: a thing is dcomible if it is not fixed in place and it is not the player and it is not a movil and it is not a posible jugador and it is not listed in escupidos.

Every turn:
	[say "Ein [the location of deavork]...";
	say "Cosas: [list of things in the location of deavork].";]
	if there is a dcomible thing (called comida) in the location of the deavork and the location of the deavork is not Pantano18 and (a random chance of 1 in 2 succeeds or comida is a cadaver):
		let ac be carga del insecto;
		move the comida to estomago del deavork;
		let nc be carga del insecto;
		let sehincha be 0;
		if ac is less than 49 and nc is greater than 48:
			now sehincha is 1;
		if ac is less than 99 and nc is greater than 98:
			now sehincha is 1;
		if ac is less than 199 and nc is greater than 198:
			now sehincha is 1;
		if the deavork is visible:
			say "El espantoso insecto, el deavork, devora [the comida].[if tamano of comida is grande or tamano of comida is enorme][line break]Para poder lograrlo su mandíbula se desencaja de forma esperpéntica y su boca se agranda de forma terrorífica.[end if][if sehincha is 1][line break]Un sonido espeluznante de escamas quitinosas rozando una contra otra, gimiendo, acompaña a un claro incremento del volumen de su cuerpo. ¡Se ha hinchado para hacer espacio a aún más comida![end if]";
			now comida is handled;
			if there is an orco (called espectador) in the location:
				if espectador is not persiguiendo and (the comida is a cadaver or the comida is carne) and espectador is not the player:
					say "[El espectador] no parece nada contento de ver que el deavork se ha comido [el comida].";
	[Si tiene algo no comestible en la tripa puede que lo expulse y si es comida la 'digiera']
	otherwise:
		if there is a cadaver (called cuerpo) in estomago del deavork:
			if  the location of deavork is Pantano18:
				[say "Llegado a Pantano18";]
				now deavork is aimless;
				activate deavork;
				if deavork is visible:
					say "El deavork hace un enorme esfuerzo, casi como si fuese a reventar. ¿Qué le pasará?.";
					bnw;
					if a random chance of 1 in 5 succeeds:
						say "...¡y realmente explota! ¡Qué asco!";
						matar al pnj deavork;
					otherwise:
						say "...y finalmente escupe [the cuerpo]. ¡Puagh!";
						move the cuerpo to the location of deavork;
			otherwise if the deavork is aimless:
				[say "Tiempo de enterrar.";]
				now deavork is targeted;
				now the destination of deavork is Pantano18;
		if there is a not edible thing (called basura) in estomago del deavork:
			if basura is a cadaver:
				if the deavork is visible and a random chance of 1 in 3 succeeds:
					say "El deavork hace un enorme esfuerzo, como si estuviese intentando escupir algo y no pudiese.";
			otherwise if a random chance of 1 in 5 succeeds:
				move basura to the location of deavork;
				if the deavork is visible:
					say "El deavork, ese insecto de aspecto amenazador, escupe [the basura].  [one of]No debe haberlo encontrado digerible.[or]No le ha debido gustar.[or]Supones que ni un deavork puede digerir eso.[at random]";
					now basura is handled;
					add basura to escupidos;
		if there is a edible thing (called comida) in estomago del deavork:
			if a random chance of 1 in 5 succeeds:
				remove comida from play;
		if the location of deavork is Pantano7 and resina is not carried and resina is not visible and resina is not in estomago del deavork:
			[Ahora que no se ve la resina chupar un poco]
			move resina to estomago del deavork;
			if deavork is visible:
				say "El insecto zarandea al arbolillo y parece que se traga alguno de sus glóbulos. Tal vez sean uno de sus alimentos.";
		if deavork is visible and there is a bag of tricks (called bolsa) in the location of deavork:
			if the number of entries of hidden objects of bolsa is not 0 and a random chance of 1 in 5 succeeds:
				say "El insecto rebusca en [the bolsa], como si creyese poder encontrar algo que comer oculto ahí.".


Chapter 5 - Limitaciones de movimiento

[ La única forma que se me ocurre es parando a los PNJs que vayan a entrar en ellos, pero tengo que meter el estado previo para poder arrancarlos ]

Table of Estado Previo
pnj		estado			
lobo		Off Patrol
deavork		Off Patrol
zhur		Off Patrol	
yerk		Off Patrol
berg		Off Patrol
icalante		Off Patrol

[ Lugares a los que NO pueden ir ]
Table of Limites 
pnj		limite		activada
lobo		Copa		0
lobo		Pantano10	0
lobo		Pantano23	0
deavork		Copa		0
icalante		Copa		0
icalante		Pantano10	0
icalante		PuertaCastillo	0
icalante		Pantano18	0
icalante		Pantano25	0
icalante		Pantano24	0
yerk		Copa		0
yerk		Pantano23	0
berg		Pantano23	0
zhur		Pantano23	0
yerk		Pantano24	0
berg		Pantano24	0
zhur		Pantano24	0
zhur		Cueva1		0
yerk		Cueva1		0
berg		Cueva1		0
zhur		Cueva2		0
yerk		Cueva2		0
berg		Cueva2		0
zhur		Cueva3		0
yerk		Cueva3		0
berg		Cueva3		0
zhur		Cueva4		0
yerk		Cueva4		0
berg		Cueva4		0
zhur		Cueva5		0
yerk		Cueva5		0
berg		Cueva5		0

After going to a room (called destino):
	[ Si estamos en una habitación segura, detenemos al PNJ ]
	[ Por otra parte si NO estamos en ella y está activada lo reactivamos ]
	repeat through Table of Limites:
		if destino is not limite entry and activada entry is 1:
			let st be (estado corresponding to an pnj of pnj entry in Table of Estado Previo);
			if st is On Patrol:
				activate pnj entry;
			now activada entry is 0;
			[say "Retornando [the pnj entry] a [st].";]
	repeat through Table of Limites:
		if destino is limite entry and pnj entry is not in limite entry:
			let st be status of pnj entry;
			deactivate pnj entry;
			now activada entry is 1;
			now (estado corresponding to an pnj of pnj entry in Table of Estado Previo) is st;
			[say "Parando por tabú [the pnj entry] que estaba [st].";]
	continue the action.



Part 5 - La aventura

Chapter 1 - El inicio

NoLugar is a room.

[--------------------------------------------------

   Regla activada al iniciar el juego

--------------------------------------------------]

[ Un poco de decoracion ]
To say hambre y sed:
	if hambre_del_jugador is greater than 130:
		say "H";
	otherwise:
		say "-";
	if sed_del_jugador is greater than 160:
		say "S";
	otherwise:
		say "-".

To decide which number is nneg of (num - a number):
	if num is greater than 0:
		decide on num;
	otherwise:
		decide on 0.

[ Localidades 'especiales' ]
To say nombre localidad:
	if map region of location is nothing:
		say location;
	otherwise if location is Pantano1:
		say "Manantial";
	otherwise if location is Pantano26:
		say "Huerta";
	otherwise if location is Pantano23:
		say "Hiedra y montículo";
	otherwise if location is Pantano28:
		say "Entrada a [j]cuevas[x] ";
	otherwise if location is Lava:
		say "Río de lava";
	otherwise if location is Pantano12:
		say "Arenas movedizas";
	otherwise if location is Pantano17:
		say "Viejas ruinas";
	otherwise if location is PuertaCastillo:
		say "Camino de la fortaleza";
	otherwise:
		say map region of location.

[No me gusta nada el status estandar, veamos si hago algo mejor]
[De la mano de Eliuk]
To close the statusline:
	(- if (gg_statuswin) 
	{ glk_window_set_arrangement(glk_window_get_parent(gg_statuswin),winmethod_Fixed+winmethod_Above,0,0); } -)

To open the statusline:
	(- if (gg_statuswin) 
	{ glk_window_set_arrangement(glk_window_get_parent(gg_statuswin),winmethod_Fixed+winmethod_Above,1,0); } -)

When play begins:
	[enable veneer acceleration;]
	close the statusline;
	poner cuadro de inicio;
	say "¿Quieres ver la introducción?";
	say "Contesta sí o no>>";
	if the player consents:
		clear the screen;	
		poner cuadro de creditos;
		wait for any key;
		clear the screen;
		say line break;
		say line break;
		poner cuadro de aviso;
		wait for any key;
		clear the screen;
		say line break;
		say line break;
		contar inicio de la historia;
		say line break;
		say line break;
	clear the screen;
	now the player is in NoLugar;
	now the player is nuhur;
	create the midground channel;
	set the foreground volume to 2;
	set the background volume to 3;
	set the midground volume to 4;
	start musical introduction;
	open the statusline;
	now left hand status line is "[nombre localidad]";
	now right hand status line is "[el portador]: [hambre y sed]";
	now Efectos-Sonando is true;
	play the sound of efectos in background with loop;
	activar sonidos ambientales.
	
[FRASE: Cuadro de inicio con el nombre del relato y fecha]
To poner cuadro de inicio:
	display the boxed quotation
	"
	De la saga de El Anillo
	su tercera parte y conclusión

	Un relato de Johan Paz.
	Año 2009, sobre diseño de 1989,
	para su 20 aniversario.
	
	Actualizado en 2014,
	para el 25 aniversario del CAAD.
	
	Recompilado en la nueva versión
	de Inform 7 en 2015.
	";
	show the current quotation.

To poner cuadro de aviso:
	display the boxed quotation
	"
	Este relato interactivo cuenta con efectos sonoros 
	de ambientación y con música.

	Para activar o desactivar la música 
	teclea simplemente 'MUSICA'.

	Para activar o desactivar los efectos sonoros 
	teclea simplemente 'EFECTOS'.

	";
	show the current quotation.

To poner cuadro de creditos:
	display the boxed quotation
	"
	Portada de: Urbatain.
	Sonidos del pantano de: Xpktro.
	Musica de: coax, the ice garden
	
	Gracias a los múltiples colaboradores,
	editores y testers que esta obra
	ha tenido.
	";
	show the current quotation.

[COMANDO: Introducción que relata]
To contar inicio de la historia:
	relatar fragmento en Table of Historia Inicial, limpiando pantalla.

[HISTORIA: El fragmento inicial]
Table of Historia Inicial
frase
"Demasiado ha durado ya tu maldición. Pero pronto cesará."
"El sucio El Nigróh -que debería haber estado muerto- redujo tu magnificencia, tu poder, el legado de todos tus ancestros -por no hablar de la belleza de un auténtico dragón- a una caricatura."
"Un minúsculo anillo de ojos de esmeralda."
"A duras penas lograste escapar de aquel pueblucho en el que casi todos te odiaban,  y con mayor dificultad aún lograste que un humano muy corto de miras te sacase del castillo del noble local."
"Mucho habéis sufrido tú y tu portador humano desde entonces pero todo está a punto de acabarse."
"Ahora dominas al humano por completo, como si fuese una de tus añoradas alas, y estáis casi junto a las puertas del nigromante Sady Omú, el único con el poder y tal vez la voluntad de retornarte tu cuerpo de dragón."
"Aquí, entre árboles, rodeado de apestosos pantanos, en uno de los dedos de tu portador, mirando por sus ojos, puedes adivinar la silueta de la fortaleza del nigromante al noreste. Ya falta poco."
"Mas, es probable que esos lugares estén vigilados por las tropas de orcos del nigromante. Tropas estúpidas, que serían incapaces de reconocer en ti el poder, la majestad de un auténtico dragón. Hay que evitarlas."
"Entrar por la puerta principal queda descartado, pero recuerdas que existía otra forma de llegar. Los sótanos de la fortaleza conectaban con un laberinto de estrechas y oscuras cuevas, y por ellas sabes que se alcanzaba el pantano."
"Hay que encontrar la entrada a esas cuevas."

Chapter 2 - El movimiento en el Pantano

Section 0 - Direcciones viables

[--------------------------------------------------
	
   De la documentación de I7 y útil 
   para muchas cosas

--------------------------------------------------]

Definition: a direction (called thataway) is viable if the room thataway from the location is a room. 

Section 1 - Decorar el movimiento en el laberinto

[--------------------------------------------------

Algo de texto para justificar el 
laberinto en sí

--------------------------------------------------]

Before going from somewhere in Pantano:
	if location is not Pantano28 and location is not Pantano23 and location is not PuertaCastillo and location is not Pantano20 and noun is not inside and noun is not outside:
		describir caminar por el pantano.
		

To describir caminar por el pantano:
	say "[one of]Con dificultad apartas las [j]plantas[x] y te pones a caminar... no, en realidad se parece más a chapotear, chapotear entre charcas estancadas, y avanzas sin tener demasiado claro a dónde te encaminan tus pasos. La [j]bruma[x] del [j]pantano[x] no hace precisamente más fácil saber hacia donde vas.[or]Un pie tras otro, siempre hundido en barro sucio y rodeado por la neblina del pantano, logras avanzar aunque no estás muy seguro de que sea en la dirección deseada.[or]Las húmedas [j]plantas[x] del [j]pantano[x] e incluso sus árboles parecen querer tender una trampa a tu portador a cada paso. Avanzas, pero tan preocupado de no caer que no estás seguro de si lo has hecho hacia la dirección correcta.[or]Arrancas [j]plantas[x], esquivas troncos de árboles retorcidos y raíces putrefactas cubiertas de [j]bruma[x] para poder ir en esa dirección. Cuando lo logras ya no estás seguro de que hayas ido en la dirección deseada.[or]Avanzar en este [j]pantano[x] es tan confuso que es caminar en cualquier dirección.[or]Odias todas estas plantas. Te confuden. No sabes al final a dónde has ido.[stopping]".

Section 2 - No hay en el pantano lugares a los que no se pueda ir

[--------------------------------------------------

   Intento para evitar tener que 
   hacer todas las conexiones en
   el pantano

--------------------------------------------------]

Before going nowhere from somewhere in Pantano:
	if the noun is up:
		if location is Pantano20 and liana is not part of recio arbol:
			say "Intentas trepar por la corteza del [j]árbol[x], pero es demasiado resbaladiza para tu portador. ¡Ojalá tuviese alas!" instead;
		otherwise:
			say "Aún no puedes volar. ¡Qué más quisieras!" instead;
	otherwise:
		if the noun is down:
			say "No hay que tener tanta prisa en sumergirse en el [j]pantano[x]. Si acabas en la ciénaga podrían pasar siglos antes de que te volviesen a encontrar. Una posibilidad aterradora." instead;
		otherwise if the location is not Pantano28 and the location is not Pantano20 and location is not PuertaCastillo and noun is not inside and noun is not outside:
			describir caminar por el pantano;
			let destination be a random adjacent room;
			[¡Remapeamos el mapa!]
			if noun is:
				-- north:
					now destination is mapped north of the location;
				-- northwest:
					now destination is mapped northwest of the location;
				-- northeast:
					now destination is mapped northeast of the location;
				-- south:
					now destination is mapped south of the location;
				-- southwest:
					now destination is mapped southwest of the location;
				-- southeast:
					now destination is mapped southeast of the location.
			[let the way be the best route from the location to the destination;
			try going the way instead.]

Section 3 - Rescatar al jugador del pantano

[Describimos una subzona]
LaberintoCentral is a list of rooms that varies. LaberintoCentral is {Pantano1, Pantano2, Pantano3, Pantano4, Pantano5, Pantano6, Pantano7, Pantano8, Pantano9}.
Definition: a room is central if it is listed in LaberintoCentral.

[Contador de vueltas en el pantano central]
PasosEnCentral is a number that varies. PasosEnCentral is 0.

Before going from a room (called origen) to a central room:
	if origen is not central:
		now PasosEnCentral is 0;
		[say "Poniendo el contador a cero.";]
	otherwise:
		increase PasosEnCentral by 1;
		[say "Dando vueltas en el central por [PasosEnCentral] pasos.";]
		if PasosEnCentral is greater than 9:
			[say "Ya vale.";]
			if there is a not central adjacent room (called salida):
				[say "Encontrada salida: [salida].";]
				let the way be the best route from the location to the salida;
				try going the way instead.

Chapter 3 - Los sonidos del pantano

Section 1 - Decorar el pantano con las cosas que se pueden escuchar

[--------------------------------------------------

Algo de texto aleatorio, pero no solo,
una suerte de 'sonidos', cuando se
atiende hecho a mano

--------------------------------------------------]

Definition: a room is listenable if it is Pantano1 or it is Pantano23 or it is Pantano25.
Definition: a thing is listenable if it is a patroller or it is a cadaver.

Before listening to a direction:
	say "Mejor escuchar en todas direcciones...";
	try listening instead.

Before listening to a thing:
	say "Intentas escuchar desde las proximidades [the noun].".

Instead of listening:
	let algoEscuchado be false;
	if there is a listenable adjacent room (called lugar):
		let way be the best route from the location to lugar;
		if lugar is:
			-- Pantano1: 
				say "Desde [the way] llega el refrescante sonido de agua corriente.";
				now algoEscuchado is true;
			-- Pantano23: 
				say "Escuchas sonidos normales (y desagradables) del pantano, excepto desde [the way] en donde los animales parecen callar. Que extraño...";
				now algoEscuchado is true;
			-- Pantano25: 
				say "Extraños sonidos, como si el viento zarandease las [j]plantas[x] llegan desde [the way], pero... no hay viento.";
				now algoEscuchado is true;
	otherwise if there is a listenable thing (called cosa) in an adjacent room (called lugar):
		let way be the best route from the location to lugar;
		if cosa is a cadaver:
			say "Un considerable ruido de insectos llegan desde [the way], como si algo en descomposición los hubiese atraído.";
			now algoEscuchado is true;
		otherwise:
			 if cosa is:
				-- deavork: 
					say "En [the way] se escucha como si algo zarandease las [j]plantas[x].";
					now algoEscuchado is true;
				-- lobo: 
					if hambre of lobo is greater than 40:
						say "Desde [the way] llegan unos apagados quejidos lastimosos.";
						now algoEscuchado is true;
					else:
						say "Desde [the way] llega un aullido débil.";
						now algoEscuchado is true;
				-- zhur:
					say "[one of]Escuchas desde [the way] unas apagadas palabras en lenguaje orco.[or]En [the way] se escuchan como chapoteos.[or]Alguien parece andar por [the way].[at random]";
					now algoEscuchado is true;
				-- yerk:
					say "[one of]Escuchas desde [the way] unas apagadas palabras en lenguaje orco.[or]En [the way] el sonido de algo pesado y lento moviéndose.[or]Alguien parece andar por [the way], ¿un elefante tal vez?.[at random]";
					now algoEscuchado is true;
				-- berg:
					say "[one of]Escuchas desde [the way] unas apagadas palabras en lenguaje orco.[or]En [the way] el sonido una risilla bastante molesta.[or]Alguien parece andar por [the way]... no, no, ha sido sólo una impresión.[at random]";
					now algoEscuchado is true;
				-- icalante:
					if icalante is i_enfadado:
						say "Desde [the way] llegan extraños gruñidos.";
						now algoEscuchado is true;
	if algoEscuchado is false:
		if location is Copa:
			say "Algo de viento se cuela entre las hojas de este enorme árbol. Abajo en el 	pantano se escuchan los sonidos de los anfibios y los insectos.";
		otherwise if location is PuertaCastillo:
			say "En este lugar el sonido del eterno fuego del foso de brea de la fortaleza cubre a cualquier otro ruido que pueda haber.";
		otherwise if location is Pantano28:
			say "Extraños sonidos escapan del túnel que lleva a los sótanos de la fortaleza.";
		otherwise if location is Cueva1:
			say "Aquí el silencio es el rey, al menos en comparación con el pantano.";
		otherwise if location is Lava:
			say "El ruido que hace la lava al avanzar lentamente, los gases borboteando pesadamente, el crujir de las rocas, cubre cualquier otro sonido.";
		otherwise if location is Lugar_Oo_Drack:
			say "Un extraño temblor casi imperceptible se puede 'notar', más que oirse. ¿Qué será?.";
		otherwise if location is parte del pantano:
			say "[one of]Se escuchan ranas, pero eso no impide que se escuchen moscas y cosas así.[or]Moscas, mosquitos, más moscas, más mosquitos.[or]Pues... ya sabes, los ruidos típicos del pantano: [j]criaturas[x] lamentables lamentándose de ser lamentables.[at random]";
		otherwise if location is cueva oscura:
			say "Grietas, grietas y más grietas. Túneles horadados por la colonia de deavorks y cosas probablemente más sucias. ¡Se puede ir en cualquier dirección! Todas parecen igual de improbables y desagradables.";
		otherwise:
			say "No hay mucho que escuchar más allá de tus propios pasos.".

Chapter 4 - Morir

Section 1 - Función de muerte general

[--------------------------------------------------

Debería cambiarse de PNJ según los
que queden disponibles y dar
un texto explicatorio adecuado.

--------------------------------------------------]

[ Morirse de hambre ]
To morir en cualquier parte:
	if the location is in Cuevas:
		muerte en las cuevas;
	otherwise:
		morir en el pantano.

[ Te aplastan ]
To ser aplastado por (pnj - a patroller):
	say "Realmente cabreado [el portador] te arroja al suelo.";
	bnw;
	say "Tendrás que encontrar otro portad...";
	bnw;
	say "Oh, no, pero... ¿qué está haciendo?";
	bnw;
	say "Te pisa, te pisa, te pisa... ¡con violencia!";
	bnw;
	say "¡Quiere acabar contigo!";
	bnw;
	say "Y realmente lo termina logrando.";
	bnw;
	say "Primero es una pequeña grieta en tu ojo esmeraldino, luego un corte completo de la gema, un corte por la que se escapa tu alma de dragón. Un alma probablemente condenada para siempre por su inutilidad y por dejarse matar por seres inferiores.";
	finalizar juego.

[ Marca para poner los nombres de los orcos ]
OrcosConocidos is a number that varies. OrcosConocidos is 0.

[ Rutina general en caso de muerte en el pantano ]
To morir en el pantano:
	say line break;
	[escogemos siempre el más próximo]
	let nj be jugador mas proximo;
	if nj is the player:
		[Para siempre en el pantano]
		fracasar la aventura;
	otherwise:
		repeat with pat running through visible patroller:
			if pat is not nj and pat is not the player:
				move pat to a random adjacent room;
		poner cadaver;
		[Es el nuevo portador]
		[Ponerle el anillo]
		now the anillo is worn by nj;
		[Reiniciar hambre y sed]
		now hambre_del_jugador is 0;
		now sed_del_jugador is 0;
		[Detenerlo]
		deactivate  nj;
		[Ponerlo en dominado]
		now nj is dominado;
		[Hacer que sea el jugador]
		let aj be the player;
		now aj is muerto;
		contar muerte de aj y encuentro con nj;
		move nj to location;
		now the player is nj;
		[mover el antiguo jugador fuera de juego]
		move aj to NoLugar;
		[reinicio de los orcos]
		reinicia a los orcos;
		[the lobo ya no te reconoce]
		now lobo is not contentado.

To cambiar de portador orco:
	repeat with pos running through the orco in location:
		if pos is not the player:
			say "El brillo de tu ojo llama la atención [del pos].";
			bnw;
			say "La avaricia llena su cara, olvidando todo lo demás, y de inmediato da un empujón a [el portador], haciéndolo caer al suelo.";
			bnw;
			say "Sin darle oportunidad a recuperarse le quita el anillo de su mano.";
			bnw;
			say "Ingenuo. Una vez en su mano tomas el control de su mente con gran facilidad.";
			if the location is not Pantano19:
				bnw;
				say "El otro orco, bastante confuso huye entre el follaje.";
			now the anillo is carried by pos;
			now the player is antiguo poseso;
			now the player is pos;
			reinicia a los orcos;
			if there is a orco (called nohuido) which is not the player in the location:
				if nohuido is not the player:
					try silently nohuido going south;
			break.
	
	

[ La parte no descriptiva de matar a un PNJ]
To matar al pnj (pnj - a patroller):
	if pnj is not the player:
		now pnj is muerto;
		if pnj is a posible jugador:
			poner cadaver de pnj;
			move pnj to NoLugar;
			if pnj is an orco:
				reinicia a los orcos;
		otherwise if pnj is deavork:
			now all of the things in estomago del deavork are in the location of deavork;
			move deavork_muerto to the location of deavork;
			move deavork to Pantano28;
			if the location is Pantano28:
				say "Un deavork sale de las [j]cuevas[x] .";
		otherwise if pnj is lobo:
			move lobo_muerto to the location of lobo;
			move lobo to NoLugar;
			deactivate lobo;
	otherwise:
		say "QQQ! Fallo se ha intentado 'matar' al jugador usando 'matar al pnj'".
		

[ Poner el cadaver de un pnj ]
To poner cadaver de (pnj - a posible jugador):
	move cuerpo of pnj to the location of pnj;
	now all of the things carried by pnj are in the location of cuerpo of pnj.

[ Crear un cadaver adecuado ]
To poner cadaver:
	[the cadaver físicamente al lugar]
	move cuerpo of the player to the location;
	[ahora dejar todo]
	now all of the things carried by the player are in the location;
	now all of the things worn by the player are in the location.

[ Reiniciar los orcos de forma adecuada ]
To reinicia a los orcos:
	[Primero el asunto de los nombres, una vez que el jugador pasa a ser orco]
	if OrcosConocidos is 0:
		if the player is an orco:
			poner nombre propio a orcos;
			now OrcosConocidos is 1;
	repeat with pj running through orco:
		if pj is not in the location or the player is an orco:
			deactivate pj;
		[ Descartamos los ya muertos y los que sean el jugador ]
		if the player is not pj and pj is not in NoLugar:
			[ En cualquier caso lo movemos al campamento, si no están visibles ]
			if pj is not in the location:
				move pj to Pantano19;
			if pj is in Pantano19 and the player is an orco:
				now pj is esperando;
			if pj is zhur and the player is not zhur:
				[ Si zhur está vivo siempre estará patrullando ]
				now zhur is patrullando;
				now zhur is aimless;
				activate zhur;
			otherwise if pj is yerk:
				[ Sólo si zhur está muerto patrulla ]
				if zhur is in NoLugar or the player is zhur:
					now yerk is patrullando;
					now yerk is aimless;
					activate yerk;
			otherwise if pj is berg:
				[ Sólo si zhur y yerk están muertos patrullará ]
				if (zhur is in NoLugar or the player is zhur) and (yerk is in NoLugar or the player is yerk):
					now berg is patrullando;
					now berg is aimless;
					activate berg.

To poner nombre propio a orcos:
	now the printed name of zhur is "Zhur";
	now zhur is proper-named;
	now the printed name of berg is "Berg";
	now berg is proper-named;
	now the printed name of yerk is "Yerk";
	now yerk is proper-named;
	now the printed name of zhur_muerto is "cadáver de Zhur";
	now the indefinite article of zhur_muerto is "el";
	now the printed name of berg_muerto is "cadáver de Berg";
	now the indefinite article of berg_muerto is "el";
	now the printed name of yerk_muerto is "cadáver de Yerk";
	now the indefinite article of yerk_muerto is "el";
	bnw;
	say "Una de las cosas que has podido aprender de este portador son los nombres de los orcos destinados por aquí: Zhur, Berg, Yerk... apestosos nombres de orco.";
	bnw;
	say "No aprendes su lengua, claro. Puedes haber caído muy bajo pero no 'tan bajo'.".

[DECORACIÓN DE TEXTOS]

[Rutina general que cuenta qué pasa, tras la muerte de un jugador hasta que aparece el otro]
To contar muerte de (aj - a posible jugador) y encuentro con (nj - a posible jugador):
	[say "[aj] --> [nj]";
	say line break;]
	say "Tu portador yace muerto.";
	bnw;
	[Despedida emotiva de Nuhur]
	if aj is nuhur:
		recordar a Nuhur;
	[Si el nuevo está ahí mismo no hay problema]
	if the location of nj is the location of cuerpo of aj:
		tener un poco de angustia al pasar de aj a nj;
	otherwise:
		tener un mucho de angustia al pasar de aj a nj.
		

To recordar a Nuhur:
	say "Desde que Nuhur te tuvo en su palma por primera vez, sentiste una especie de aprecio por este patético humano. Supones que se trata de un sentimiento parecido al que tienen los humanos por sus mascotas, sus perros de caza o sus aves de cetrería.";
	bnw;
	say "Te ha servido bien. A pesar de sus evidentes limitaciones y sus miedos, sin él no hubieses podido salir nunca de aquel lamentable castillo perdido en las tierras bajas.";
	bnw;
	say "Sin él no hubieses llegado hasta el [j]pantano[x] apestoso, a la visión de la fortaleza de Sady Omú.";
	bnw;
	say "¿Podrás encontrar un portador igual de útil? Lo dudas mucho.";
	bnw.

To tener un poco de angustia al pasar de (aj - a posible jugador) a (nj - a posible jugador):
	say "[one of]'¿Y ahora qué?', es lo primero que piensas.[or]'Aquí estamos de nuevo', piensas, 'a solas'.[or]De nuevo te ves sin un portador.[or]¡Muerto otra vez![stopping]";
	bnw;
	say "Después te asaltan recuerdos de verte [one of]devorado por [j]criaturas[x] inferiores[or]rodeado de detritus[or]enterrado en fango[or]perdido en el fondo de un zurrón[or]abandonado en una cloaca[or]en una caja, olvidado[at random]...";
	bnw;
	say "[one of]Por un momento te asalta la angustiosa idea de verte abandonado para siempre en el pantano.[or]La angustia te asalta.[stopping][first time] Una anillo de oro macizo puede durar miles de años. ¿Te espera una eternidad de esperar?[only]";
	bnw;
	say "Pero entonces ves cómo los ojos [del nj] se posan en ti y [if nj is a orco]te arranca descuidadamente de entre los dedos de [el portador].[otherwise]con eso basta para que contactes con su simple mente.[end if][first time] El resto es fácil, un poco de exploración de una mente simple y luego la dominación completa.[only]".
	
To tener un mucho de angustia al pasar de (aj - a posible jugador) a (nj - a posible jugador):
	say "[one of]Y aquí nos encontramos. Perdidos en mitad de un apestoso pantano.[or]¡Otra vez sin un portador![or]¡Solos de nuevo![or]¡Muertos de nuevo![stopping]";
	bnw;
	say "[one of]No puedes dejar de pensar que pronto lloverá de nuevo, que todo se inundará, que este cuerpo, el de tu portador, se hundirá entre los fangos. Que te acabrá arrastrando a un foso de arenas movedizas donde permanercerás para siempre.[or]Cualquier cosa puede pasarte.[stopping]";
	bnw;
	say "[one of]¡Cualquier cosa es mejor que ese destino! Así que aprovechas cualquier oportunidad, el más miserable animal, el más ridículo, el más minúsculo, e intentas atraerlo... sin suerte...[or]Necesitas un portador. ¡Cualquiera![stopping]";
	bnw;
	say "Finalmente ves surgir de entre la frondosa vegetación [al nj]. [if nj is a orco]Sus ojos avariciosos le delatan, te coge, se alegra. No tiene ni idea de lo que le espera.[otherwise]Te alegras de tu enorme suerte, te basta con brillar un poco y que [el nj] te observe para contactar con su mente.[end if][first time] El resto es fácil, un poco de exploración de una mente simple y luego la dominación completa.[only]".

To fracasar la aventura:
	say "'¡No!', es el grito desesperado que te asalta al sentir que tu portador está muerto.";
	bnw;
	say "Sabes, en tu fuero interno, que no queda probablemente nadie que pueda servirte de portador.";
	bnw;
	say "¡No! ¡No, no! ¡¡No!!";
	bnw;
	say "Pero sabes que es verdad. La amarga verdad.";
	bnw;
	say "Los días pasan mientras intentas desesperadamente que cualquier minúscula alimaña te lleve, sin suerte. Las semanas se acumulan mientras ves como, poco a poco, los restos de tu último portador son devorados por las alimañas del pantano, sin que ninguna te devore a ti, o simplemente se descomponen.";
	bnw;
	say "Lentamente te hundes con sus restos óseos en el pantano, y finalmente te rodea la absoluta oscuridad.";
	bnw;
	say "La más temible ceguera. Para siempre.";
	bnw;
	say "¿O tal vez no?...";
	[dstop all sounds; ]
	finalizar juego.

To muerte en las cuevas:
	say "Estas [j]cuevas[x]  son solitarias.";
	bnw;
	say "Demasiado solitarias.";
	bnw;
	say "De hecho aquí te quedas abandonado sin que nada ni nadie llegue a encontrarte.";
	bnw;
	say "En la oscuridad.";
	bnw;
	say "La más temible ceguera. Para siempre.";
	bnw;
	say "¿O tal vez no?...";
	[dstop all sounds; ]
	finalizar juego.

Chapter 5 - Hechizos, de los de verdad, o casi

Section 1 - Congelar un lugar

To congelar (lugar - a room):
	[Intentamos simular un lugar congelado, dependerá de donde esté]
	if lugar is in Pantano:
		now the printed name of lugar is "Un extraño lugar congelado en mitad del pantano";
		now the description of lugar is "Este lugar ha quedado irreconocible. Tal vez hubiese (o haya) mortales arañas, o arenas movedizas, pero todo lo que se ve ahora es escarcha que lo cubre todo.";
		now the default picture of lugar is Figure of Frozen;
		now the decoration of lugar is Table of DecoEscarchaPan;
	otherwise if lugar is in Cuevas:
		now the printed name of lugar is "Una cueva de hielo";
		now the description of lugar is "Esta cueva ha sido recubierta de hielo por efecto del pergamino azulado. Ahora es resbaladiza.";
		now the decoration of lugar is Table of DecoEscarchaCue;
	[Ahora matamos a todo bisho viviente que haya por aca, pero no tocamos a los posibles jugadores]
	if deavork is in lugar:
		matar al pnj deavork;
	if lobo is in lugar:
		matar al pnj lobo.

Table of DecoEscarchaPan
topic			description							genre
"arbol" or "arboles" or "frondosidad" or "copas" or "plantas"	"Los árboles del [j]pantano[x] casi no se ven en este lugar, tan cubiertos de escarcha que están."	M
"pantano" or "cienagas" or "manglar" or "aguas" or "agua" or "charco" or "charcos" or "cienaga"	"Incluso las aguas del [j]pantano[x] están recubiertas de hielo y escarcha."	M
"criaturas" or "criatura" or "bestias" or "seres"	"En este lugar las [j]criaturas[x] del pantano, callan. Probablemente porque estén congeladas."	FP
"escarcha" or "hielo" or "nieve"	"Blanca y mortal. Lamentablemente recuerdas demasiado bien como llegó hasta aquí."	M

Table of DecoEscarchaCue
topic			description							genre
"roca" or "rocas"	"Rocas. Nunca te han interesado. Son simplemente pedazos inertes de naturaleza de diversos colores y extrañas formas. Y éstas están congeladas"	FP
"escarcha" or "hielo" or "nieve"	"Blanca y mortal. Lamentablemente recuerdas demasiado bien como llegó hasta aquí."	M


Chapter 6 - Las cuevas

Section 1 - Movimiento en las cuevas

[--------------------------------------------------

Algo de texto para justificar el 
laberinto en sí

--------------------------------------------------]

Before going from somewhere in Cuevas:
	if location is not Cueva1 or the noun is not south:
		if in darkness:
			say "Caminas palpando. Buscando con tus manos una grieta o túnel por el que salir en esa dirección. Crees encontrar una, pero no estás nada seguro de haber escogido la correcta.";
		otherwise:
			say "[one of]Escoges una de las múltiples grietas que parecen ir en esa dirección, estás casi seguro que no has ido ya por ahí.[or]Hay un túnel que parece ir en esa dirección, un túnel que crees no haber recorrido aún, así que tomas ese túnel.[or]Es muy dificil orientarse, incluso para ti en estas profundidades, así que no tienes nada claro haber escogido el túnel correcto.[or]Estás casi seguro de haber escogido el túnel correcto para ir hacia esa dirección, pero... ¡hay tantos! ¡Malditas [j]cuevas[x]![at random]".


Section 2 - No hay en las cuevas direcciones a las que no se pueda ir

[--------------------------------------------------

   Intento para evitar tener que 
   hacer todas las conexiones en
   el pantano

--------------------------------------------------]

Before going nowhere from somewhere in Cuevas:
	if the noun is up:
		say "No se puede salir de estas [j]cuevas[x]  por el techo." instead;
	otherwise:
		if the noun is down:
			say "Esperas que no haya demasiados huecos bajo tus pies... eso esperas...." instead;
		otherwise if the location is not Cueva1:
			let the destination be a random adjacent room;
			let the way be the best route from the location to the destination;
			try going the way instead.

Section 3 - El problema de entrar en las cuevas

[--------------------------------------------------------------------------------------

Simplemente no se puede entrar en las cuevas. Los deavork
matan al que lo intente excepto si se trata del icalante o 
de yerk, ya que ambos son lo bastante fuertes para acabar
con ellos.

Las posibles soluciones a este puzzle son:

	- Enviar al icalante al norte desde el Pantano28
	- Ser o yerk o el icalante y entrar

---------------------------------------------------------------------------------------]

Instead of entering when the location is Pantano28:
	try going north.

Instead of going inside from Pantano28:
	try going north.

Instead of going north from Pantano28:
	if the player is not icalante and the player is not yerk and resuelto of Pantano28 is less than 2:
		say "Intentas adentrarte por el túnel oscuro y sucio hacia el [north], pero pronto te das cuenta de que el lugar está infestado de deavorks.";
		bnw;
		say "¡Se trata de todo un nido de estas bestias!";
		bnw;
		say "Luchas en lo posible con ellas, incluso es posible que hayas matado a alguno de ellos, pero tu portador simplemente no es lo bastante fuerte ni resistente como para acabar con todos.";
		move deavork_muerto to Pantano28;
		move deavork to Pantano28;
		morir en el pantano;
		now resuelto of Pantano28 is 1;
	otherwise:
		 if resuelto of Pantano28 is less than 2:
			say "Entras en en nido de deavorks y en seguida sientes el dolor de un mordisco de esas bestias defendiendo su nido.";
			bnw;
			say "Ni siquiera tienes que ordenárselo, tu portador se gira enfurecido y devuelve el golpe.";
			bnw;
			say "Los deavork no se quedan parados, vuelven a atacar y pronto todo el asunto se transforma en una de las cosas que más te gusta ver. Una auténtica carnicería, una en la que tu bando lleva la parte de tajar, cortar, arrancar y escuchar los gritos agónicos.";
			bnw;
			say "Decepcionantemente pronto los supervivientes de entre los deavork huyen despavoridos en todas direcciones. Dejando el camino expedito.";
			move deavork to Pantano1;
			now resuelto of Pantano28 is 2;
		continue the action.

After going to Pantano28 from Cueva1:
	if Musica-Intro-Sonando is false and Musica-Sonando is true:
		play the sound of pantano in foreground with loop;
	if Efectos-Sonando is true:
		play sound of efectos in background with loop;
	continue the action.
	
After going to Cueva1 from Pantano28:
	if Musica-Sonando is true:
		play the sound of cuevas in foreground with loop;
		now Musica-Intro-Sonando is false;
	if Efectos-Sonando is true:
		stop the background sound;
	continue the action.
		


Chapter 7 - Las conversaciones
		
Section 1 - Oo Drack

Section 1.1 - Inicio

[Ataque de Oo Drack]
At the time when Oo Drack ataca:
	if location is not Lugar_Oo_Drack:
		Oo Drack ataca in two turns from now;
		stop;
	if Musica-Sonando is true:
		stop the foreground sound;
		play the sound of castillo in foreground with loop;
	now Efectos-Sonando is false;
	close the statusline;
	image Figure of Tesoro Con;
	say "Una ensordecedora carcajada precede a todo...";
	bnw;
	say "...le sigue un estrépito de tesoros metálicos cayendo, chocando unos contra otros...";
	bnw;
	say "...entonces aparece. Oro entre oro. El majestuoso Oo Drack, el que otrora fuera Rey entre los dragones.";
	bnw;
	say "Tu mejor oportunidad, piensas de inmediato; aunque observas que una larga cadena de hierro-dragón, probablemente hechizada, parece mantenerlo preso aquí de alguna manera.";
	bnw;
	if the player is an orco:
		say "Intentas hablar, pero sus fauces se abren y el poder del dragón surge de ellas.";
		bnw;
		say "El abrasador fuego reduce a tu portador a cenizas.";
		bnw;
		if a random chance of 1 in 3 succeeds:
			say "Y el calor resulta demasiado para tu ojo, ahora hecho de esmeralda...";
			bnw;
			say "...surge en él una grieta, y por ella se escapa tu alma de dragón.";
			bnw;
			say "Tu pobre alma condenada a buen seguro al infierno eterno y helado, debido a tu incapacidad.";
			finalizar juego;
		otherwise:
			say "Tu, sin embargo, sobrevives. Tu resistencia draconil, probablemente, te ha salvado.";
			bnw;
			say "Desesperado brillas. Y el minúsculo resplandor de tu ojo llama la atención del anciano Rey.";
			bnw;
			say "Te recoge con delicadeza de entre la ceniza. Y te mira.";
			bnw;
			Oo Drack habla con un orco;
	otherwise if the player is icalante:
		say "A tu portador le entra el pánico y sale corriendo hacia la salida.";
		bnw;
		say "Simplemente no puedes ignorar esta oportunidad, así que saltas de su dedo y ruedas por el suelo.";
		bnw;
		say "El breve tintineo de tu caída llama la atención de Oo Drack, que te recoge con sus enormes y afiladas zarpas y te mira.";
		bnw;
		Oo Drack habla con un anillo;
	otherwise if the player is nuhur:
		say "Oo Drack cae sobre vosotros, pero no sopla su fuego, ni os mata.";
		bnw;
		say "En lugar de eso coge con su zarpa al humano y lo alza con delicadeza hasta sus ojos.";
		bnw;
		if icalante is visible and icalante is i_siguiendote:
			say "El icalante sale huyendo llevándose todo lo que llevaba con él.";
			bnw;
		say "'Eres el humano más feo que he visto', dice, 'por un momento pensé que érais un orco.";
		bnw;
		say "Dudas, pero es tu mejor posibilidad.";
		bnw;
		Oo Drack habla con Nuhur; 
	otherwise:
		say "QQQ: No implementado.".

[Reglas de final]
This is the mata a nuhur rule:
	say "Tras lo cual golpea repetidamente a Nuhur contra el suelo.";
	bnw;
	say "Su sufrimiento no dura demasiado.";
	bnw;
	say "Entonces llega tu turno bajo el fuego abrasador de Oo Drack.";
	bnw;
	say "Tu sufrimiento tampoco dura mucho; pronto tu alma de dragón escapa de su forma de anillo y vuela directa al infierno de los inútiles y los débiles.";
	finalizar juego.
	
[Reglas de final]
This is the mata a orco rule:
	say "Tras lo cual golpea repetidamente al orco contra el suelo.";
	bnw;
	say "Su sufrimiento no dura demasiado.";
	bnw;
	say "Entonces llega tu turno bajo el fuego abrasador de Oo Drack.";
	bnw;
	say "Tu sufrimiento tampoco dura mucho; pronto tu alma de dragón escapa de su forma de anillo y vuela directa al infierno de los inútiles y los débiles.";
	finalizar juego.

This is the mata a anillo rule:
	say "Tras lo cual simplemente te aplasta con facilidad con sus enormes dedos de dragón dorado.";
	bnw;
	say "Tu sufrimiento no dura mucho; pronto tu alma de dragón escapa de su forma de anillo y vuela directa al infierno de los inútiles y los débiles.";
	finalizar juego.

This is the ir a Sady Omu rule:
	say "Oo Drack hace venir, no sabes cómo, a un servidor del nigromante. Un esqueleto animado, similar al protector con el que te enfrentaste.";
	bnw;
	say "Bastante impresionante para ser magia humana.";
	bnw;
	say "Intentas dominar al esqueleto, pero no hay mente a la que dominar, así que te dejas llevar.";
	bnw;
	say "Atravesáis las salas de la vieja fortaleza hasta la supuestamente terrorífica sala del trono del nigromante; en donde el esqueleto animado te entrega a su amo.";
	bnw;
	clear the screen;
	image Figure of Trono;
	move the player to Lugar_Sady_Omu, without printing a room description;
	try looking;
	if player is nuhur:
		say "El humano, Nuhur, llega no mucho después. Sonriente y balbuceando algo sobre que ha regresado al castillo pero que está más feo.";
		bnw;
		say "Sady Omú se acerca hasta él y acariciéndole el pelo de la cabeza le dice en voz baja: 'Me recuerdas a mi difunto hijo'.";
		bnw;
		say "Hace llamar a algunos orcos y les dice muy claramente que el humano es su nuevo asistente de cámara, que no se les ocurra hacerle ningún daño.";
		bnw;
		say "Los orcos acompañan fuera de la sala del trono y el nigromante vuelve su atención hacia ti.";
	iniciar conversacion Table of Sady Omu.


Section 1.2 - Orco

To Oo Drack habla con un orco:
	iniciar conversacion Table of Oo Drack Orco;
	[Completar un poco el arbol según lo que se lleve]
	if dedal is visible:
		choose row with a numero of 23 in the Table of Oo Drack Orco;
		add 9100 to activa entry.


[Tabla ejemplo]
Table of Oo Drack Orco
numero	seleccion		respuesta	activado	activa	extra
0 [inicial]	--			"'Un anillo mágico en manos de un orco', dice y se queda pensando."	1		{1, 3}			the fake rule
1 [>0]		"He venido a suplicar tu ayuda, ¡oh poderoso Oo Drack!"		"'¡Vaya hablas!, ¿Y por qué tendría que ayudarte?', dice."					0		{4, 9002, 5 }		the fake rule
3 [>0,2]		"Soy el poderoso Uudrum, ¿acaso no me reconoces anciano?"	"'No eres Uudrum', contesta algo molesto, 'y Uudrum no era poderoso'."	0		{9003}			the fake rule
4 [>1]		"Porque yo puedo ayudaros a vos"				"'Tú, ¿un anillo?', dice, 'No me hagas reír'."					0		{7, 8}			the fake rule
5 [>1]		"Porque es adecuado entre 'hermanos' que nos ayudemos"	"'¿Tú? Tú no eres mi hermano. No un anillo.', dice, 'No me hagas reír'."		0		{7, 8}			the fake rule
7 [>2]		"Soy un pobre dragón hechizado."				"'No puedo creeros.', espeta."						0		{8}			the fake rule
8 [>6]		"Soy yo Uudrum. ¡Tenéis que ayudarme!."		"'¿Realmente eres Uudrum?.', pregunta, '¿Cómo ha podido suceder?."		0		{9000, 9, 12}			the fake rule
9 [>8]		"Fui indisciplinado y El Nigróh me venció en un combate mágico."	"'Eso sí suena al Uudrum que conozco.', dice entre risas, 'Y, ¿por qué tendría que ayudarte, lamentable lagarto gordo?'."	0	{10, 11}	the fake rule
10 [>9]		"Porque yo puedo ayudaros a vos"				"'¿Cómo?', dice."								0		{13}			the fake rule
11 [>9]		"Porque es adecuado entre 'hermanos' que nos ayudemos"	"'Un lamentable lagarto comilón como tú no es mi hermano.', dice, ¿por qué habría de ayudarte?."	0		{9002}			the fake rule
12 [>8]		"Caí preso de un hechizo en la gloriosa lucha contra nuestros enemigos. Mi valor y mi fuerza no fueron suficientes."	"'Eso no parece algo típico de Uudrum.', dice, '¿qué pasó realmente?'."	0		{9, 9000}			the fake rule
13 [>10]		"Puedo liberaros."						"'No, no podéis.', dice, 'pago por mis pecados del pasado'."			0		{14, 15, 16, 17}			the fake rule
14 [>13]		"Tened confianza en mí, ayudadme y os liberaré."			"'¿Cómo?', dice."								0		{9004}			the fake rule
15 [>13]		"¿Qué pecados habéis cometido?"				"'Eso no es de tu incumbencia', dice."					0		{9002}			the fake rule
16 [>13]		"Vos sois grandioso, no podéis haber cometid..."			"'No tienes ni idea', dice, 'No tienes nada que ofrecerme'."				0		{9002}			the fake rule
17 [>13]		"Os referís a lo de que pasó con Ursutap, el general."		"'Si', dice, '¿cómo lo sabes?."						0		{18, 19, 9000}		the fake rule
18 [>17]		"Hablé con él. Hace no demasiado, en un pueblo. Debéis confiar en mí. Ayudadme y os liberaré."	"'¿Cómo?', pregunta."			0		{9004, 20}		the fake rule
19 [>17]		"Lo sabía el orco que me ha traído hasta aquí."				"'Eso es mentira', dice."							0		{9005}			the fake rule
20 [>19]		"Ursutap me dió detalles de lo que pasó."				"'¿Y qué?', dice, 'eso no me va a ayudar'."					0		{9002, 21}		the fake rule
21 [>20]		"¡Sé como convencer a Sady Omú! Conozco su debilidad."		"'¿La conoces?', pregunta duditativo, '¿y cuál es?'."				0		{22}			the fake rule
22 [>18]		"Sé que vos sois el auténtico dueño de estas tierras. Sé que podemos ser, nosotros, los dragones dorados los que dominen. Sé que el nigromante tendrá que ceder o enfrentarse a una rebelión."		"'¿Cómo sabes eso?', pregunta."				0		{23}			the fake rule
23 [>22]		"Lo he visto en un mosaico, en una tumba cercana."		"'Sin pruebas...', dice."							0		{24}			the fake rule
24 [>23]		"Convenceré a Sady Omú que las tenemos."			"'Y si no te cree, ¿qué harás?', pregunta."					0		{9004}			the fake rule
9000 [>*]	"Eso no te importa"						"'Tú mismo', contesta aparentemente divertido."				0		--			the mata a nuhur rule
9002 [>1]	"¡Maldita sea anciano! He llegado hasta aquí sorteando mil dificultades para que me ayudes."	"'Demasiado irrespetuoso', dice cansado."						0		--			the mata a anillo rule
9003 [>*]	"¡Soy Uudrum, apestoso anciano! Y siempre he sido mucho más poderoso que vos."				"'Demasiado irrespetuoso', dice cansado."						0		--			the mata a anillo rule
9004 [>*]	"¡Mataré a Sady Omú!."						"'Entiendo', dice cansado, 'pero no podemos permitirnos traidores, ni siquiera ahora, ni siquiera tras lo que he sufrido'."						0		--			the mata a orco rule
9005 [>*]	"¡Por los ancestros os juro que no es falso!."			"'Odio a la gente irrespetuosa con los muertos', dice cansado."										0		--			the mata a anillo rule
9100 [>*]	"¡Tenía el dedal de los dragones con el orco! ¡Eso prueba sus derechos! ¡Buscadlo!"	"Sonríe. 'Tal vez haya esperanza', dice."												0		--			the ir a Sady Omu rule

Section 1.3 - Anillo

To Oo Drack habla con un anillo:
	iniciar conversacion Table of Oo Drack Anillo;
	if dedal is in the location: [En el suelo]
		choose row with a numero of 23 in the Table of Oo Drack Anillo;
		add 9101 to activa entry;
	otherwise if dedal is visible:
		choose row with a numero of 23 in the Table of Oo Drack Anillo;
		add 9100 to activa entry.

[Tabla ejemplo]
Table of Oo Drack Anillo
numero		seleccion		respuesta								activado	activa			extra
0 [inicial]	--			"'Pero... ¿qué es lo que eres pequeña cosa?', dice."				1		{1, 2, 3}			the fake rule
1 [>0]		"Soy un anillo mágico, llévame de inmediato con el nigromante o te dominaré."	"'¿Eres peligroso?', pregunta."	0		{9001}			the fake rule
2 [>0]		"He venido a suplicarte poderoso Oo Drack."	"'¿Suplicarme?', dice con aspecto cansado, 'No sé quien eres pero no puedo ayudar a nadie ahora'. "	0		{4, 5}			the fake rule
3 [>0]		"Soy el poderoso Uudrum, ¿acaso no me reconoces anciano?"	"'No eres Uudrum', contesta algo molesto, 'y Uudrum no era poderoso'."	0		{9003}			the fake rule
4 [>2]		"Desde luego que podéis. ¡Oh, poderoso señor de los dragones y señor de estas tierras!"	"'¿Señor de estas tierras?', pregunta interesado. "	0		{6, 7, 9001}			the fake rule
5 [>2]		"¡Tienes que ayudarme! Hazlo ahora mismo o te dominaré, tengo ese poder."	"'¿Eres peligroso?', pregunta cansado.. "	0		{9001}			the fake rule
6 [>4]		"No lo neguéis, sé que sois el auténtico señor de todas estas tierras por herencia."	"'¿Y cómo sabes eso?', pregunta cansado.. "	0		{23}			the fake rule
7 [>4]		"Vos, sí, de la estirpe de los Drack, de la filia de los dorados, como yo mismo."	"'¿Y cómo sabes eso?', pregunta cansado.. "	0		{23}			the fake rule
23 [>22]		"Lo he visto en un mosaico, en una tumba cercana."		"'Sin pruebas...', dice."							0		{24}			the fake rule
24 [>23]		"Convenceré a Sady Omú que las tenemos."			"'Y si no te cree, ¿qué harás?', pregunta."					0		{9004}			the fake rule
9001 [>1]	"Sí."	"'Entiendo', contesta."						0		--			the mata a anillo rule
9003 [>*]	"¡Soy Uudrum, apestoso anciano! Y siempre he sido mucho más poderoso que vos."				"'Demasiado irrespetuoso', dice cansado."						0		--			the mata a anillo rule
9004 [>*]	"¡Mataré a Sady Omú!."						"'Entiendo', dice cansado, 'pero no podemos permitirnos traidores, ni siquiera ahora, ni siquiera tras lo que he sufrido'."						0		--			the mata a anillo rule
9100 [>*]	"Yo... yo... ¡tenía el dedal!.. ¡El viejo dedal que demostraba vuestro... pero ese estúpido mono se lo ha llevado con él, ¡lo juro! ¡os lo juro!"	"'Estúpida sortija mágica mentirosa', contesta."			0		--			the mata a anillo rule
9101 [>*]	"¡Tengo el dedal de los dragones! ¡Eso prueba sus derechos! ¡Mirad!"	"Sonríe. 'Tal vez haya esperanza', dice."												0		--			the ir a Sady Omu rule

Section 1.4 - Nuhur

To Oo Drack habla con Nuhur:
	iniciar conversacion Table of Oo Drack Nuhur;
	[Completar un poco el arbol según lo que se lleve]
	if dedal is visible:
		choose row with a numero of 23 in the Table of Oo Drack Nuhur;
		add 9100 to activa entry.

[Tabla ejemplo]
Table of Oo Drack Nuhur
numero		seleccion							respuesta								activado	activa			extra
0 [inicial]	--								"'¿Que hace un humano aquí?', pregunta, '¿Robar?'"			1		{9001, 1, 2, 3, 9000 }	the fake rule
1 [>0]		"He venido a suplicar tu ayuda, ¡oh poderoso Oo Drack!"		"'¿Y por qué tendría que ayudarte?', dice."					0		{4, 9002, 5 }		the fake rule
2 [>0]		"No es un humano"						"'Explicate', dice intrigado."						0		{6, 7, 3}			the fake rule
3 [>0,2]		"Soy el poderoso Uudrum, ¿acaso no me reconoces anciano?"	"'No eres Uudrum', contesta algo molesto, 'y Uudrum no era poderoso'."	0		{9003}			the fake rule
4 [>1]		"Porque yo puedo ayudaros a vos"				"'Tú, ¿un humano feo?', dice, 'No me hagas reír'."				0		{2}			the fake rule
5 [>1]		"Porque es adecuado entre 'hermanos' que nos ayudemos"	"'¿Tú? Tú no eres mi hermano. No un humano.', dice, 'No me hagas reír'."	0		{2}			the fake rule
6 [>2]		"Fijaos en sus dedos"						"'Lleva un anillo.', dice, '¿Y qué?'."						0		{8}			the fake rule
7 [>2]		"Soy un pobre dragón hechizado. Controlo a este muchacho."	"'No puedo creeros.', espeta."						0		{6}			the fake rule
8 [>6]		"Ese anillo soy yo Uudrum. ¡Tenéis que ayudarme!."		"'¿Realmente eres Uudrum?.', pregunta, '¿Cómo ha podido suceder?."		0		{9000, 9, 12}			the fake rule
9 [>8]		"Fui indisciplinado y El Nigróh me venció en un combate mágico."	"'Eso sí suena al Uudrum que conozco.', dice entre risas, 'Y, ¿por qué tendría que ayudarte, lamentable lagarto gordo?'."	0	{10, 11}	the fake rule
10 [>9]		"Porque yo puedo ayudaros a vos"				"'¿Cómo?', dice."								0		{13}			the fake rule
11 [>9]		"Porque es adecuado entre 'hermanos' que nos ayudemos"	"'Un lamentable lagarto comilón como tú no es mi hermano.', dice, ¿por qué habría de ayudarte?."	0		{9002}			the fake rule
12 [>8]		"Caí preso de un hechizo en la gloriosa lucha contra nuestros enemigos. Mi valor y mi fuerza no fueron suficientes."	"'Eso no parece algo típico de Uudrum.', dice, '¿qué pasó realmente?'."	0		{9, 9000}			the fake rule
13 [>10]		"Puedo liberaros."						"'No, no podéis.', dice, 'pago por mis pecados del pasado'."			0		{14, 15, 16, 17}			the fake rule
14 [>13]		"Tened confianza en mí, ayudadme y os liberaré."			"'¿Cómo?', dice."								0		{9004}			the fake rule
15 [>13]		"¿Qué pecados habéis cometido?"				"'Eso no es de tu incumbencia', dice."					0		{9002}			the fake rule
16 [>13]		"Vos sois grandioso, no podéis haber cometid..."			"'No tienes ni idea', dice, 'No tienes nada que ofrecerme'."				0		{9002}			the fake rule
17 [>13]		"Os referís a lo de que pasó con Ursutap, el general."		"'Si', dice, '¿cómo lo sabes?."						0		{18, 19, 9000}		the fake rule
18 [>17]		"Hablé con él. Hace no demasiado, en un pueblo. Debéis confiar en mí. Ayudadme y os liberaré."	"'¿Cómo?', pregunta."			0		{9004, 20}		the fake rule
19 [>17]		"Se lo he escuchado a unos orcos."				"'Eso es mentira', dice."							0		{9005}			the fake rule
20 [>19]		"Ursutap me dió detalles de lo que pasó."				"'¿Y qué?', dice, 'eso no me va a ayudar'."					0		{9002, 21}		the fake rule
21 [>20]		"¡Sé como convencer a Sady Omú! Conozco su debilidad."		"'¿La conoces?', pregunta duditativo, '¿y cuál es?'."				0		{22}			the fake rule
22 [>18]		"Sé que vos sois el auténtico dueño de estas tierras. Sé que podemos ser, nosotros, los dragones dorados los que dominen. Sé que el nigromante tendrá que ceder o enfrentarse a una rebelión."		"'¿Cómo sabes eso?', pregunta."				0		{23}			the fake rule
23 [>22]		"Lo he visto en un mosaico, en una tumba cercana."		"'Sin pruebas...', dice."							0		{24}			the fake rule
24 [>23]		"Convenceré a Sady Omú que las tenemos."			"'Y si no te cree, ¿qué harás?', pregunta."					0		{9004}			the fake rule
9000 [>*]	"Eso no te importa"						"'Tú mismo', contesta aparentemente divertido."				0		--			the mata a nuhur rule
9001 [>0]	"Eso es, he venido a robar."					"'Ya veo', dice cansado, 'al menos eres sincero. No me gusta hacer de guardián pero es lo que Sady Omú, me obliga a hacer'."		0		--			the mata a nuhur rule
9002 [>1]	"¡Maldita sea anciano! He llegado hasta aquí sorteando mil dificultades para que me ayudes."	"'Demasiado irrespetuoso', dice cansado."						0		--			the mata a nuhur rule
9003 [>*]	"¡Soy Uudrum, apestoso anciano! Y siempre he sido mucho más poderoso que vos."				"'Demasiado irrespetuoso', dice cansado."						0		--			the mata a nuhur rule
9004 [>*]	"¡Mataré a Sady Omú!."						"'Entiendo', dice cansado, 'pero no podemos permitirnos traidores, ni siquiera ahora, ni siquiera tras lo que he sufrido'."						0		--			the mata a nuhur rule
9005 [>*]	"¡Por los ancestros os juro que no es falso!."			"'Odio a la gente irrespetuosa con los muertos', dice cansado."										0		--			the mata a nuhur rule
9100 [>*]	"¡Tengo el dedal de los dragones! ¡Eso prueba sus derechos! ¡Mirad!"	"Sonríe. 'Tal vez haya esperanza', dice."												0		--			the ir a Sady Omu rule

Section 2 - Sady Omu

This is the sady omu caja rule:
	say "Tras lo cual ves con horror cómo te deja en una caja de madera junto a otra joyas.";
	bnw;
	say "Ya has estado en esta situación antes, en el asqueroso pueblecito humano, en el castillo de Guzha...";
	bnw;
	say "Así que intentas tranquilizarte. Sólo hay que esperar.";
	bnw;
	say "Y esperas... esperas...";
	bnw;
	say "...esperas... y esperas...";
	bnw;
	say "Entonces escuchas sonidos de batalla desde más allá de la caja. Gritos. Entrechocar de espadas, explosiones. Y finalmente... algo pesado que golpea la tapa de la caja en la que estás.";
	bnw;
	say "Ruegas porque alguien te encuentre y te saque de aquí.";
	bnw;
	say "Pero no es así, te quedas preso, en la oscuridad angosta de esta pequeña caja joyero...";
	bnw;
	say "...para toda la eternidad.";
	bnw;
	say "¿O tal vez no?";
	finalizar juego.

This is the sady omu mata rule:
	say "Tras lo que invoca una pizca de su poder sobre la Muerte.";
	bnw;
	say "Una pizca basta. Ahora, en tu forma de anillo, apenas estás vivo en realidad, así que en cuanto la magia de Sady Omú roza tu ojo esmeraldino tu vida cesa.";
	bnw;
	say "Una eternidad de sufrimiento helado te espera en el otro lado, en el infierno de los dragones.";
	finalizar juego.


This is the happy end rule:
	say "Por un momento piensas que va a acabar con tu desdichada vida, pero se detiene, toma aliento y te arroja al suelo.";
	bnw;
	say "Te observa desde su trono de huesos humanos y orcos.";
	bnw;
	say "Finalmente asiente brevemente con la cabeza.";
	bnw;
	clear the screen;
	close the statusline;
	image Figure of Success;
	if Musica-Sonando is true:
		play the sound of final in foreground;
	say line break;
	say line break;
	say "Volar es la felicidad.";
	bnw;
	say "Cuando termina el ritual te elevas en el aire y ruges en toda tu majestuosidad. Llenas el cielo del trueno de tu poder y del fuego de tu herencia.";
	bnw;
	say "Desatar tu poder, volar libre, aleja rápidamente tus pesadillas, aleja todo este tiempo de sufrimiento y de dolor.";
	bnw;
	say "¡Al fin libre!";
	bnw;
	say "¡Al fin!";
	bnw;
	say "Todo un largo y próspero futuro de felicidad te espera.";
	bnw;
	say "Montones de lugares que destruir, montones de guerreros humanos que 'asar' y sobre todo montones y montones de doncellas que devorar.";
	bnw;
	say "Se te hace la boca agua sólo de pensarlo... claro que, hay algo que aún te molesta un poco.";
	bnw;
	say "Seguro que el viejo Oo Drack no estará muy contento de saber que vas a devolver el Orgoonde al nirgomante humano, y probablemente enfurecerá al saber que no tenías ni la más mínima intención de ayudar a liberarlo, a restaurar la monarquía dragón y todo lo demás.";
	bnw;
	say "Pero organizar una revuelta contra el nigromante sería algo tan molesto y complicado, en comparación con la posibilidad de servirle y asar a sus enemigos...";
	bnw;
	say "Además... ¿a quién diablos le importan los viejos como Oo y sus cosas?";
	wait for any key;
	finalizar juego, con victoria.

Table of Sady Omu
numero		seleccion							respuesta								activado		activa			extra
0 [inicial]	--								"'Vaya, vaya', dice el nigromante, 'así que aquí es donde has estado todo este tiempo Uudrum'."				1		{1, 2, 3, 4}	the fake rule
1 [>0]		"Sí, mi señor, caí preso de un encantamiento de El Nigróh."		"'Maldito El Nigróh', dice el nigromante, 'la noche en la que empezamos esta guerra, escapó entre mis propias manos. De una forma estúpida, con la ayuda de un ridículo aprendiz. Cazamos a aquel aprendiz no muy lejos de aquí, junto con otros jóvenes que pretendían darme muerte, nada más y nada menos'."			0		{5}		the fake rule
2 [>0]		"Sí, nigromante, pero ahora me liberarás."				"Sady Omú suelta una desagradable carcajada, tras la que dice con una sonrisa: '¿y por qué iba a hacer semejante cosa por ti?'"		0		{10, 11}		the fake rule
3 [>0]		"Así es, el Poderoso Uudrum transformado en un mísero anillo."		"'¿Poderoso?', dice el nigromante, 'si no recuerdo mal los otros dragones tendían a llamarte el Glotón Dorado'."		0		{12}		the fake rule
4 [>0,6,7,8]	"Oh, Poderoso Señor, Rey de las Tinieblas, os ruego humildemente que me devolváis a mi forma orginal."		"'¿Ruegas?', pregunta el nigromante."					0		{9000}		the fake rule
5 [>1]		"En este tiempo en el que he estado preso, he aprendido mucho sobre los humanos. Puedo ayudaros contra ellos."	"'Realmente no eres muy listo, ¿no?', dice el nigromante, '¿acaso no soy yo un humano?'."											0		{6, 7, 8}		the fake rule
6 [>5]		"Oh, Poderoso Señor, vois mucho más que un humano."	"'Gracias', dice el nigromante, 'siempre lo he pensado así'."								0		{4}		the fake rule
7 [>5]		"Yo quiero decir... o sea, es que...."	"'Lo que queréis decir, es lo que quieren decir mucho de los vuestros', dice el nigromante con gran seriedad, 'que pensáis que esta guerra es para vosotros, para los dragones, que me ayudáis pero ya me traicionaréis cuando todo esté a vuestro favor. Sabandijas.'."			0		{4}		the fake rule
8 [>5]		"Tenéis razón, soy idiota."		"'Así es', dice el nigromante, '¿Y qué quiere este idiota?.'."											0		{4, 9}		the fake rule
9 [>8]		"Que me liberéis, volver a ser un dragón"	"'Ya', dice el nigromante, '¿y por qué iba a hacer semejante cosa por ti?'."									0		{10, 11}		the fake rule
10 [>2,9]		"Por que soy un soldado de tu ejército, uno muy importante."	"'Te sobrevaloras', dice el nigromante, 'montones de los tuyos me sirven y más me servirán, ¿qué tienes tú de especial?'."			0		{11, 12, 13}	the fake rule
11 [>2,9,14]	"Conozco vuestro secreto."		"'¿De qué hablas?', dice el nigromante mirándote con atención."											0		{17, 16, 19}	the fake rule
12 [>14,10]	"Soy el mejor, el más inteligente, el más fuerte, el más leal..."	"'Eres Uudrum...', dice el nigromante, '...el Lamentable, tal vez deba dejarte como estás. Parece una forma adecuada a tus capacidades'."											0		{4, 9002}		the fake rule
13 [>10]		"Me lo debéis, ¡os he servido fielmente!"	"'Yo no te debo nada', dice el nigromante despectivo."											0		{4, 9001, 14}	the fake rule
14 [>13]		"Aún así me liberaréis..."		"'No. No hay ninguna razón para ellos', contesta."		0		{11, 12, 15}	the fake rule
15 [>14]		"Si no lo hacéis lo lamentaréis"	"Ríe a carcajadas."	0	{16, 4}		the fake rule
16 [>15]		"Tenemos el dedal, tenemos el mosaico. Pronto nos rebelaremos, pero yo puedo evitaros todo eso si me liberáis ahora."			"'Interesante jugada por tu parte', dice el nigromante, 'Intersante'."											0		{9002}		the fake rule
17 [>14]		"Ya no tenéis poder real."		"'Eso es absurdo', dice el nigromante."			0		{18, 9002}	the fake rule
18 [>14]		"Habéis perdido aquello que os otorgaba el auténtico poder, lo que os ha llegado hasta donde estáis ahora."				"'¿El qué supuestamente?', pregunta el nigromante divertido."											0		{20, 21, 22, 23, 24, 25, 26}		the fake rule
19 [>14]		"No sois más que un farsante."	"'¿Qué? No dices más que tonterias', dice el nigromante."				0		{16}		the fake rule
20 [>14]		"Nosotros, los dragones."		"'¡Qué estupidez! No he perdido a los dragones', dice el nigromante."											0		{16}		the fake rule
21 [>14]		"Ursutap, vuestro mejor general."	"Ríe a carcajadas ante la idea."				0		{9002}		the fake rule
22 [>14]		"No tenéis el brazalete."		"'¿De qué ridículo brazalete habláis?', dice el nigromante."											0		{29, 30, 31, 32, 33}	the fake rule
23 [>14]		"Vuestra magia, os ha abandonado."	"'¿Estáis seguro de eso?', pregunta el nigromante."											0		{9002}		the fake rule
24 [>14]		"Vuestro hijo, él era toda vuestra fuerza y ahora está muerto."		"'¡No mentes a mi hijo, maldita lagartija!', grita el nigromante."									0		{9002}		the fake rule
25 [>14]		"El colgante del rubí, vuestro foco de poder."	"'¡Qué estupidez! No sé de que colgante me habláis', dice el nigromante."										0		{28}		the fake rule
26 [>14]		"La aguja del poder."			"'Me habéis descubierto... sin la... aguja... estoy desvalido', contesta el nigromante abriendo mucho los ojos."						0		{27}		the fake rule
27 [>14]		"Yo puedo devolveros ese objeto."			"'¿Realmente lo haríais?', pregunta el nigromante, 'aún así no os devolveré a vuestra forma original'."	0		{9002}		the fake rule
28 [>14]		"Lo habéis perdido. Lo encontré en el pantano. Sin él no sois nada."	"'Me habéis descubierto... sin el... colgante... estoy desvalido', contesta el nigromante abriendo mucho los ojos."			0		{9002}		the fake rule
29 [>14]		"Hablo del brazalete con serpientes."	"''Creo que os lo estáis inventado todo', contesta el nigromante abriendo mucho los ojos."							0		{34}		the fake rule
30 [>14]		"Sabéis muy bien de lo que hablo."		"'Creo que os lo estáis inventado todo', contesta el nigromante abriendo mucho los ojos."								0		{34}		the fake rule
31 [>14]		"Hablo del brazalete que os robó Ursutap."	"'Ursutap no robó nada, mentís.', contesta el nigromante algo nervioso."	0	{34}	the fake rule
32 [>14]		"Lo sabéis bien. Pude sentir su poder al mirarlo."	"'¿Qué sabéis?', pregunta el nigromante inquieto."	0		{35, 36}		the fake rule
33 [>14]		"El brazalete rojo, del poder de la sangre."	"'Me habéis descubierto... sin el... brazalete... estoy desvalido', contesta el nigromante."								0		{9002}		the fake rule
34 [>14]		"En absoluto, el brazalete existe y lo he visto."	"'¿Dónde?', pregunta el nigromante."		0		{36, 38}		the fake rule
35 [>14]		"Sé donde está, sé quién lo robó, sé cómo se llama."	"'¡Hablad!', exige el nigromante inquieto."											0		{36, 39}		the fake rule
36 [>14]		"Lo tiene una urraca en su nido." 		"'¿Una urraca?', pregunta el nigromante."		0		{37}		the fake rule
37 [>14]		"Sí, una urraca, blanca y negra, junto a un río, en las tierras de Guzha."									"'Entiendo y entonces...', inquiere el nigromante."		0		{9003}		the fake rule
38 [>14]		"No pienso deciros eso."	"'Sois demasiado insolente', dice el nigromante, 'o mentís'."		0		{35}		the fake rule
39 [>14]		"Os diré como prueba su nombre, pero nada más hasta que me liberéis de este infierno, de este hechizo, de esta maldición."			"'Decid el nombre', exige el nigromante."		0		{9004, 9005, 9010, 40, 9006, 9007, 9008, 9009, 9011, 9012}		the fake rule
40 [>14]		"El Orgoonde."	"'¿Dónde está, tenéis que entregármelo!', exige el nigromante."		0		{9041}		the fake rule
9041 [>14]	"Liberadme."	"'¡Maldita lagartija gorda!', grita el nigromante sumido en un ataque de ira."												0		--		the happy end rule
9000 [>4]	"Así es, Poderoso Señor, Rey de las Tinieblas, humildemente os lo ruego."	"'Apestosa lagartija glotona', dice Sady Omú, 'eres patética. Ya me encargaré de vos más adelante'."		0		--	the sady omu caja rule
9001 [>13]	"¡Maldito humano! ¡Claro que me lo debéis! ¡Así como deberíais arrodillaros ante vuestros superiores los dragones!"	"'Despreciable lagartija', espeta el nigromante"				0		--	the sady omu mata rule
9002 [>16]	"Vuestra única opción es ayudarme. Liberadme ahora."	"'Quedas liberado...', dice el nigromante, '...de tu lamentable vida'."								0		--	the sady omu mata rule
9003 [>16]	"Vuestra única opción es ayudarme. Liberadme ahora."	"'Imbécil, me has dado toda la información arrasaré esa región sólo por si acaso', dice el nigromante, 'y tú no tendrás nada'."		0		--	the sady omu mata rule
9004 [>16]	"El Diabelum."	"'Maldito mentiroso, casi logras engañarme', dice el nigromante, 'no tendrás otra oportunidad de burlarte de mí'."								0		--	the sady omu mata rule
9005 [>16]	"El Omuhur."	"'Maldito mentiroso, casi logras engañarme', dice el nigromante, 'no tendrás otra oportunidad de burlarte de mí'."								0		--	the sady omu mata rule
9006 [>16]	"El Ork'oshde."	"'Maldito mentiroso, casi logras engañarme', dice el nigromante, 'no tendrás otra oportunidad de burlarte de mí'."								0		--	the sady omu mata rule
9007 [>16]	"El Poderoso Rerhum."	"'Maldito mentiroso, casi logras engañarme', dice el nigromante, 'no tendrás otra oportunidad de burlarte de mí'."							0		--	the sady omu mata rule
9008 [>16]	"El Odrack."	"'Maldito mentiroso, casi logras engañarme', dice el nigromante, 'no tendrás otra oportunidad de burlarte de mí'."								0		--	the sady omu mata rule
9009 [>16]	"El Brazalete Serpiente."	"'Maldito mentiroso, casi logras engañarme', dice el nigromante, 'no tendrás otra oportunidad de burlarte de mí'."								0		--	the sady omu mata rule
9010 [>16]	"El Oskundah."	"'Maldito mentiroso, casi logras engañarme', dice el nigromante, 'no tendrás otra oportunidad de burlarte de mí'."								0		--	the sady omu mata rule
9011 [>16]	"El Bordhâin Malekh."	"'Maldito mentiroso, casi logras engañarme', dice el nigromante, 'no tendrás otra oportunidad de burlarte de mí'."								0		--	the sady omu mata rule
9012 [>16]	"El Organiûm."	"'Maldito mentiroso, casi logras engañarme', dice el nigromante, 'no tendrás otra oportunidad de burlarte de mí'."								0		--	the sady omu mata rule

[ Se pone al final porque si no lo vuelve todo loco al documentar ]
[
Table of MensajesTesoro
table of topic
table of MensajesTesoroNoVeo
table of MensajesTesoroDecorado]



Part 9 - Pasados al final

Chapter 0 - Parsing

Section 5 - Cosas no incluídas en 'todo'

Rule for deciding whether all includes scenery: it does not. 
Rule for deciding whether all includes backdrops: it does not. 
Rule for deciding whether all includes fixed in place: it does not. 
Rule for deciding whether all includes partdecoration: it does not.
Rule for deciding whether all includes patroller: it does not. 
Rule for deciding whether all includes grilletes: it does not. 

Section 6 - Preferencias generales

Does the player mean doing something with a carried thing: it is very likely.
Does the player mean doing something with a cadaver: it is likely.
Does the player mean doing something with a cadaver: it is likely.
Does the player mean doing something with a fixed in place thing: it is unlikely.
Does the player mean doing something with a scenery thing: it is very unlikely.
Does the player mean doing something with a backdrop: it is very unlikely.
Does the player mean doing something with anillo: it is very unlikely.
Does the player mean doing something with matched scenery: it is very unlikely.


