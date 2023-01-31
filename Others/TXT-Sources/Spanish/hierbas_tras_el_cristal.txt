"Hierba tras el cristal" by Johan Paz (in spanish)

[-------------------------------------------------

COMENTARIO SOBRE LOS COMENTARIOS

Con este relato intentaré crear además un 
listado que pueda usarse como ejemplo, no
porque este relato me parezca especialmente
relevante a modo de ejemplo, si no porque 
considero que los ejemplos de uso de I7 son 
realmente necesarios en estos momentos.

Para ello seré cuidadoso con el uso de las 
secciones e intentaré ser coherente en el uso
de comentarios.

Los comentarios que usen líneas de:

==============================

representarán cabeceras de secciones muy 
diferenciadas, mientras que los que usen líneas 
de:

-------------------------------------------------

serán comentarios muy relevantes pero 
desestructurados. Finalmente los comentarios
 sin separador pero con letras mayúsculas
servirán para identificar objetos relativos al 
relato, ya sean personajes, items o localidades.

-------------------------------------------------]

[==============================

	Hierba tras el cristal

	Por Johan Paz 2007 y revisado en 2015

	Este relato surgió con motivo de la
	tercera Minicomp, sobre la que se 
	puede leer información en:

	http://www.wikicaad.net/III_Minicomp

	Lamentablemente no es ni la mitad de
	la mitad de lo que debería... que le
	vamos a hacer.
	
==============================]

[==============================

	Librerías y opciones

==============================]

Include Simple Graphical Window by Emily Short.
Include Aki Blue Lacuna by Johan Paz.
Include Glulx Boxed Quotation by Eliuk Blau.
Include Status Line Removal by Emily Short.
Include Multiple Sounds by Massimo Stella.


Use full-length room descriptions.
Use no scoring.
Use boxed quotation without frame.

Release along with cover art ("Hierba tras el cristal"), a website, an interpreter, the source text.

[==============================

	Referencia bibliográfica

==============================]
The story headline is "'Una historia sobre cuando estando solo querrías un poco de soledad.'".
The story genre is "Ciencia Ficción".
The release number is 2.
The story description is "¿Qué puedes hacer cuando sólo puedes hablar y hablar es insuficiente?.".
The story creation year is 2007.

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

Figure of Cabina is the file "cabina.png".
Sound of Viento is the file "wind.ogg".
Sound of Lemur is the file "lemur.ogg".


Section 2 - Figuras en el movimiento

To image (fig - a figure name):
	now currently shown picture is fig;
	follow the current graphics drawing rule.	

Section 3 - Inicio

The graphics background color is "$FFFFFF".
[The graphics window pixel count is 525.]
The graphics window proportion is  40.

The graphics window construction rule is not listed in any rulebook.

Graphics window position is g-right.

Before looking for the first time:
	now the current graphics drawing rule is the up right scaled drawing rule;
	now currently shown picture is Figure of Cabina;
	play sound of viento in background with loop;
	build graphics window;
	follow the current graphics drawing rule.
	
Before looking more than once:
	follow the current graphics drawing rule.

[==============================

	El relato

==============================]
Part 1 - Reglas generales modificadas

Chapter 1 - Utilidades o librerías integradas

Section 0 - Para quitar el retorno de carro en los enlaces

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
		say player's command;
		say command clarification break.
		
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

Section 2 - Objetos que traen memoria

[--------------------------------------------------

La idea es incluir una clase nueva de objetos 
que contengan:

	- Un contador del número de veces 
	   que son examinados
	- Una tabla en la que se incluyen 
	   mensajes y/o reglas a activar
	   cuando se alcanza el contador
				   que corresponda

--------------------------------------------------]

[

CLASE: Decorado activo

Así como sus definiciones y reglas asociadas

]
A decorado activo is a kind of thing. 
A decorado activo is always scenery.
A decorado activo has a number  called veces examinado.
The veces examinado of a decorado activo is usually 0.
A decorado activo has a table-name called comportamiento.
The comportamiento of a decorado activo is usually Table of comportamiento por defecto de decorado activo.

[DEFINICIÓN: Una definición para saber fácilmente si hay algo que mirar
en las tablas o no]
Definition: a decorado activo (called el-decorado) is reglado if the number of filled rows in the comportamiento of el-decorado is greater than 0.

[REGLA para modificar el número de veces examinado]
After examining a decorado activo (called observado):
	increase the veces examinado of observado by 1.

[REGLA de sustitución de examinar]
Instead of examining a decorado activo (called observado):
	[Si la tabla está vacía hacer lo de siempre]
	if observado is not reglado, continue the action;
	let N be veces examinado of observado;
	increase N by 1;
	[Si hay algo en la tabla buscar el valor actual]
	if there is a regla corresponding to a vez of N in comportamiento of observado
	begin;
		[Existe, lo escogemos y ejecutamos la regla]
		choose row with a vez of N in comportamiento of observado;
		follow regla entry;
		increase the veces examinado of observado by 1;
	otherwise;
		[No hay trigger, hacer lo de siempre]
		continue the action;
	end if.

[TABLA POR DEFECTO de eventos disparados ante 
un número de examinados de un decorado activo]
Table of comportamiento por defecto de decorado activo
vez		regla
a number		a rule


[REGLA para coger un escenario]
Instead of taking a decorado activo (called cogido):
	if the seccion is visible
	begin;
		say "Normalmente podría arracancar cualquier cosa de cualquier soporte con mis [j]manos[x]. Retorcer barras de acero y todo ese tipo de cosas, pero ahora... mejor ni intentarlo.";
	otherwise;
		try going east;
	end if.

Section 3 - Partes del cuerpo

[

De momento serán solo decorados activos clasificados
de forma diferente.

]
A parte del cuerpo is a kind of decorado activo.

Section 4 - Objetos que sólo están reflejados en el extintor, pero no realmente

[
	Esta sección no me gusta mucho pero es la forma que se
	me ha ocurrido para lograr que no se puede acceder a
	aquello que debe poderse ver pero no está accesible.

	La forma correcta de hacerlo es cambiando las reglas 
	de acceso, pero no tengo tiempo de hacerlo correctamente.
]
A thing can be reflexed. A thing is usually not reflexed.

Instead of doing anything except taking or examining or pointing or metacommanding with a reflexed thing (this is the reflection rule):
	try taking the noun.

Instead of taking a reflexed thing:
	if the seccion is not visible
	begin;
		try going east;
	otherwise;
		say "Ya me gustaría poder hacerlo, pero [el noun] está fuera de mi alcance.";
	end if.

The reflection rule is listed first in the instead rules.

Section 5 - Ajuste de AKI

Table of Keyword Interface messages (amended)
KI message	KI output 
not-a-verb-I-recognise	"Empiezo a decir y pensar tonterías. Mejor que solucione esta situación pronto."

When play begins:
	now give-explanation is true.

Part  2 - Hierba tras el cristal

Chapter 0 - El comienzo

[--------------------------------------------------

   Regla activada al iniciar el juego

--------------------------------------------------]
When play begins:
	create the midground channel;
	set the foreground volume to 2;
	set the background volume to 2;
	set the midground volume to 2;
	poner cuadro de inicio;
	say "¿Quieres ver la introducción?";
	say "Contesta sí o no>>";
	if the player consents:
		clear the screen;
		contar inicio de la historia;
	clear the screen;
	now the description of the player is "Todo me duele. ¡Por lo demás tengo un aspecto destripante!. Mi dinero me ha costado estar jodidamente buena. Un dinero bien gastado si se tiene en cuenta que además puedo tirar de un furgón de carga con mis propias [j]manos[x].".

[FRASE: Cuadro de inicio con el nombre del relato y fecha]
To poner cuadro de inicio:
	display the boxed quotation
	"Hierba tras el cristal



	Un relato de Johan Paz.
	Año 2007. Revisado en 2015.
	Multimedia en 2016.";
	show the current quotation.

[FRASE: Introducción que relata el despertar de Layna]
To contar inicio de la historia:
	relatar fragmento en Table of Historia Inicial de Layna, limpiando pantalla.

[HISTORIA: El fragmento inicial]
Table of Historia Inicial de Layna
frase
"Dolor."
"Bueno, lo que ahora llamo dolor, que no es otra cosa que un montón de indicadores fluctuantes que me dicen que algo anda mal, muy mal..."
"La verdad es que tampoco es tan diferente a lo que antes llamaba dolor. Es igual de molesto, perturbador y ni siquiera he ganado gran cosa en cuanto a precisar que es lo que realmente anda mal. A fin de cuentas, cuando las cosas van realmente mal todo duele al mismo tiempo."
"Céntrate, imbécil."
"¿Qué es lo último... ah, sí, estaban esos jodidos xenomorfos infectando la nave.... obligué al resto del equipo a escapar en la nave auxiliar y me quedé a acabar con esos mierdas... muy heroica, imbécil, y también muy heroico Errezeta... pobre Errezeta... [line break][line break]Esto debe ser lo que ha quedado del bote salvavidas. Sin la nave auxiliar no había nada más para salir de aquel infierno en llamas. Odio, odio, odio usar los botes salvavidas, más que salvarte la vida es como arrojarla a una cloaca dentro de una botella, la cloaca acabará en el mar y el mar siempre te lleva a una costa... una costa muy lejana. Sólo que las costas lejanas en el espacio suelen ser muy, pero que muy lejanas, y no suelen ser muy amigables. De hecho casi todas las costas en el espacio suelen conllevar una muerte espantonsa y muy dolorosa. Tanto en el sentido antiguo como en el sentido nuevo del dolor."
"Veamos. El bote está destrozado. Es una suerte contar con un cuerpo cibernético diseñado para derribar edificios y que éstos te caigan encima de vez en cuando. Eso la hace a una bastante difícil de matar. Estoy respirando y esto... es... aire del exterior, así que he debido llegar a una de esas extrañas 'costas' en el espacio en donde se puede vivir. Tal vez sea una de esas costas llenas de nativos amables y muy musculosos... muy musculosos..."
"Céntrate."
"Lo único que se ve tras el parabrisas del bote es hierba. Hierba tras el cristal."
"[italic type]Agrostis gigantea, de la familia de las Poaceae. Una hierba alta de hasta 2 metros de alto y unos 10 centímetro de ancha. Frecuente en algunas colonias humanas, útil para forrajeo de diversos ganados. Requiere para su polinización la presencia de algunas de las polillas de la familia...[roman type][line break][line break]¡Eh! ¿quién eres?"
"[italic type]Reformule la pregunta[roman type][line break][line break]La voz... ¿quién es?"
"[italic type]Módulo de información LM-235. Número de serie: 89RT-ZQ128. Instalado durante revisión general de fecha...[roman type][line break][line break]¡Callate! ¿Por qué está hablando sin haber solicitado una consulta?"
"[italic type]Datos no disponibles, se puede especular con la posibilidad de que un fallo general en el neocortex auxiliar debido a la abrupta...[roman type][line break][line break]¡Cállate![line break][line break]Justo lo que me faltaba para completar un estupendo día, un accesorio parlanchín enloquecido..."

Chapter 1 - El Lugar

[VARIABLE: Contador para ver la cabina]
ContadorDeCabina is a number that varies.

[La iniciamos]
When play begins, now ContadorDeCabina is 0.

[La modificamos tras cada mirar]
After looking when the location is cabina, increase ContadorDeCabina by 1.

[LOCALIDAD: La cabina del bote salvavidas. 

Es la única localidad de todo el relato]
La cabina de la nave is a room. 
[The msjSiNoVesDecoracion of cabina is "Miro a un lado y a otro, pero no veo nada más que destrozos y cosas ennegrecidas.".]
The description of cabina is "[if ContadorDeCabina is 0]El [j]bote[x] salvavidas es más que un [j]traje[x] espacial tan sólo en la justa medidad para poder llamarlo 'nave'. Y de ninguna manera se le podría calificar de medio de transporte. Decir que se trata de un [j]ataúd[x] dotado de la última tecnología para tener un entierro espacial bastante lujoso en vida sería mucho más apropiado. Claro que decir que ESTE bote tiene la última tecnología, sería casi como decir que es un medio de transporte. Así que el hecho de haber logrado aterrizar 'en alguna parte' y no haberme incinerado en la reentrada, debería consolarme de que todo parezca [j]negro[x] y retorcido.[otherwise]Es evidente que el [j]bote[x] salvavidas no va a sacarme de este lugar, está destrozado.[end if] El [j]parabrisas[x] parece más o menos intacto. [if ContadorDeCabina is 0]Los [j]controles[x]... bueno, la verdad es que no sé si llamarlos ya así teniendo en cuenta que la parte delantera del [j]asiento[x] y lo que parece un [j]extintor[x] están empotrados más o menos en el centro de lo que eran los [j]indicadores[x].[otherwise]Los [j]controles[x] ya no son controles, ahora son una masa retor... digamos que... que son el soporte improvisado y muy poco adecuado de un [j]extintor[x] despanzurrado y vacío.[end if] [if ContadorDeCabina is 0]Un jodido desastre. Es como si el mamón del [j]bolillero[x] Ramírez hubiese pasado por aquí con su habitual habilidad. [end if][if ContadorDeCabina is less than 4]Todo lo demás tiene la misma pinta de... estar a punto de ser reciclado... concienzudamente. [end if][if the seccion is visible]Una sección del [j]fuselaje[x] se ha desprendido atrapando tus pies y la parte baja de tus [j]piernas[x].[end if]".
The printed name of cabina is "[if ContadorDeCabina is 0]La minúscula cabina del bote salvavidas[end if][if ContadorDeCabina is less than 3 and ContadorDeCabina is not 0]La ennegrecida y frustrante cabina del bote salvavidas[end if][if ContadorDeCabina is greater than 2]La cabina[end if]".

[--------------------------------------------------

  Objetos de escenario y examinar coordenadas:

--------------------------------------------------]

Instead of examining a direction:
	say "Mire a donde mire solo veo un fundido [j]bote[x] salvavidas requemado. Bueno también está la mierda de [j]hierba[x] tras el [j]cristal[x].".

[

DECORADOS ACTIVOS

]

[DECORADO ACTIVO: Paredes]
Las paredes is a decorado activo in cabina. 
The description of paredes is "Es solo [j]metal[x], [j]cristal[x] y [j]plástico[x] listo para ser reciclado, en hermosos RZs si tienen la suficiente suerte.".
The paredes is plural-named.
Understand "pared" as paredes.
The comportamiento of paredes is Table of CompParedes.

Table of CompParedes
vez			regla
1			the pared primera rule
2 			the pared segunda rule
3 			the pared tercera rule

This is the pared primera rule:
	say "No es que un [j]XMRT[x] tenga [j]paredes[x] 'exactamente', es demasiado pequeño. O sea, básicamente es una tapa que cubre algo en lo que te tumbas. Sí, eso es, justo como en un [j]ataúd[x].".

This is the pared segunda rule:
	say "La verdad, es que si observamos las [j]junturas[x] con cuidado... nah, todo está hecho un desastre.".

This is the pared tercera rule:
	say "No hay mucho que mirar. A ver, recordemos. El [j]parabrisas[x], los [j]controles[x], el [j]asiento[x] del... ejem... conductor, el [j]compartimiento[x] trasero que no puedo alcanzar y... lo demás está fuera, el motor, la aviónica en general... aunque supongo que todo eso estará también completamente destozado.".
	
Las junturas is a decorado activo in cabina.
The description of junturas is "No es que tenga exactamente junturas, o sea sí, el [j]XMRT[x] tiene... bueno, tenía muchas piezas unidas, pero ya es todo un amasijo de [j]metal[x] fundido, más que nada... no, más que nada, no, ahora es nada de nada.".

The junturas is plural-named.
Understand "juntura" as junturas.

[DECORADO ACTIVO: Hierba]
La hierba is a decorado activo in cabina. The hierba is reflexed. [Aunque no lo es nos sirve]
The description of hierba is "Fuera de la nave parece haber sólo una extensa pradera... más bien
debería decir que un jodido bosque... de una ridícula [j]hierba[x] amarronada demasiado alta y demasiado
delgada.". 
Understand "agrostis" or "gigantea" or "hierbas" or "agostis" or "pradera" or "bosque" as hierba.

[DECORADO ACTIVO: Asiento]
El asiento is a decorado activo in cabina. The description of asiento is "Se supone que con sólo sentarse en ella esta cosa debe abrazar al ocupante hasta que acabe el viaje (lo que por lo general quiere decir que es el último abrazo que recibirá el 'ocupante') y que debe permanecer fijo en su lugar todo el trayecto. No parece que haya estado muy 'fijo' durante el trayecto, aunque ahora que está empotrado en la [j]consola[x] de control, ocupando casi todo el espacio que deberían ocupar los [j]indicadores[x] es probable que esté bastante 'fijo'.".
Understand "silla" or "sillón" or "asiento" as asiento.

[DECORADO ACTIVO: Traje]
El traje is a decorado activo in cabina. The description of traje is "Aunque es sólo un poco más ancho que uno, el [j]bote[x] no es un traje espacial. Ni tampoco cabrías aquí dentro con uno de esos puestos. Es otra de las ventajas de los botes salvavidas, que si se rompe algo ni siquiera puedes llevar un traje de vacío... aunque pensándolo bien, es preferible una muerte rápida.".

[DECORADO ACTIVO: Negro]
El negro is a decorado activo in cabina. The description of negro is "Todo está negro. Cubierto de hollín, y eso las cosas que simplemente no están retorcidas o derretidas. Parte de la reentrada ha ocurrir cuando ya hubiese alguna grieta en el [j]parabrisas[x]. ¡Joder! Espero que no se me haya derretido la puta [j]cara[x]. Me costó horas y horas escoger la que llevo ahora.".
Understand "negro" or "quemado" or "hollin" or "negrura" or "retorcido" or "metales" or "ceramicas" or "plasticos" or "masa" or "desastre" or "metal" or " ceramica" or "plastico"or "lo negro" or "tostadora" as negro.
The negro is proper-named.
The printed name of negro is "todo lo negro".

Instead of rubbing negro:
	say "Son demasiadas cosas. Tal vez se puedan ir limpiando una a una.".

[DECORADO ACTIVO: Indicador]
El indicador is a decorado activo in cabina. The description of indicador is "No queda gran cosa de los indicadores, lo que hay es un [j]extintor[x] despanzuarrado ocupando su lugar.".
Understand "indicadores" or "indicador" or "medidores" or "comunicador" as indicador.

[DECORADO ACTIVO: La nave en sí]
El bote is a decorado activo in cabina. The description of bote is "Se trata de un viejo XMRT. Casi todo el mundo que está en estas historias los conoce como los 'eXtraMortales'. [if the veces examinado of bote is 0]¡Chirriada! Estoy pensando tonterías, ERA un XMRT, ahora es sólo un puto amasijo de [j]metales[x], [j]cerámicas[x] y [j]plásticos[x] demasiado pasado por la tostadora de la reentrada... por ambos lados.[otherwise]Y para resumirlo... está tostado, tan útil como un tío cachas castrado, y con el mismo nivel de inteligencia.[end if]".
Understand "bote" or "salvavidas" or "nave" or "ataúd" or "medio" or "transporte" or "xmrt" or "xmrt-345-qp" or "cabina" as bote.

[DECORADO ACTIVO: Parabrisas]
El parabrisas is a decorado activo in cabina. The description of parabrisas is "Una cubierta de poliresina cerámica o policerámica resinosa o como sea, capaz de soporta grandes temperaturas... si está intacta. Que no es el caso, claro. Hay un enorme agujero en la parte derecha por donde asoman incluso algunos brotes de hierba alta del exterior."
Understand "parabrisas" or "cristal" or "ventana" or "cubierta" as parabrisas.
The parabrisas is reflexed.
The comportamiento of parabrisas is Table of CompParabrisas.

This is the primera visión del parabrisas rule:
	relatar fragmento en Table of descripcion inicial del parabrisas.

Table of descripcion inicial del parabrisas
frase
"Es un parabrisas..."
"[italic type]...realizado en serie para los módulos de salvamenteo [j]XMRT[x][italic type], construído con lo que en su momento fue un prodigioso descubrimiento: la poliresina sobre base de [j]cerámica[x][italic type] de wolframio molecular, flexible pero duro, y extremadamente resistente al calor...[roman type][line break][line break]...con un jodido agujero..."
"[italic type]...que teniendo en cuenta las marcas de propagación, debió empezar como una micro [j]grieta[x][italic type], un impacto de un grano de arena lanzado a velocidades siderales tal vez...[roman type][line break][line break]...en todo el centro."


Table of CompParabrisas
vez	regla
1	primera visión del parabrisas rule

[DECORADO ACTIVO: Controles]
Los controles is a decorado activo in cabina. The description of controles is "Se supone que contienen todo lo necesario para controlar el [j]bote[x] salvavidas. O sea, prácticamente nada: unos medidores de cuándo te vas morir, un comunicador de demasiada corta distancia, y el botón de lanzar y rezar -lanza el bote y reza... que ayuda vas a necesitar toda la posible.[line break][line break]En cualquier caso no queda nada de todo eso, está todo aplastado[if controles is sucio], [j]negro[x][end if]. Ya no es casi [italic type]nada[roman type], ahora lo es de forma completa. Eso sí, hay un [j]extintor[x] despamzurrado justo en el centro de lo que fueron los controles.".

Understand "soporte" as controles.

[DECORADO ACTIVO: Compartimiento]
El compartimiento is a decorado activo in cabina. The description of compartimiento is "[if the extintor is sucio]Desde donde estoy es imposible verlo, está justo detrás del asiento, necesitaría [j]salir[x] para verlo o [j]girarme[x] o tener un espejo, ya puestos.[otherwise]Ahora puedo verlo reflajado en el extintor, en su interior se puede ver un [j]cilindro[x] de metal con un único adorno, el león tricéfalo de la Naykho Corp. [end if]". The compartimiento is reflexed.

[DECORADO ACTIVO: Agujero]
El agujero is a decorado activo in cabina. The description of agujero is "Solo tiene un par de palmos, no creo que quepa por ahí. Fuera del [j]parabrisas[x], especialmente a través el [j]agujero[x] sólo se ve un 'bosque' de las gigantescas [j]agostis[x] esas o como se llamen.".
Understand "grieta" as agujero.
The comportamiento of agujero is Table of CompAgujero.

This is the primera visión del agujero rule:
	relatar fragmento en Table of descripcion inicial del agujero.

Table of descripcion inicial del agujero
frase
"En el fondo no es demasiado grande, un par de palmos. Si se ha creado al entrar en la atmósfera se explica que todo esté ennegrecido, aunque... si se hubiese creado antes de la reentrada, ahora el bote solo sería un pedazo de hielo muy tecnificado. Un jodido cometa a la deriva en el espacio con unas piernas de lujo."
"[italic type]Lo que se ve a través de ese agujero son Agrostis gigantea.[roman type][line break][line break]Ya lo dijiste antes, ¿y eso qué importa?"
"[italic type]Se trata de una planta de colonización humana, de forma que...[roman type][line break][line break]...este planeta tiene que estar habitado![italic type][line break][line break]En realidad sólo significa que ha sido terraformado por humanos, no necesariamente...[roman type][line break][line break]¡Oh, cállate!"

Table of CompAgujero
vez	regla
1	primera visión del agujero rule


Chapter 2 - El jugador

[--------------------------------------------------

  Tratamiento del fuselaje que atrapa
  a Layna.

--------------------------------------------------]

[Lo primero es traerlo a la cabina -hacerlo 
relevante- en cuanto se intenta cualquier 
cosa que no sea mirar]
Instead of doing anything except pointing or waking or singing or thinking or looking or examining or taking inventory or rubbing or metacommanding or topiccommanding or gasking or asking or telling or touching when the seccion is not in cabina and the current action is not asking something about (this is the descubre fuselaje rule):
	relatar fragmento en Table of Descubriendo el Fuselaje;
	say "[italic type]Está bien. Sólo intento ser útil[roman type].";
	now seccion is in cabina.

The descubre fuselaje rule is listed first in the instead rules.

[HISTORIA: El fragmento de descubrir el fuselaje]
Table of Descubriendo el Fuselaje
frase
"¡Joder!"
"No... ¡no puedo mover las [j]piernas[x]! Una sección del [j]fuselaje[x] está aplastándolas, apresándolas. ¡Me inmoviliza!"
"¡Puta mierda! Esas [j]piernas[x] son de la mejor calidad. Me costaron una enorme cantidad de créditos, no solo son jodidamente hermosas, deberían poder levantar varios quintales sin ningún esfuerzo. ¡Por qué fundida razón no son capaces de apartar un ridículo pedazo de fuselaje?"
"[italic type]No quisiera entrometerme, pero probablemente esta forma de aterrizaje tan brusco haya provocado un funcionamiento inadecuado en los seudo-músculos. No me es posible ver los identificadores de serie de los comp...[roman type][line break][line break]Si vas a ser tan útil cállate. Lo que estás diciendo es evidente..."
"¡Oh, joder![italic type][line break][line break]¿Qué..[roman type]"
"¡Oh, no, no, no... mis brazos tampoco pueden apartar el [j]fuselaje[x]!. No tienen fuerza. Incluso tiemblan con el esfuerzo.[line break][line break][italic type]He de decir que, este nuevo síntoma de debilidad muscular, coincide con mi sugerencia sobre el mal funcionamiento de los seudo-músculos. Es probable que la reentrada con un parabrisas en mal estado haya provocado un recalentamiento extremo, lo que explicaría el aspecto ennegrecido del interior de esta cápsula de salvamento del modelo XMRT-345-QP, una edición muy fiable y muy utilizada durante las guerras...[roman type][line break][line break]¡Callate!"
"[italic type]Sólo intentaba explicar que eso también...[roman type][line break][line break]¿Y ahora qué?[line break][line break][italic type]...dado que el gradiente de temperatura y las características de los materiales...[roman type][line break][line break]Esto pinta francamente mal. No puedo moverme y nadie vendrá a sacarme.[line break][line break][italic type]...los circuitos del neocortex auxiliar, en concidiciones atmosféricas normales...[roman type][line break][line break]Primero se agotarán las baterías y luego tendré la más lenta y desagradable de las muertes mientras la parte orgánica del cerebro agoniza de hambre y sed.[line break][line break][italic type]...claro, que si hemos de suponer una trayectoria desconocida...[roman type][line break][line break]¡Callate!"

[Cualquier movimiento quedará de todas formas impedido en presencia del fuselaje]
Instead of going or exiting or entering or turning or jumping when the seccion is in cabina:
	say "Es imposible moverse de aquí, incluso girarme, mientras me tenga apresada esta jodida [j]cosa[x]...";
	if Itk is visible, say "[line break] El [j]mono[x] salta animando ante mis intentos de moverme y grita: 'Soak! Itk! Oook!'.".

[Suprimimos el TODO de una manera un poco extravagante]
Todo is a decorado activo in cabina.

Instead of doing anything to Todo (this is the todo rule), say "Prefiero considerar las cosas de una en una. O aplastarlas de una en una. O incluso reventarlas de una en una. Pero de una en una.".

The todo rule is listed first in the instead rules.

[VERBO APARTAR: simplemente lo ponemos como sinónimo de golpear, es igual de útil]
Understand "apartar  [a thing]" or "aparta [a thing]" as attacking.

[VERBO DOBLAR: simplemente lo ponemos como sinónimo de golpear, es igual de útil]
Understand "doblar  [a thing]" or "dobla [a thing]" as attacking.

[ACCION AYUDA: para mosquear]
Helping is an action applying to nothing.
Understand "ayuda" as helping.
Carry out of helping:
	say "[bold type]** No hay ayuda integrada en esta ficción interactiva. Revisa la documentación adjunta, sigue probando y lee con cuidado, prueba a usar las palabra resaltadas **[roman type]";
	say line break.

[ACCIÓN RETORCER: la hacemos igual que golpear]
Instead of squeezing something:
	try attacking the noun.

[ACCIÓN MOVER LAS PIERNAS: aclarar que no pueden salir]
Instead of pulling or pushing las piernas:
	say "Intento mover las [j]piernas[x], pero siguen atrapadas.";
	if Itk is visible, say "[line break]El [j]mono[x], al ver mis esfuerzos, golpea el [j]fuselaje[x] y dice: 'Oo lami lami noop'.".

[ACCION MOVER PARTES DEL CUERPO: poner frase graciosilla]
Instead of pulling or pushing a parte del cuerpo:
	say "Muevo [el noun], lo que no me ayuda mucho.";
	if Itk is visible, say "[line break]El [j]mono[x] repite exactamente los mismos movimientos que yo y parece muy divertido... ven para acá monito y verás...".

[ACCIÓN TIRAR: de nuevo como golpear]
Instead of pulling or pushing something:
	try attacking the noun;
	if Itk is visible, say "[line break]El [j]mono[x] también lo intenta. Fracasa y se vuelve. Sonríe y dice: 'Oo lami noea Itk oo.'.".

[Caso especial para el extintor]
Instead of pulling or pushing the extintor:
	say "Intento mover el extintor, tal vez haya algo de los controles que pueda ser... pero nada... no hay manera.";
	now the extintor is tocado;
	if Itk is visible, say "[line break]El [j]mono[x] también lo intenta. Fracasa y se vuelve. Sonríe y dice: 'Oo lami noea Itk oo.'.".

[ACCIÓN PENSAR: decir algo nuevo...]
Instead of thinking:
	say "Bah... para eso ya encontraré mejor momento.".

[ACCIÓN CANTAR: alguna broma]
Singing is an action applying to nothing.
Understand "cantar" or "canta" as singing.
Instead of singing:
	say "Llevo instalado un complemento auditivo de alta sensibilidad, así como un extra al neo-cortex para análisis de altas y bajas frecuencias... pero el extra de sensibilidad musical era demasiado caro, así que nada de cantar.";
	if Itk is visible, say "El mono parecía muy interesado. ¿Querrá que cante?".

[ACCIÓN SEÑALAR: una completamente nueva]
Pointing is an action applying to one thing.
Selfpointing is an action applying to nothing.
Understand "señalar" or "señala" or "señalo" or "senala" or "senalar"or "senalo" as "[point]".
Understand "[point] [a visible thing]" or "[point] a [a visible thing]" as pointing.
Understand "[point] a mi" or "señalarme" or "señalame" or "me señalo" as selfpointing.

Carry out of selfpointing:
	say "Me señalo.";
	say line break;
	if Itk is visible
	begin;
		say "El [j]mono[x] señala y dice: 'Itk. Lami lami oo.'";
	otherwise;
		say "Lo que no es más que una redomada estupidez, todo sea dicho.";
	end if.

Carry out of pointing:
	if Itk is visible
	begin;
		say "Señalo [al noun] con diversos gestos y el extraño [j]mono[x] mira con atención, como si quisiese interpretar mis gestos.";
	otherwise;
		say "Hago gestos señalando [al noun], aunque no hay nadie para verlo así que no sé que fundida cosa se me ha pasado por la cabeza.";
	end if.

[ACCION MOSTRAR: la cambiamos por señalar]
Before of showing a thing to Itk when the noun is not carried:
	try pointing the noun;
	stop the action.

Instead of showing a thing to Itk:
	say "El [j]mono[x] [lo noun] coge con avidez, pero [lo noun] deja caer en cuanto ve que no es comestible.";
	move the noun to cabina.

[ACCION BUSCAR: la cambiamos por examinar]
Instead of searching:
	try examining.

[ACCIÓN BESAR: la cambiamos por atacar]
Instead of kissing:
	try attacking.

[ACCIÓN ATACAR: algunos detalles]
Instead of attacking yourself:
	say "No tiene sentido ahora mismo, la verdad.".

Instead of attacking:
	say "Dan ganas de... bueno, da igual, sería inútil.".

[ACCIÓN OLER: por lo menos poner un texto graciosillo]
Instead of smelling:
	say "Uhm... no huelo nada extraño... ¡oh, no! No huelo una fundida cosa. El olfato también debe haber dejado de funcionar.";
	if Itk is visible, say "[line break]El [j]mono[x] hace gesto de oler... y parece que algo no huele muy bien, espero no ser yo...".

[ACCION REGISTRAR: la redirigimos a examinar]
Instead of searching something:
	try examining the noun.

[ACCIÓN ESCUCHAR: lo mismo]
Instead of listening:
	say "Aumento lo que puedo mi sensibilidad auditiva... y no escucho nada de interés.";
	if Itk is visible, say "El [j]mono[x] mira mis orejas artificiales con curiosidad.".

[ACCIÓN SABOREAR: lo mismo]
Instead of tasting a parte del cuerpo:
	say "Soy cara de narices, incluso la nariz es cara de narices, pero no soy comestible. No ser comestible da muchas ventajas en un trabajo como el mío.".

Instead of tasting:
	say "Ya comeré cuando sea imprescindible.".

[ACCIÓN TOCAR: un poco más...]
Instead of touching a limpio thing:
	say "No parece muy diferente de como suele ser.";
	if Itk is visible, say "El [j]mono[x] mira con interés lo que hago, y luego da unos golpecitos él mismo.".

Instead of touching a sucio thing:
	say "No parece muy... ¡mald... ya me he puesto los dedos negros otra vez.";
	now the noun is tocado;
	if Itk is visible, say "El [j]mono[x] mira con interés lo que hago, y luego da unos golpecitos él mismo.".

Understand "acaricia [a thing]"  as touching.

Instead of touching a parte del cuerpo:
	say "No estamos ahora mismo con ganas de jueguecitos guarros. Eso sí en cuanto pueda comprar otro RZ...".

Instead of touching yourself:
	say "No estamos ahora mismo con ganas de jueguecitos guarros. Eso sí en cuanto pueda comprar otro RZ...".

[ACCION ABRIR: por poner cosas de Itk]
Instead of opening when Itk is visible:
	say "Ahora no puedo abrirlo.";
	say "El [j]mono[x] se ríe a carcajadas de mi intento. Cada vez me cae mejor este animalejo, en cuanto le ponga las manos encima haré varios animalejos con él: el animalejo cabeza, el animalejo brazo derecho...".

[ACCION CERRAR: por poner cosas de Itk]
Instead of closing when Itk is visible:
	say "Ahora no puedo cerrarlo.";
	say "El [j]mono[x] se ríe a carcajadas de mi intento. Cada vez me cae mejor este animalejo, en cuanto le ponga las manos encima haré varios animalejos con él: el animalejo cabeza, el animalejo brazo derecho...".

[ACCION CORTAR: la frase original es horrible para el caso]
Instead of cutting:
	say "Si tuviese una segeta láser, o al menos un trazador de alta potencia entonces tal vez.".

[ACCIÓN DESPERTAR: la frase original no me gusta... nunca me gusta, ¿no?]
Instead of waking up for the first time:
	relatar fragmento en Table of primer intento de despertar.
	
Instead of waking up:
	say "Evidentemente no estoy dormida. Yo no sueño con estar en fundidos planetas perdidos en mitad del maldito espacio sin posibilidades de moverme. Para eso instalé el Sweet & Golden Dreamer hace dos añor en el neo-cortex auxiliar.".

[HISTORIA: intentar despertarse la primera vz]
Table of primer intento de despertar
frase
"No estoy dormida, yo no tengo... "
"Aunque tal vez... veamos..."
"¡ATTENTION! ...ENTERING IN DIAGNOSIS MODE... 3..."
"2..."
"1..."
"DIAGNOSIS MODE INITIATED. PERFORMING ANOMALIANATYALHCA% "
"<<E.4>> <SO>...esos hermosos, hermosos ojos... <<E.1999>> ....¡pero que pedazo de paqu... <<E.2345>> ...no... no, yo no iba tan de prisa, te lo juro madre... te lo juro... yo... "
"<<E.5664>> ...odio mi maldito cuerpo de hojalata, lo odio... ojalá me muriese ahora mismo... <<E.7889>> ...el trabajo es una mierda, pero yo no soy de las que está peor, mira a Sheila... <<E.12303>> ...a ver si os morís de una vez jodidos cabrones... <<E.34333>> ...moríos, moríos, moríos... <<E.34562>> ...estaré enamorada de un robot? Nah... "
" MARKS CONFIRMED. %>>"
"NO ANOMALIES IN ORGANIC MEMORY. EXITING FROM DIAGNOSIS MODE..."
"Maldita sea..."
"No recordaba lo molesto que resulta. Al menos ahora sé que no estoy dormida ni estoy infectada por alguna clase de parásito neuronal."

[ACCION COGER EXTINTOR: por darle algo más de vidilla]
Instead of taking extintor:
	say "Tiro de él a ver si consigo extraerlo, pero solo consigo sentirme aún más patética. ¡Maldita sea!";
	now the extintor is tocado.

Understand "saluda" or "saludar" or "sonrie" or "sonreir" as waving hands.

Saluding is an action applying to one thing.
Understand "saluda [someone]" or "saludar [someone]" or "sonrie [someone]" or "sonreir [someone]" as saluding.

[ACCIÓN SALUDAR: por poner cosillas de Itk]
Instead of waving or waving hands or saluding when Itk is visible:
	say "Saludo al [j]mono[x].";
	say "El mono responde con algo como: 'Oo lami lami nuk nuk'.".

Instead of waving or waving hands:
	say "No me apetece saludas estúpidamente. Me apetece romper cosas.".

[ACCION DE HABLAR COMO UN LOCO Y GRITAR: a ver si funciona correctamente]
Screaming is an action applying to nothing.
Understand "gritar" or "grita" as screaming.

Carry out of screaming:
	say "¡FUNDIDA MIERDA DE [j]BOTE[x], DE [j]NANOS[x] Y LA PUTA MADRE DE LA REINA DE LOS XENOMORFOS!";
	say line break;
	say "¡Joder, joder y más joder!".

Mading is an action applying to nothing.
Understand "habla" as mading.

Carry out of mading:
	if Itk is visible
	begin;
		say "Intento comunicarme con esta cosa... 'Oop Pouk Xzzxy'... bah! me mira como si fuese idiota.[line break][line break]Como si yo fuese idiota, él [j]mono[x] este es evidentemente idiota de nacimiento.";
	otherwise;
		say "Mala cosa si ya empiezo a pensar en hablar sola, ya tengo bastante con hablar con charraros de soporte de información enloquecidos.";
	end if.

Instead of telling yourself about something, try asking yourself about it.
Instead of answering yourself that something, try asking yourself about it.
Instead of asking yourself for something, try asking yourself about it.
Instead of asking yourself about something, try mading.

[PARTE DEL CUERPO: Voz]
La voz is a person in cabina. La voz is an scenery.
Understand "informacion" or "lm-235" or "lm" as voz.
The description of the voz is "Estaría bien que el [j]LM-235[x] tuviese un cuerpo que pudiese recibir palizas, palizas contundentes, pero lamentablemente está dentro de mi propia cabeza, y la verdad, ya tuve bastante de masoquismo por un par de vidas, al menos.".

[Reglas especiales de tratamiento con la voz]

[ACCION: G. Asking, o sea preguntar nada]
Gasking is an action applying to one thing.

Understand the commands  "conversa" as "habla".
Understand "habla a/con [someone]" as gasking.

[Vamos a irlo cambiando aleatoriamente en una tabla de respuestas]
Carry out of gasking:
	if the noun is the voz
	begin;
		choose a random row in the Table of Gasking;
		relatar fragmento en respuesta entry;
	otherwise;
		try mading;
	end if.

[TABLA DE GASKING POR INTENTOS]
Table of Gasking
respuesta
Table of Hablar Por Hablar Primero
Table of Hablar Por Hablar Segundo
Table of Hablar Por Hablar Tercero
Table of Hablar Por Hablar Cuarto

[TABLAS: de conversación hueca]
Table of Hablar Por Hablar Primero
frase
"Guíame o dame alguna sugerencia."
"[italic type]Es mejor que me preguntes sobre algo concreto. Soy un asistente de consulta, no un ayudante general.[roman type]"
"Ya, claro, por eso hablas sobre lo que te da la gana."
"[italic type]Ahí me has pillado... pues..."
"...la verdad es que..."
"...no se me ocurre nada.[roman type]"
"Me lo estaba imaginando."

Table of Hablar Por Hablar Segundo
frase
"¿Algo que añadir?."
"[italic type]No, la verdad es que nada de nada.[roman type]"
"Eres un cacharro realmente útil."

Table of Hablar Por Hablar Tercero
frase
"Tal vez tengas en esa base de datos tuya algo de utilidad, ¿no te parece?"
"[italic type]Así sin fijar un aspecto concreto... la verdad...[roman type]"
"¿Tiene que ser sobre un tema determinado?"
"[italic type]Eso es, pregúntame sobre algo concreto, tengo respuesta para casi todo.[roman type]"
"Sácame de aquí."
"[italic type]Con eso... no puedo ayudar mucho, en cuanto tengas el tubo de nanos en la mano, introdúcelo en tu pierna, no hay mucho más que decir.[roman type]"

Table of Hablar Por Hablar Cuarto
frase
"Quiero salir de aquí, ¡ya!"
"[italic type]¡Ánimo! Yo también tengo ganas y comparto tus piernas[roman type]"
"Muy gracioso... muy gracioso. En cuanto pueda pasar una revisión voy a desinstalarte."
"[italic type]No hay razón para hacer eso, soy el mejor modelo y funciono... casi bien...[roman type]"
"Considérate desinstalado."

Instead of telling voz about something, try asking voz about it.
Instead of answering voz that something, try asking voz about it.
Instead of asking voz for something, try asking voz about it.
Instead of asking voz about a topic listed in the Table of consultas a la voz:
	if usada entry is 0
	begin;
		relatar fragmento en reply entry;
		now usada entry is 1;
	otherwise;
		say "[italic type]Ya te he dicho todo lo que sé sobre eso.[roman type].";
	end if.


Instead of asking voz about anything:
	say "[italic type]Me temo que sobre eso no tengo más datos[roman type].".

[CONSULTAS CON LA VOZ]
Table of consultas a la voz
usada	topic					reply
0	"nanos" or "nano" or "los nanos"			Table of explicacion sobre nanos
0	"cilindro" or "el cilindro"					Table of explicacion sobre cilindro
0	"cilindros" or "naykho" or "los cilindros"			Table of explicacion sobre cilindro
0	"negro" or "quemado" or "hollin" or "negrura" or "retorcido" or "metales" or "ceramicas" or "las ceramicas" or "plasticos" or "masa" or "desastre" or "metal" or " ceramica" or "plastico"or "lo negro" or "tostadora" or "la tostadora"	Table of explicacion sobre negro
0	"hierba"					Table of explicacion sobre hierba
0	 "parabrisas" or "cristal" or "ventana" or "cubierta"or "el parabrisas" or "el cristal" or "la ventana" or "la cubierta" 										Table of explicacion sobre parabrisas
0	"silla" or "sillon" or "asiento" or "la silla" or "el sillon" or "el asiento"		Table of explicacion sobre silla
0	"indicadores" or "indicador" or "medidores" or "comunicador"or "los indicadores" or "el indicador" or "los medidores" or "el comunicador" 									Table of explicacion sobre indicador
0	"mono" or "lemur" or "el mono" or "el lemur"			Table of explicacion sobre lemur
0	"extintor"or "el extintor"	Table of explicacion sobre extintor

Table of explicacion sobre extintor
frase
"[italic type]No tengo datos sobre extintores.[roman type]"
"Qué sorpresa, que no sepas nada."	
"[italic type]Revisando datos. No, no tenemos datos sobre extintores.[roman type]"
"No tienes."	
"[italic type]No, no tengo.[roman type]"
"No pillas el sarcasmo."	
"[italic type]Sí que tengo datos sobre el sarcasmo, así como ejemplos históricos en...[roman type]"
"Déjalo. ¿Alguna idea de dónde puede haber salido?"	
"[italic type]No está en el banco de datos.[roman type]"
"Era de esperar."	

Table of explicacion sobre nanos
frase
"[italic type]Los comúnmente conocidos como [j]nanos[x], son minúsculos agentes robóticos autosuficientes creados, o a veces criados y educados, con un objetivo concreto. A modo de ejemplo podríamos destacar sus usos...[roman type]"
"Abrevia, haz el favor."
"[italic type]Supongo que estás interesada en una información menos completa y más relevante, ¿no?[roman type]"
"¿A tí que te parece ridículo y descontrolado pedazo de circuitos fundidos?"
"[italic type]Ejem... bien... contextualizando...[line break][line break]Los nanos que requieres son de lo más común, tienen la misión de reparar organos seudo-orgánicos, que en la actualidad se usan en cyborgs, vehículos, trajes de combate y otros múltiples lugares. No debería ser tan difícil encontrar uno.[line break]...[line break][line break]...[line break]Aunque pensando bien el contexto, tal vez sea 'algo' más dificil...esto...¿has mirado por ahí?...¿uhm?[roman type]"

Table of explicacion sobre cilindro
frase
"[italic type]Los nanos vienen siempre sellados en contenedores cilíndricos especiales, desde el desastre en Mansuy III.[roman type]"
"He estado sobrevolando ese planeta, es un extraño lugar que parece hecho de lodo. Un lodo con extrañas mareas."
"[italic type]En realidad no es lodo, sino un manto de nanos. Mansuy III era una próspera colonia agrícola. Sus tierras no eran todo lo rica en nutrientes como sus habitantes hubiesen deseado y la Naykho Corp. les envió nanos especializados en la extracción de minerales. Se suponía que los nanos buscarían los minerales en el subsuelo y los subirían a la superficie.[roman type]"
"No suena mal."
"[italic type]Pero los [j]nanos[x] encontraron minerales mucho más cerca: los cultivos, las herramientas, las máquinas agrícolas, los agricultores...[roman type]"
"Entiendo, así que nada de abrir los contenedores de [j]nanos[x]."
"[italic type]Sí, mejor no arriesgarse.[roman type]"

Table of explicacion sobre negro
frase
"[italic type]La cobertura negra que se ve es hollín de origen diverso. Probablemente durante la reentrada ha fallado el termo-sello...[roman type]"
"Yo diría más bien que el 'termo-sello' tiene un agujero tan grande como la fresadora de más de dos que conozco."
"[italic type]...esta clase de polvo es fácil de limpiar, en apariencia, ya que en la realidad se queda impregnado en casi todas las superficies y es muy dificil de suprimir el olor que produce.[roman type]"
"O sea se puede limpiar, pero seguiremos apestando a quemado."

Table of explicacion sobre hierba
frase
"[italic type]Esta [j]hierba[x] perenne puede alcanzar hasta los dos metros de alto. Las hojas se acumulan de forma circular en torno al tronco o caña principal, como en estrella. La caña es verde, delgada y redonda en la sección transversal. Las hojas son en forma de espadas largas de hasta varios palmos de longitud y pueden tener colores que varían desde el verde hasta el azul grisáceo, pero son muy delgadas. El nodo en la base de cada vaina es rojizo o morado y sin pelo...[roman type]"
"Pero, ¿se pueden comer?"
"[italic type]El ganado humano sí, pero los propios humanos no pueden comerla.[roman type]"
"No podía haber tanta suerte. Jamás pensé en instalarme un estómago de vaca, habrá que pensarlo para la próxima revisión."

Table of explicacion sobre parabrisas
frase
"[italic type]Estos parabrisas de los módulos [j]XMRT[x] pueden soportar unas temperturas y presiones increíbles...[roman type]"
"Déjalo, no quiero escuchar mentiras."
"[italic type]No son... bueno, supongo que en este caso...[roman type]"

Table of explicacion sobre silla
frase
"[italic type]Estos prodigiosos asientos de los [j]XMRT[x], son un módulo de salvamento ellos mismos. Con un sistema de anclaje casi inamovible, un paracaídas irrompible de disparo automático y resultando cómodas a la par que seguras sus abrazaderas, se puede decir que su ocupante puede estar seguro ante cualquier percance.[roman type]"
"¿Tu empresa fabricante y la de estos sillones es la misma?"
"[italic type]Sí, ¿por qué?[roman type]"
"Por nada, déjalo."

Table of explicacion sobre indicador
frase
"[italic type]Sirven para controlar el [j]XMRT[x], aunque ahora puedo ver que están destruídos siguen la estandarización VAM-1A.[roman type]"
"Voy A Morir YA"
"[italic type]¿Cómo?[roman type]"
"El estándar..."
"[italic type]El estándar VAM-1A, fue el predominante en vehículos de salvamento durante las guerras...[roman type]"
"Déjalo. Está claro que no sabes lo que es un chiste."
"[italic type]Un chiste es una pequeña historia o una serie corta de palabras, hablada o comunicada con la intención de hacer reír al oyente o lector. Normalmente tiene fines humorísticos aunque hay chistes con connotaciones políticas, rivalidades deportivas, etc. Se dice que hay chistes 'buenos' y chistes 'malos' dependiendo del efecto final causado; muchas veces esto es influenciado directamente por cómo se presenta el chiste, o sea, cómo se cuenta un chiste. La mayoría de los chistes tiene dos...[roman type]"
"Arg."

Table of explicacion sobre lemur
frase
"[italic type]Pues realmente no estoy muy seguro de lo que es. Con esos ojos grandes y aspecto delgado debería tratarse de alguna variedad de lemur. Tiene algunas semejanzas a los lémures negros, pero estos no son bípedos por lo general y son mucho más pequeños. El pelo es casi idéntico al Prolemur Simus, pero por otra parte sus orejas me recuerdan a las de los Cryptoprocta ferox. De forma que no puedo indicar qué es realmente.[roman type]"
"Oh, no te preocupes, está claro qué es."
"[italic type]¿Sí?[roman type]"
"Sí. Es un engendro fundidamente feo."

[--------------------------------------------------

EL FINAL DEL JUEGO: PONER CILINDRO EN EL MODULO

-------------------------------------------------]
Instead of putting nanos on the modulo when the nanos is carried:
	relatar fragmento en Table of Final;
	end the story saying "".

Instead of putting nanos on the piernas when the nanos is carried:
	relatar fragmento en Table of Final;
	end the story saying "".
	

[HISTORIA: El fragmento final]
Table of Final
frase
"Una descarga de revitalización me recorre el cuerpo. Es como si me hubiese acertado un rayo directamente en la toma de corriente principal."
"Me sacudo."
"Me sacudo salvajemente."
"Me sacudo como línea de alta tensión  que caiga desde sus sujeciones, descontrolada, abrasándolo todo a su paso."
"Me sacudo hasta perder el conocimiento."
"..."
"Cuando despierto me encuentro fracamente bien."
"Doblo el fuselaje con facilidad, lo aparto, arranco el parabrisas de su goznes y salgo al exterior."
"Un extenso mar de hierba se divisa en todas direcciones."
"Ni una construcción, ni un árbol, ni una mísera colina, nada rompe la monotonía del mar de hierba excepto el destrozo que mi propia nave a provocado en la hierba."
"El lamentable animalucho se coloca junto a mis piernas. Parece que me espera un largo viaje y un acompañante para el mismo."
"[italic type]Ejem...[roman type]"
"¿Sigues ahí?"
"[italic type]Eso parece...[roman type]"
"De acuerdo, entonces tendré dos absurdos acompañantes para el viaje, uno al que no entiendo y otro al que preferiría no entender."
"[italic type]Lo que tiene uno que oír...[roman type]"
"[line break][line break][line break][bold type]Aquí termina esta breve introducción a las aventuras de Layna Speedy.[line break]En breve en sus pantallas nuevas entregas.[line break][line break]Pueden entre tanto leer los relatos originales de Layna Speedy en su blog:[line break][line break]http://laynaspeedy.blogspot.com/[line break][line break]¡Suerte y destripante Año Nuevo para todos!".

[--------------------------------------------------

	Limpiar objetos

--------------------------------------------------]

A thing can be limpio or sucio. A thing is usually sucio.
A thing can be tocado. A thing is usually not tocado.
A parte del cuerpo is usually limpio.

[

	Caso especial, limpiar el extintor. Cuando se limpia el extintor pasan cosas extra.
]
Instead of  rubbing the extintor when the nanos is not in cabina:
	say "Sacudo un poco el extintor y  lo froto otro poco. Al menos ya no está tan negro, de hecho al estar hecho de un metal plateado casi parece un espejo.";
	say line break;
	say "¡Destripante! Reflejado en el extintor se puede ver el [j]compartimiento[x] que está tras el asiento.";
	now the noun is limpio;
	move nanos to the cabina;
	if Itk is not visible, Itk appears in three turns from now.

[He tenido que poner esta regla delante de las otras, 
esto es un bug no arreglado de I7, ya que esta regla 
es más restrictiva que las otras]
First instead of rubbing a parte del cuerpo:
	say "Ya me ducharé cuando sea posible.".

First instead of rubbing yourself:
	say "Ya me ducharé cuando sea posible.".

Instead of rubbing a sucio thing  for the first time:
	say "Dan ganas de quitar todo este negro [del noun], pero paso... mi estilo de limpieza habitualmente conlleva un desintegrador de punta gruesa; que para algo soy jefa de una escuadrilla de demolición y limpieza de zonas infectadas.[line break][line break]Bueno, tal vez alguna".

Instead of rubbing a sucio thing   for the second time:
	say "¡Joder! Tal vez sí que haya que limpiar [el noun]. [Lo noun] sacudo un poco y [lo noun] froto otro poco desde donde estoy y al menos ya no está[n noun] tan negr[o noun].";
	now the noun is limpio;
 	if Itk is visible, say "[line break]El [j]mono[x] observa lo que hago y el mismo limpia un poco otra cosa... hasta que ve que se pone la [j]mano[x] negra. Parece muy enfadado.".

Instead of rubbing a sucio thing:
	say "Sacudo un poco [al noun] y [lo noun] froto otro poco. Al menos ya no está[n noun] tan negr[o noun].";
	now the noun is limpio;
	 if Itk is visible, say "[line break]El [j]mono[x] observa lo que hago y el mismo limpia un poco otra cosa... hasta que ve que se pone la [j]mano[x] negra. Parece muy enfadado.".

Instead of rubbing a limpio thing:
	say "Supongo que podría sacarle[s] brillo y dejar[lo noun] reluciente[s], pero... ¿para qué?".

[

PARTES DEL CUERPO

]

[PARTE: Brazos]
Los brazos is a parte del cuerpo in cabina. The description of brazos is "Supongo que no son exactamente los brazos de una 'mujer normal', qué remedio, los necesito fuertes para empujar y cargar, lo que también viene bien para golpear, y eso significa que hay que meter más masa de seudomúsculo, no queda otra.".
The brazos are plural-named.

[PARTE: Pies]
Los pies is a parte del cuerpo in cabina. The description of pies is "[if seccion is in cabina]Casi no se ven. Tengo que lograr sacarlos de ahí...[otherwise]Me dan ganas de mirarme los pies, pero no es el momento.[end if]".
The pies are plural-named.

[PARTE: Tetas]
Las tetas is a parte del cuerpo in cabina. The description of tetas is "Justo del tamaño que me gustan. No demasiado grandes. Algunas se ponen unas cosas descomunales. Zorras.".
Understand "pechos" or "senos" as tetas.

[PARTE: Pezones]
Los pezones is a parte del cuerpo in cabina. The description of pezones is "Espero que estén a bien recaudo bajo los restos de mi sobrepiel astronáutica. No me gustaría perder un par de piezas con semejante sensibilidad.".
The pezones are plural-named.

[PARTE: Sobrepiel]
La sobrepiel astronautica is a parte del cuerpo in cabina. The description of sobrepiel is "Si fuese completamente humana ahora llevaría un traje de vacío muy ajustado o no cabría aquí...[line break][line break]¡No seas fundida! Si fuese completamente humana ahora estaría más que muerta...".

[PARTE: Piernas]
Las piernas is a parte del cuerpo in cabina. The description of piernas is "[if veces examinado of piernas is less than 3]Me gusta impresionar a los tíos. No es que sea especialmente zorr... bueno, supongo que algo así, pero lo importante es que ligar con alguien medio decente - o sea, que al menos parezca humano- resulta un poco difícil para una cyborg como yo; así que me gusta ir bien equipada.[otherwise]Son unas piernas destripantes...[end if][if seccion is in cabina][line break][line break]Es lamentable verlas atrapadas así.[end if][if veces examinado of piernas is greater than 0][line break][line break]En la parte superior de la pierna derecha está abierto el módulo de recarga de nanos[end if]".
Understand "pierna" or "muslo" or "muslos" as piernas.
The comportamiento of piernas is Table of CompPierna.

This is the primera vision de las piernas rule:
	relatar fragmento en Table of primera vision de piernas;
	now the modulo de recarga is in cabina.

Table of primera vision de piernas
frase
"Son geniales, me costaron una pasta pero... un momento."
"Hay un [j]módulo[x] abierto. ¿Qué mierda es est...[line break][line break][italic type]Es un módulo auxiliar de recarga de nanos.[roman type]"
"¿Qué?[line break][line break][italic type]Los componentes cyborg actuales son de gran calidad y resistencia, en principio no es necesario hacer nada por ellos hasta la revisión anual o en caso de grave accidente...[roman type][line break][line break]Abrevia, eso ya lo sé.[line break][line break][italic type]...pero es posible recargar nanos, para activación, mantenimiento y otras funciones en caso de que se hayan agotado. El módulo abierto sirve para inyectar dichos nanos.[roman type]"
"Entiendo... ¿pueden haberse 'agotado'?[line break][line break][italic type]Si han tenido que realizar demasiadas reparaciones... teniendo en cuenta el estado del bote es posible que lleven muchas horas, o tal vez días reconstruyéndote. Eso explicaría que se hayan agotado, así como que tengas mucho mejor aspecto que el XMRT.[roman type]"
"¡Yo siempre tendré mejor aspecto que cualquier XMRT![line break][line break][italic type]No tengo datos para evaluar eso.[line break][line break]Si los nanos se han agotado, tal vez también se explique el agotamiento muscular y que yo esté hablando sin control. El trabajo estará a medio terminar.[roman type]"
"¿De dónde saco más nanos?[line break][line break][italic type]Pues es realmente difícil que haya en este entorno...[roman type][line break][line break]¡Joder![line break][line break][italic type]...normalmente vienen encapsulados en un simple [j]cilindro[x] de la empresa Naykho Corp. sin más distintivo que un código de barras y el logo de peligro nanológico o bien el logo de la empresa.[roman type]"
"...maldita sea... estamos bien fundidos."

Table of CompPierna
vez	regla
1	primera vision de las piernas rule

[PARTES DEL CUERPO: Manos]
Las manos is a parte del cuerpo in cabina. The description of manos is "Son finas y de apariencia delicada, como las de la hija de un alto funcionario de la República, pero son fuertes y más de uno ha verificado en sus partes que pueden aplastar casi cualquier cosa.". The manos is plural-named and female.
Understand "mano" as manos.


[PARTES DEL CUERPO: Dedos]
Los dedos is a parte del cuerpo in cabina. The description of dedos is "Son duros, pero a la vez finos y delicados, y lo mejor de todo es que tienen una sensibilidad extraordinaria... si no se han estropeado con toda esta fundida cosa del aterrizaje.". 
Understand "dedo" as dedos.

[PARTES DEL CUERPO: Cuerpo]
El cuerpoT is a parte del cuerpo in cabina. 
Understand "cuerpo" as cuerpoT.
Instead of examining cuerpoT:
	try examining yourself.

[PARTES DEL CUERPO: Cabeza]
La cabeza is a parte del cuerpo in cabina. The description of cabeza is "No necesito vérmela para saber que soy una mujer hermosa. La cara que escogí simplemente me va perfecta. Aunque se me hubiese deformado por la reentrada, a través de mis falsos ojos cualquiera vería que soy brutal... en ambos sentidos.".
Understand "cara" as cabeza.

[

IMAGINARIOS

]

[DECORADO ACTIVO: Bolillero]
El bolillero is a decorado activo in cabina. The description of bolillero is "[if veces examinado of bolillero is greater than 0]Ramírez no está por aquí, por suerte. Si estuviese, estaría lloriqueando sin parar.[otherwise]Carlos 'Headcrushed' Ramirez, el bolillero, es el tío más torpe de toda la cuadrilla. A buen seguro ahora sería una molestia, por no decir un incordio. Claro que los bolilleros, encargados básicamente a derribar con sus 'bolas' -los puños de su traje androide de trabajo- los habitáculos e instalaciones - y recibiendo siempre impactos de los escombros descontrolados- no son las personas más inteligentes de la República. [end if]".

Instead of rubbing bolillero:
	say "No hay nadie de la cuadrilla de trabajo por aquí. De todas formas no habrían sobrevivido a la reentrada.".


Chapter 3 - Los objetos

[Uno de los objetos se reserva para el PNJ, el nativo... 
ese tan desagradable ser y nada musculoso]

[PRIMER OBJETO: SECCIÓN DE FUSELAJE

   La sección de fuselaje roto representa
   el auténtico problema de esta mini aventura.
   Layna no tendría problema para deformarlo
   y apartalo... en otras circunstancias, pero
   con los hipermúsculos funcionando a 
  un 10% de su capacidad, es como un jodido 
  humano normal
]
Una seccion del fuselaje is a scenery. 
The description of seccion is "Justo debajo del [j]parabrisas[x] el bote se ha debido golpear con algo cortante y muy resistente. El resultado es como una 'funda' que aprisiona la parte baja de  mis [j]piernas[x]."
The printed name of seccion is "sección del fuselaje".
Understand "cosa" or "funda" as seccion.

[ACCIONES sobre el fuselaje]
Instead of attacking the fuselaje for first time:
	say "¡Maldita fundida cosa! La empujo y la golpeo pero mi fuerza es tan ridícula que más bien parezco Errezeta cuando me acaricia los pezones en la intimidad.[line break][line break]Acariciaba...[line break][line break]Pobre Errezeta... era tan servicial... Si consigo salir de esta he de comprarme otro igual, o al menos un androide similar de la serie RZ-ST-7, tal vez un modelo 79 esta vez, que aparentan estar mucho más musculosos.".

Instead of attacking the fuselaje:
	say "Lo intento de nuevo... pero es inútil, o al menos lo será mientras no pueda recuperar mi fuerza normal.";
	if Itk is visible, say "[line break]El [j]mono[x] golpea [el noun] con saña, pero tiene el mismo efecto que yo, ninguno.".


[SEGUNDO OBJETO: CILINDRO DE NANOS

   El inyector de nano reconstructores
  cibernéticos representaría la solución 
  a los problemas de Layna. Basta con 
  conectarlo al pecho y sentir como los nanos
  devuelven la potencia a los hipermúsculos.
  Claro que están fuera del alcance de Layna
  y no tienen muy buena pinta tampoco. 
]
Unos nanos is a reflexed thing. The description of nanos is "Se trata de un absurdamente simple cilindro sin abertura aparentes supuestamente lleno de nanos. Es plateado con apenas adornos o distintivos.".
Understand "cilindro" or "cilindro de nanos" or "nano" as nanos.

[Un pequeño truco sucio]
The printed name of nanos is "cilindro de nanos". The keyword of nanos is "nanos".

Rule for printing the name of the nanos while listing contents: say "cilindro de [j]nanos[x][if nanos is reflexed] (dentro del compartimiento  tras el asiento, es decir inaccesible)[end if]". 

[TERCER OBJETO: MODULO DE INYECCIÓN DE RECARGA DE NANOS

   Un pequeño dispositivo en el muslo derecho de Layna
  útil para introducir nuevos nanos funcionales.
]
Un modulo de recarga is a decorado activo.
The printed name of modulo is "módulo de recarga".
The description of modulo is "No es más que una pequeña abertura en mi [j]muslo[x] derecho. Se supone que debería introducir un contenedor de [j]nanos[x] ahí... si consigo tener uno. De momento es solo un agujero que afea mi pierna.".

[CUARTO OBJETO: EXTINTOR
 
  Permite ver el compartimiento de atrás si 
  está limpio, no sirve para nada más.
]
El extintor is a decorado activo in cabina. The description of extintor is "Ni siquiera recordabas disponer de uno de estos en el [j]bote[x], debe ser alguna de las cosas que estaban en un [j]compartimiento[x] que hay justo tras el asiento el ocupante. ¿Qué más habrá ahí?[if sucio] Está negro, cubierto de [j]hollín[x], como todo lo demás, aunque está claro que originalmente era brillante y plateado.[end if][if extintor is sucio and extintor is tocado] Especialmente porque los dedazos, que he dejado claramente marcados en el hollín al tocarlo, dejan ver la superficie reflectante. Casi puedo verme la [j]cara[x] reflejada.[end if][if limpio] Ahora está limpio y su plateada superficie me permite ver un reflejo de casi toda la [j]cabina[x], incluido el [j]compartimiento[x] de carga que está tras de mí.[end if]".

[DECORADO ACTIVO: Superficie]
The superficie is a decorado activo in cabina. The description of superficie is "El [j]extintor[x] está hecho de un material parecido a la plata.[if the extintor is sucio and the extintor is tocado] Las pocas huellas sobre el mismo permiten ver reflejado parcialmente el contenido de todo el bote salvavidas. Al menos ahora puedo ver que mi [j]cara[x] está bien.[end if][if extintor is limpio] Sobre la plateada superficie del extintor se puede ver casi toda la cabina, incluido el [j]compartimiento[x] de carga que está tras de mí.[end if]".


Chapter 4 - Los PNJs

Section 1 - El PNJ Itk

[Sólo hay un PNJ, el quinto objeto, ¿quién 
no hablaría de la quintaesencia de la molestia?]

[QUINTO OBJETO: ITK

	Itk es el único PNJ de la aventura y representa
   la única posibilidad de Layna de salir de esta tan
   desagradable situación. Claro que nadie habla
   'itkiano', ni Itk, evidentemente...
]
Itk is a man. The description of Itk is "Se trata de alguna clase de... [j]mono[x], uno que nunca has visto, boca y nariz negra y demasiado pequeñas, orejas inmensas, ojos marrones gigantescos y todo lo demás... bueno... cubierto de largos [j]pelos[x] de un color amarillento tendiendo a... feo.". 
Itk can be aparecido. Itk is not aparecido.

Understand "mono" or "lemur" or "engendro" or "pequeño" or "pequeñajo" or "amarillento" or "amarillo" or "delgado" or "delgaducho" as Itk.

The printed name of Itk is a "lemur delgaducho y amarillento". The keyword of Itk is "lemur".

[Itk aparecerá sí o sí treinta turnos tras el comienzo del juego, incluso si no se ha limpiado el extintor]
When play begins, Itk appears in 30 turns from now.

[DECORADO ACTIVO: Pelos]
Los pelos is a decorado activo and a part of Itk. The pelos are plural-named.
The description of the pelos is "Largos y enmarrañados los pelos de este [j]mono[x] más que cubrirlo sirven para aumentar la sensación de que se trata de una criatura flacucha y lamentable.".

[Regla para aparecer]
At the time when Itk appears:
	if Itk is not aparecido
	begin;
		move Itk to cabina;
		relatar fragmento en Table of Itk aparece;
		now Itk is aparecido;
	end if.

Table of Itk aparece
frase
"Un extraño ser entra por el agujero del parabrisas."
"Es alguna clase de [j]mono[x] flacucho y peludo que se sienta sobre los destrozados controles y me mira con curiosidad."
"[italic type]Sin lugar a dudas se trata de alguna clase de lemur, un insectívoro gigante. Pero no es de una especie que reconozca.[roman type]"
"Debí comprar el modelo caro."
"[italic type]¿Modelo caro? ¿De qué?[roman type]"
"De tí, evidentemente."

[Regla para reaparecer]
At the time when Itk reaparece:
	if Itk is not visible
	begin;
		move Itk to cabina;
		say "El [j]mono[x] se asoma con cautela entre la hierba. Se tranquiliza rápidamente, entra y se vuelve a sentar sobre los [j]controles[x] como si nada hubiese pasado...";
	end if.

[Itk no se deja tocar]
Instead of taking or attacking or rubbing Itk:
	say "Intento coger al mono desgarbado, pero parece asustarse, salta por el agujero del parabrisas y desaparece entre la hierba...";
	play Sound of Lemur in midground;
	remove Itk from play;
	Itk reaparece in four turns from now.

Instead of giving something to Itk:
	say "Itk coge [el noun] con interés, [lo noun] muerde y [lo noun] deja caer con cara de decepción.";
	move the noun to cabina.

[Todas las acciones en presencia de Itk, no queda otra pues no hay forma de traducir
el contenido de 'the current action']

[Primero lo auténticamente importante]
After pointing the nanos when Itk is visible:
	if the nanos is reflexed
	begin;
		say "El mono coge el cilindro del [j]compartimiento[x] de atrás, lo revisa, lo muerde y lo deja caer con cara de frustración.[line break]Casi me acierta en la pierna con el [j]cilindro[x] al dejarlo caer al suelo. ¡Fundido mono!. Espero que no se haya roto.";
		now the nanos is not reflexed;
	end if.

[Y luego el adorno, lamentablemente no funciona con casi nada si hay in Instead of...]
After removing something from something when Itk is visible:
	say "El mono mira con atención como muevo [el noun]".

After inserting something into something when Itk is visible:
	say "El mono mira [el noun] y cómo lo inserto en [el second noun], tras lo cual dice: 'Oo Itk maoi.".

After putting something on something when Itk is visible:
	say "El mono mira [el noun] y cómo [lo noun] inserto en [el second noun], tras lo cual dice: 'Oo Itk olu?.".

After examining Itk when Itk is visible:
	say "El mono te sonríe con dientes amarillos y dice: 'Itk.'.".

After examining yourself when Itk is visible:
	say "El mono también me está mirando con interés. Me entran ganas locas de partirle la cara y decirle 'ni se te ocurra pensarlo, flacucho', pero no es más que una tontería.".

After examining something when Itk is visible:
	say "El mono también observa [el noun] con interés[if a  random chance of 20 in 100 succeeds] , incluso [lo noun] señala con su mano escuálida[end if].".

After dropping something when Itk is visible:
	say "El mono coge [el noun] casi antes de que llegue[n noun] a tocar el fondo de la cabina, [lo noun] mira con interés, [lo noun] muerde y, finalmente,  [lo noun] deja caer con cara de asco.".

After taking inventory when Itk is visible:
	say "El mono me imita y parece revisar también si lleva algo consigo.".

Instead of asking Itk about anything:
	play Sound of Lemur in midground;
	say "El mono me oye y al final dice: 'Oo lami nuk nuk Itk.' Que debe ser su forma de decir 'no he entendido una fundida cosa de lo que has dicho'.".

Instead of telling Itk about something, try asking Itk about it.
Instead of answering Itk that something, try asking Itk about it.
Instead of asking Itk for something, try asking Itk about it.
Instead of asking Itk to try doing something:
	say "El [j]mono[x] me oye y al final dice: 'Oo lami nuk nuk Itk.' Que debe ser su forma de decir 'no he entendido una fundida cosa de lo que has dicho'.".

After waiting when Itk is visible:
	say "El mono pone cara de aburrido.".







