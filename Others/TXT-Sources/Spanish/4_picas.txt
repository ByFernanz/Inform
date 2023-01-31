"4 Picas" by Johan Paz

[==============================

	4 Picas

	Por Johan Paz, iniciado a finales del 2010
	retomado para la V MiniComp en 2011,
	y finalizado a principios de 2012.
	
	Desarrollado a partir de una iluminación
	repentinta basada en el logo de la 
	cuarta MiniComp:
	
	http://wiki.caad.es/Archivo:Mini_comp_4.png

	Uno de los objetivos de esta obra es
	el experimento narrativo de situar al 
	Diablo como sustituto del narrador
	tradicional de la aventura clásica.
	
	El segundo objetivo es la de usar en 
	la programación una cierta orientación
	al puzzle explícito para explorar si 
	transformándolos en algo más 'material'
	-de forma similar a las escenas ya 
	incluídas como tal en I7- se logra una
	clarificación del código o no.
	
	Finalmente la historia, el contexto en sí
	en el que se produce y la situación dada
	en esta mini-obra no son especialmente 
	originales tratándose de una obra mía,
	de hecho supongo que se trata de algo
	claramente reconocible como de mi puño
	y letra, de lo cual me siento avergonzado
	pero no hay tiempo para pensar en nada 
	más desafiante (ni ganas).
	
==============================]

[==============================

	Librerías y opciones

==============================]

[Include Spanishdevil by Johan Paz.]
Include Spanish Language by Sebastian Arg.
Include Inline Hyperlinks by Daniel Stelzer.
[Include Advanced Keyword Interface Sp by Johan Paz.]
[Include Keyword Interface Sp by Aaron Reed.]
Include Status Line Removal by Emily Short.
Include Cortos by Johan Paz.
Include Simple Graphical Window by Emily Short.
[Include Glulx Boxed Quotation by Eliuk Blau.]
Include Puzzle Management by Johan Paz.

[Use full-length room descriptions.]
[Use no scoring.
Use undo prevention. ][Jeje... muerte al undo]
[Use boxed quotation without frame.]

[Use MAX_VERBSPACE of 10000.]

[==============================

	Referencia bibliográfica

==============================]

The story headline is "4 Picas".
The story genre is "Mitología". [Según la clasificación de http://wiki.caad.es/Categor%C3%ADa:G%C3%A9neros_de_aventuras]
The release number is 1.
The story description is "Supongo que te creíste muy listo cuando me vendiste tu alma a cambio de no poder morir.

Seguro que pensastes, que me habías engañado, que si resultaba imposible que murieses yo nunca podría reclamar tu alma. Nunca pensaste que no poder morir no implica que sea imposible decapitarte o clavar tu cabeza en una pica, ¿verdad que no? Menuda faena te han hecho tus enemigos. Toda una eternidad de sufrimiento sin poder hacer otra cosa que mirar este absurdo paisaje de Tierra Santa desde lo alto de tu pica.

Pero, no te preocupes, tu viejo amigo el Diablo está aquí para ofrecerte la muerte que tanto necesitas para aliviar tu sufrimiento.".
The story creation year is 2010.

Release along with cover art, a website, the source text.


[==============================

	Multimedia
	
	Se incluye una mínima cantidad de 
	multimedia, se trata de explorar las
	capacidades básicas de I7, aprovechando
	que la obra tendrá hiperenlaces como
	componentes fundamentales y 
	que por lo tanto necesariamente 
	tiene que ser glulx (por desgracia).

==============================]
Part 0 - Multimedia

Chapter 1 - Mostrar el lugar de las guerras

[Lista de recursos a usar]
[Algo funciona mal con esto!! workaround repetir...]
Figure Fake is the file "cover.png".
Figure 1 is the file "megg1.png".
Figure 2 is the file "megg2.png".
Figure 3 is the file "megg3.png".
Figure 4 is the file "megg4.png".
Figure 5 is the file "cover.png".

Numeral View is a number that varies.
Numeral View is 1.

To show the next view:
	if numeral view is 4:
		now numeral view is 1;
	otherwise :
		increase numeral view by 1;
	show view numeral view.
	
To show view (view - a number):
	if view is 1:
		now currently shown picture is Figure 2;
	otherwise if view is 2:
		now currently shown picture is Figure 3;
	otherwise if view is 3:
		now currently shown picture is Figure 4;
	otherwise if view is 4:
		now currently shown picture is Figure 5;
	follow the current graphics drawing rule.
		

The graphics background color is g-white.
The graphics window proportion is 32.

The graphics window construction rule is not listed in any rulebook.

Graphics window position is g-right.

Before looking  for the first time:
	now currently shown picture is Figure 2;
	build graphics window;
	follow the current graphics drawing rule.
	
[ TODO: debe depender de la posición de la cabeza ]
Before looking more than once:
	show the next view.
	
	
[==============================

	Capacidades generales creadas 
	o parametrizadas a partir de las 
	librerías para esta aventura

==============================]

Part 1 - Generalidades

Chapter 1 - AKI

[ Commanding is the rule book used very similar to Instead]
Commanding is an object based rulebook. Commanding rules have default success.

Last commanding rule:
	say "Estás pensnado estupideces... debe ser por toda esa sangre que falta en tu cabeza".

[ Metacommanding is the action of the player fired by a keyword]
Metacommanding is an action applying to one object.
	
Carry out of metacommanding (this is the default metacommanding rule):
	follow the commanding rulebook for the noun.

[ TopicMetacommanding is the action of the player fired by a keyword in the case of topic]
TopicCommanding is an action applying to one topic.
	
Carry out of topiccommanding (this is the default topiccommanding rule):
	say "Estás pensnado estupideces... debe ser por toda esa sangre que falta en tu cabeza".


[Examinar cosas resaltadas]
Commanding a thing (this is the AKI examing rule):
     try examining noun.



Chapter 3 - Contadores

Section 1 - Definicion

[Nonsense: el número de turnos que acaban en nada]
Nonsense turns is a number that varies. Nonsense turns is 0.

[Examining: el número de turnos que se ha pasado el interlector examinando]
Examining turns is a number that varies. Examining turns is 0.

[Looking: el número de turnos usados en mirar 'estúpidamente']
Looking turns is a number that varies. Looking turns is 0.

Section 2 - Actualizaciones

[Puede haber más en otras partes del código]

Before examining:
	increase examining turns by 1.
	
Before looking:
	increase looking turns by 1.

Chapter 4 - Habla el diablo, generalidades

Section 1 - Punto de recogida final

[ Esta regla no es más que un punto de recolección final
para todas las cosas que no hayan sido tratadas correctamente
por el resto del código, ya que NO se pueden emitir en ningún
caso las respuesta estándar de la librería]
[Instead of doing anything except looking or examining or metacommanding:
	say "[one of]¿No entiendes que eso que quisieras intentar es inútil? Acepta la muerte, es lo mejor que puedes hacer.[or]¿Cómo puedes pensar que eso podría funcionar en tu situación? No me aburras con tonterías. Si vas a intentar hacer algo que sea algo lógico y preferiblemente que me sorprenda.[or]Oh, es lamentable ver como te esfuerzas inútilmente. Pídeme la muerte de una vez.[at random]";
	increase nonsense turns by 1.]
	
Section 2 - Aportación de Sarganar

[Gracias Sarganar]

[la mayoria de las respuesta de error del parser. más detalles en 17.33]
Rule for printing a parser error:
  say "[one of]Eso de tener una pica atravesándote el cerebro te ha dejado lelo. Ni siquiera piensas cosas coherentes.[or]¿Balbuceas? Ah, no, que es imposible, siendo sólo una cabeza no tienes pulmones con los que impulsar aire a tu garganta.[or]Oh, vamos, si no vas a aceptar la muerte al menos piensa cosas con sentido.[or]Resultas patético cuando no consigues ni concretar tu pensamiento en algo coherente.[or]Ya, ya, claro... ya puestos bien podrías pensar 'xyzzy'. ¡Piensa en algo coherente o muérete de una vez![at random]".

[interceptar desambiguación]
For asking which do you mean:
  say "Oh, por favor. Sé más concreto en tus deseos. Me aburres cuando resultas tan poco específico.".

[Comando incompleto]
Include (-
Object LibraryMessages
      with before [;
                      Miscellany:
                              if (lm_n == 48) "Eso resulta simplemente ridículo. Deja de esforzarte y acepta mi ofrecimiento de morir.^";!El player ha escrito una frase u orden a PSI incompleta
                              if (lm_n == 49) "¿La pica que cruza tu cabeza te impide completar tus pensamientos?^";!El player ha escrito una frase u orden incompleta,

]; -) after "Language.i6t"

Chapter 5 - Frases falsas para actuar desde los mensajes

To say show (objeto - a thing):
	move objeto to Megido.
	
To say discover (puzzle - a puzzle):
	discover puzzle.
	
To say solve (puzzle - a puzzle):
	solve puzzle.	
	
Chapter 6 - Recuerdos

[ Un intento medio exitoso de incluir la gestión de recuerdo ]

Section 1 - Clase

[Definición de la clase memoria]
Memory is a kind of thing. Some memories are defined by Table of recalls. A memory is usually scenery.

[ Ponerlos en megido ]
When play begins:
	repeat with mem running through memories:
		move mem to Megido.

Section 2 - Definición de cosas recordables

Table of recalls
memory		description
sarraceno	"."	
muerte		"[one of]¿Pensando en morir? Es muy sencillo, sólo tienes que pedirlo.[or]¡Anímate! La [link]muerte[end link] es la única escapatoria. Sí ya sé que será solo para un breve viaje al Infierno; pero míralo por el lado positivo, será un cambio, y allá abajo tendrás toda clase de atenciones. Personalmente me preocuparé de que nunca olvides todos y cada uno de  tus pecados... y eso que son muchos.[or]Morir. ¿No te parece una dulce perspectiva ya? ¿No? Ya te lo parecerá.[or]Deja de pensar en la muerte y abrázala.[stopping]"
espada		"[one of]¿Echando de menos tu [link]espada[end link]? Verdaderamente era muy importante para tí,más de lo que quieres creer.[or]El [link]sarraceno[end link] se ha llevado la [link]espada[end link]. No tiene sentido que pienses más en ello. Ahora el desino del arma estará ligado al de tu enemigo.[or]Me parece lógico que le sigas dando vueltas al asunto de la [link]espada[end link], sin ella nunca habrías llegado hasta mí, nunca existiría nuestro [link]pacto[end link]; pero, ¿no te parece que tienes cosas más urgentes sobre las que pensar? Decidir si escoges la muerte, para empezar.[stopping]"
pacto		"TODO"

Section 3 - Sinónimos

Understand "enemigo" as sarraceno.

Understand "arma" as espada.

Section 4 - Comandos para recordar
	
Remembering is an action applying to one thing.

Understand "piensa en/sobre [a memory]"  or "piensa [a memory]"  or "recuerda [a memory]" or "recuerda a [a memory]" as remembering.

Understand the command "recuerdo" as "recuerda".

Include (-
VerboIrregular "recordar" with imperativo 'recuerda';
-).

Carry out remembering:
	say the description of the noun;
	say paragraph break.
	
[ AKI ]
Commanding a memory:
	try remembering the noun.
	
Chapter 7 - Comandos que son topics

[ Respuesta directa ]
Instead of topiccommanding a topic listed in the Table of Direct Responses:
	say the text result entry;
	say paragraph break.
	
Table of Direct Responses
topic			text result
"ayuda"			"Nadie puede ayudarte, excepto yo, y sólo voy a ayudarte a morir. Basta con que me lo pidas para que se acabe todo este sufrimiento."

[ lugar --> ex lugar --> looking ]
Instead of topiccommanding "lugar":
	try looking.
	
[==============================

	Parte inicial del relato

==============================]
Part 2 - Introducción

Chapter 1 - Charleta

Table of Introducción
phrase
"Supongo que te creíste muy listo cuando me vendiste tu alma a cambio de no poder morir."
"Seguro que pensastes, que me habías engañado, que si resultaba imposible que murieses yo nunca podría reclamar tu alma."
"Nunca pensaste que no poder morir no implica que sea imposible decapitarte o clavar tu cabeza en una pica, ¿verdad que no?"
"Menuda faena te ha hecho ese jodido sarraceno. No me extraña mucho después de lo que tu le hiciste a su familia y de lo que disfrutaste con su mujer."
"Cómo chillaba esa perra sarracena mientras te la trajinabas. Hasta yo lo disfruté, y mira que he visto depravaciones a lo largo de los siglos."
"Sois una especie tan deliciosamente depravada. No entiendo como El Viejo aún puede mantener alguna confianza en vosotros."
"La verdad es que te has ganado este final. Desde luego que sí."
"Toda una eternidad de sufrimiento sin poder hacer otra cosa que mirar este absurdo paisaje de Tierra Santa desde lo alto de tu pica."
"Pero, no te preocupes, tu viejo amigo el Diablo está aquí para ofrecerte la muerte que tanto necesitas para aliviar tu sufrimiento."
"Tan sólo con que desees morir te liberaré del don que te entregué."
"Eso sí, me cobraré tu alma. Un trato es un trato."

[==============================

	Relato propiamente dicho

==============================]
Part 3 - Relato 

[ Inicialización ]
Chapter 1 - Inicio

Section 1 - Quotations

To poner cuadro de inicio:
	display the boxed quotation
	"
	4 Picas

	
	Johan Paz
	Año 2010
	";
	show the current quotation.

Section 2 - When play begins

[When play begins:
	poner cuadro de inicio;
	wait for any key;
	clear the screen;
	tell the fragment on Table of Introducción, cleaning the screen.]
     
Chapter 2 - Lugar
 
Section 1 - El lugar propiamente dicho 
 
 Megido is a room. Megido can be known. Megido is not known.
 
 The printed name of Megido is "[if Megido is not known]Algún lugar de Tierra Santa[otherwise]Las ruinas de Megido[end if]".
 The description of Megido is "[show site].[if the on-thing of urraca is nothing] Hay una urraca rebuscando en la tierra, [one of]no sé porqué no deja de buscar ahí y simplemente no se come tus ojos, la verdad[or]pierde el tiempo ese animal, con esos jugosos ojos que aún tienes. Los cuervos son más listos[or]que tonta, perder el tiempo así[stopping].[end if]..".
 
 To say show site:
	if turn count is 1:
		say "¡Qué hermoso [link]lugar[end link] ha escogido tu [link]enemigo[end link] para dejarte 'clavado'! ¿No te parece? Me trae tan buenos recuerdos";
	otherwise:
		if mano derecha is off-stage:
			now mano derecha is in Megido;
		say "No hay mucho que mirar. Las viejas [link]ruinas[end link][if on-thing of urraca is piedras] -entre las que parece estar buscando alguna cosa la urraca- [end if], tu [link]cabeza[end link][if on-thing of urraca is cabeza] -sobre la que sientes que está la urraca- [end if]clavada en una [link]pica[end link], algunas [link]palmeras[end link][if on-thing of urraca is palmeras] -desde las que te observa la urraca con atención- [end if] medio secas, las [link]colinas[end link] a lo lejos, la [link]llanura[end link] estéril que rodea este lugar".
 
 [Pasa a ser un lugar conocido]
 To say conocer Megido:
	now Megido is known.
 
Section 2 - Decorados

[Palmeras]
 Algunas palmeras are  scenery in Megido. 
 Understand "palmera" as palmeras.
 The description of palmeras is "Por más que las mires todas estas sucias palmeras no te van a ayudar. Han crecido aquí sin que nadie se cuide de ellas. Estas [link]ruinas[end link] llevan abandonadas mucho tiempo, nadie visita ya estos lugares.".
 
 [Piedras]
 Algunas piedras are  scenery in Megido.
 Understand "piedra" or "muro" or "ruinas" or "ruinas" or "muros" or "pared" or "paredes" as piedras.
 The description of piedras is "[if Megido is not known]¿Te gustan las ruinas? Una vez pertenecieron a una ciudad, Ledjun, que antes era conocida como Legio, y antes de eso como Megido. Aquí inventé la guerra. Oh, que gran invento la guerra. Y la sabéis usar tan maravillosamente vosotros.[conocer Megido][otherwise]Todo esto estaba habitado, hasta hace no mucho, pero ya lo sabes, ¿verdad? Probablemente ayudaste a destruir Ledjun.[end if]".
 
 [Colinas]
 Algunas colinas are  scenery in Megido.
 Understand "colina" as colinas.
 The description of colinas is "[one of]¿Ansías llegar a aquellas colinas? Pobrecillo mío, pues ve andando... ah, no, que careces de piernas...[or]Olvidate de las colinas nunca llegarás hasta ellas.[stopping]".

[Llanura]
La llanura is a  scenery in Megido.
Understand "llanuras" as llanura.
The description of llanura is "[one of]Te pertecen, ¿verdad? Que vana son esas afirmaciones que hacéis los humanos. Todas esas tierras valdías te pertenecen mientras sigas vivo. Lo que no tengo nada claro es cómo las vas a disfrutar siendo una cabeza clavada en una pica.[or] Oh, ¿viene uno de tus sirvientes a rescatarte? Ah, no, es sólo un torbellino del viento. Vamos, sabes perfectamente que tus sirvientes te odian tanto como tus súbditos sarracenos, si te encontrasen así celebrarían una fiesta por todo lo alto.[or]Deja de mirarlas no son más que polvo y piedras.[stopping]".

[Diablo]
Diablo is a scenery in Megido.
Understand "cabron" or "demonio" as diablo.
The description of diablo is "[one of]¿Quieres verme además de escucharme en tu violada cabezota? Es fácil, muérete y te dejaré verme constantemente, para tu desgracia.[or]Ya me viste una vez, y sé que te resultó tan desagradable como embriagador. ¿Acaso crees que tengo una forma definida? Eres patético.[or]Deja de intentar localizarme, estoy aquí justo frente a tí, de la misma forma que estoy tras de tí, sobre tí o dentro de tí. ¿Acaso crees que El Viejo es el único capaz de estar en todas partes? La única diferencia entre Él y yo es que yo sí que tengo claro lo que quiero, joderle.[or]Me aburres intentando buscarme, veo que no entiendes que carezco de forma física.[stopping]".

[Cuerpo]
A cuerpo is scenery in Megido. The cuerpo can be enterrado. The cuerpo is enterrado.
Understand "resto" or "restos" as cuerpo.
The description of cuerpo is "[if cuerpo encontrado is unknown by now]No ves tu [link]cuerpo[end link], ¿eh? Bien, bien, me encanta tu [link]cara[end link] de pánico, no pienso decirte por dónde anda.[discover cuerpo encontrado][otherwise if cuerpo encontrado is not solved by now][one of]¿No lo ves? Oh, pobre.[or]¡Qué divertido verte preocupado por tu cuerpo![or]¿Aún buscando tu cuerpo?[stopping][end if][if cuerpo encontrado is solved by now and cuerpo is enterrado]Ahí lo tienes, con todas esas piedras sobre él. No tiene buena pinta, no.[end if][if cuerpo encontrado is solved  by now and cuerpo is not enterrado]Bueno, has conseguido quitar unas cuantas piedras de la parte superior y, ¿qué? Deja de empeñarte y acepta la muerte.[end if]".

[xyzzy - chiste]
A xyzzy is scenery in Megido. 
The description of xyzzy is "[one of]Pero que... vaya, vaya, has aprendido algunas cosas, incluso algunas palabras sagradas importantes. Te creía mucho más imbécil, sinceramente. Para tu desgracia hace ya mucho tiempo que soy inmune a esa palabra. Prueba con otra cosa.[or]No, eso no te servirá de nada.[stopping]".
 
Chapter 3 - Puzzles

Table of  All The Puzzles (continued)
puzzle				p-status
mano clavada		unknown
cuerpo encontrado	unknown
historia escudo		unknown

Chapter 4 - Objetos

Section 1 - Mano derecha

La mano derecha is a thing. "[one of]Y sí, así es, eso es tu [link]mano[end link] derecha clavada en una pica justo frente a tí. Tu [link]enemigo[end link] la ha dejado ahí no sólo clavada sino colocada en forma de un [link]gesto[end link] obsceno.[or]Y ya sabes que tu mano derecha está clavada en otra pica.[stopping][if on-thing of urraca is mano] La urraca está sobre ella, espero que con intenciones de empezar a devorar tus dedos.[end if]".

The mano derecha can be active. The mano derecha is not active.

The description of mano derecha is "[if not active]El [link]sarraceno[end link] la cortó de tu brazo después de cortarte la [link]cabeza[end link], creo que se lo ocurrió en ese momento. Luego la clavó en esta otra [link]pica[end link] justo frente a tí, para que pudieses ver como te insultaba con tu propia [link]mano[end link] cuando despertases. Te odia profundamente.[otherwise]No te quejarás, ¿no? Ahora puedes moverla. A ver, salúdame con ella.[end if]".

Instead of taking anything or waving hands when mano derecha is off-stage:
	say "¿Cómo vas a coger nada si sólo eres una cabeza? ¡No me seas ridículo! Mira tu [link]mano[end link] está ahí, en otra [link]pica[end link][show mano derecha].".
	
Instead of taking or pushing anything or waving hands  while mano derecha is visible and mano clavada is unknown by now:
	tell the fragment on Table of Conectar Mano;
	now mano clavada is unsolved;
	now mano derecha is active.
	
Instead of taking or pushing anything or waving hands  while mano derecha is active and mano clavada is not solved by now:
	say "¡Ja! ¡Tienes la mano clavada en una pica! ¿Cómo es que esperabas hacer eso?".

Table of Conectar Mano
phrase
"Verás. Sé que sientes un dolor espantoso -aunque bien merecido y apenas una sombra de lo que sentirás allá abajo- pero todo él viene de tu [link]cabeza[end link]. El alma reside en la cabeza y nuestro pacto impida que mueras, pero no incluye nada sobre el que mantengas tu [link]cuerpo[end link]. Ahora mismo eres sólo cabeza. No puedes mover nada más, ni esa mano... aunque..."
"...parece divertido darte un poco de esperanza. ¡Sí! ¡Hagámoslo! Lo sientes... oh, sí... ya puedes mover la [link]mano[end link]."
"Y sentir todo el dolor asociado a ella... delicioso, verdad. Oh, me encanta vuestra cara de pánico."
"Pero créeme, todo ese dolor es sólo una parte de lo que podría ser."
"Y no sólo hablo de lo que sentiría ahora mismo el resto de tu [link]cuerpo[end link]. No. El Viejo no hace bien las cosas. ¿Sabes que vuestro cerebro no siente dolor? Tienes una enorme [link]pica[end link] atravesándote los sesos y sólo sientes el dolor de la piel y el cuello. ¡Qué desperdicio! Habría tanto sufrimiento posible..."

[Dedos]
Some dedos are part of the mano derecha. The description of dedos is "[one of]Lívidos, a fin de cuentas ya no queda sangre en ellos -es sorprendente a dónde te puede llevar no poder morir, ¿verdad?- y parcialmente picoteados, creo que por una [link]urraca[end link] que anda por aquí. En uno de ellos aún luce el [link]anillo[end link] sello que te dio Balduino. Buenos tiempos aquellos, ¿eh?[show urraca][or]Por más que los mires no van a cambiar. Pronto serán comida para pájaro y nada más. Una lástima que se pierda un [link]anillo[end link] tan bien realizado. Cuando hayas aceptado la muerte te contaré la historia de ese anillo y del artesano que lo hizo.[or]¿Por qué piensas que tienes alguna oportunidad con algo relacionado con tus dedos? No lo dudes, no tienes ninguna oportunidad.[stopping]".
Understand "dedo" as dedos.

[Anillo]
A anillo sello is part of the dedos. The description of anillo is "[one of]Es lo que te identifica como señor de todos estos parajes. Un título bien merecido por tus virtudes guerreras. Ya sabes a lo que me refiero, la crueladad desmedida y tu gusto por derramar la sangre ajena.[or]La historia del anillo es realmente interesante, pero creo que me la guardaré para mi. Te prometo que te la contaré allá abajo cuando finalmente aceptes la muerte. Claro, que estaremos enredados en cosas más interesantes repletas de dolor y terror, eso es verdad. No sé si te interesará la historia del anillo.[or]Oh... vamos, deja de mirar el anillo y céntrate en lo importante. Tu única salida es aceptar la muerte.[or]Me gustan casi todos los defectos humanos, especialmente los relacionados con el orgullo y la lujuria, pero tu insistencia en revisar el anillo sello que representa tu dig... indignidad como dueño de estas tierras, resulta penosa y aburrida.[or]Sí, sí, sí, lo conoces de sobra, un anillo de brillante oro macizo, casi liso, con un pequeño [link]escudo[end link] quebrado como única decoración.[discover historia escudo][or]Oro. Brillante. Liso. Escudo quebrado. ¡Deja de mirarlo![stopping]".

[Escudo]
A escudo is part of the anillo. The description is "[if historia escudo is unknown by now]Buscas un escudo dónde no lo hay. El [link]sarraceno[end link] se llevó tus armas, especialmente tu magnífica [link]espada[end link].[otherwise][one of]Interesante símbolo, ¿verdad? Tan pequeño y a la vez tan detallado. El [link]artesano[end link] que lo construyó era un personaje de lo más interesante. Ya te contaré su historia.[or]TODO[stopping][end if]".

[Gesto]
A gesto obsceno is a scenery in Megido.
The description of gesto is "[one of]El [link]arraceno[end link] colocó tu [link]mano[end link] con todos los [link]dedos[end link] recogidos excepto el anular. ¿Sabes lo que significa eso? Lo que le hiciste a su mujer.[or]Me gusta el gesto. Es simple y bastante claro. Creo que lo voy a hacer popular. Muy pronto será tan frecuente como levantarse la visera entre caballeros, ya verás... no, no verás nada. Haznos el favor a los dos y acepta la [link]muerte[end link] de una vez.[stopping]".

Section 2 - Cabeza

La cabeza is a  scenery in Megido. 
The description of cabeza is "[one of]¿Realmentete gustaría poder ver tu propia [link]cabeza[end link] AHORA? Vaya, si realmente quieres eso es que eres tan retorcido como yo. ¡Felicidades![or]Si quieres te describo tu [link]cabeza[end link] pero no es agradable, créeme.[or]Oh, está bien, si insistes te diré que tu [link]cabeza[end link] es como una pincho de carne en un espetón, pero mucho menos apetecible.[or]Tu cabeza tiene todo lo que una cabeza tiene que tener, incluyendo tu escaso [link]pelo[end link].[stopping]".

[Pelo]
Some pelo is a scenery in Megido. 
The description of pelo is "No te queda mucho. ¡Eh! ¡No me mires así me pediste no poder morir! ¡Haber pedido que no se te cayese el pelo!".

Section 3 - Pica

La pica is a scenery in Megido.
Understand "lanza" or "lanzas" or "picas" as pica.
The description of pica is "[one of]La verdad es que me hace gracia que el sarraceno haya usado dos de tus propias [link]lanzas[end link] para dejarte aquí así. Las apreciaba mucho, en realidad deberías considerarlo un honor.[or]¿Por qué revisas la [link]pica[end link]? Ya sabes, madera y metal en la punta.[or]No insistas en revisar la [link]pica[end link], no hay mucho más que ver una pica clavada en el [link]suelo[end link].[stopping]".

Section 4 - Urraca

Chapter 1 - Definición y descripción

A urraca is an scenery. The description is "". 
Urraca has an object called on-thing. On-thing of urraca is nothing.

[ State? ]
Urraca can be stupid, happy or sad (this is its state property).

Instead of examining urraca for the first time:
   say "Me encantan las urracas. Esa figura elegante en blanco y
negro. Ese grajido molesto. Esos ojos de inteligencia malvada. Pero lo
que más me gusta es su avidez, sus ansias de picotear cualquier cosa,
acaparar comida e incluso cosas brillantes. Si pudiesen hablar mentirían
como vosotros, estoy convencido. Os parecéis bastante en maldad.".

Instead of examining urraca:
   [ TODO: estado de la urraca y sus intereses ]
   say "[one of]kj[or]Esta urraca en particular parece que se ha
encaprichado contigo. ¿Qué querrá? Sé que es algo más de cuervos, pero
espero que quiera sacarte los ojos[stopping].".

Chapter 2 - Comportamiento de la urraca

[ Posibles destinos de la urraca ]
Urraca platforms is a list of objects that varies.
Urraca platforms is {cabeza,mano,piedras, palmeras,nothing}.

Origen urraca is an object that varies.
Destination urraca is an object that varies.

[ Describir el movimiento, de momento con un montón de condicionales]
To say the urraca is moving from (ori - an object) to (des - an object):
	if ori is not des:
		repeat through Table of description of urraca's movement:
			let valid be true;
			if there is origin entry:
				if origin entry is not ori:
					now valid is false;
			if there is destination entry:
				if destination entry is not ori:
					now valid is false;
			if valid is true:
				now origen urraca is ori;
				now destination urraca is des;
				say description entry;
				say line break;
				break.

[ Movimiento de la urraca ]
To choose a new destination for the urraca:
	let num be a random number from 1 to number of entries in urraca platforms;
	let destination  be entry num of urraca platforms;
	say the urraca is moving from (on-thing of urraca) to destination;
	now the on-thing of urraca is destination.	
	
Table of description of urraca's movement
origin		destination	description
cabeza		mano	"[one of]¡Qué decepcionante! La urraca pasa de tus ojos para irse a tu mano.[or]De nuevo la urraca salta desde tus escasos pelos hasta tus dedos.[or]Una vez más desde tu cabeza a tu mano.[stopping]"
--		cabeza	"[one of]La urraca se decide a subirse a tu cabeza. ¡Bien! Pronto empezará el festín de ojos.[or]La urraca regresa a tu cabeza, ¿empezará esta vez a picotearte los ojos?[or]Mira a la urraca, vuelve a subirse a tu cabeza.[stopping]"	
--	mano		"[one of]Parece que la urraca se ha decidido por tu mano. Le gustarán los dedos, aunque los tuyos son más bien duros y callosos, no creo que sean muy apetitosos.[or]La urraca vuelve a tus dedos. ¿Se comerá alguno esta vez?[if mano is active] Espero que sí, ahora podrás sentir los picotazos.[end if][or]De nuevo el pájaro sobre tu mano. Todo esto empieza a resultarme repetitivo, haz el favor de permitir que te lleve al infierno de una vez.[or]Bueno, una vez más sobre su mano. ¡Pájaro haz algo esta vez![stopping]"
--		--	"La urraca sale volando desde [if origen urraca is nothing]el suelo[otherwise][el origen urraca][end if] hasta [if destination urraca is nothing]el suelo[otherwise][el destination urraca][end if]."

[ La urraca empieza off-stage, así que sólo cuando entra en escena es
cuando se va a mover ]
Every turn when the urraca is on-stage:
	follow the urraca behavior rulebook for on-thing of urraca.
	

[ Comportamiento de Urraca según donde esté ]
Urraca behavior is a object based rulebook. Urraca behavior rules have default success.
	
Urraca behavior:
	choose a new destination for the urraca.

Chapter 4 - Verbos cambiados

Section 0 - Sinonimos

Understand "ex lugar" or "look al rededor" or "look derredor" or "look en derredor" as looking.

Understand the command "dormir" as "duerme".

Section 1 - Inventory

Instead of taking inventory while mano is not active:
	say "[one of]¿Entiendes que eres una [link]cabeza[end link] en una [link]pica[end link]? No puedes tener objetos. En todo caso un sombrero o un casco y no es el caso.[or]Tal vez no lo has entendido bien: una cabeza, una cabeza pinchada en una pica. Como mucho se puede decir que tienes ojos, lengua y orejas, al menos mientras no se los coman las alimañas[if urraca is on-stage], para lo que creo que no falte mucho[end if].[or]No insistas, no llevas nada, no puedes llevarlo.[stopping]".
	
Instead of taking inventory:
	say "[one of]Una [link]cabeza[end link] y una [link]mano[end link], eso es todo lo que queda de tí. ¿Qué esperas poder estar llevando en esta situación?[or]Vale, de acuerdo, es cierto, llevas un [link]anillo[end link], tu viejo anillo. Para lo que te va a servir. Nada más.[or]El [link]anillo[end link] y nada más.[stopping]".
	
Chapter 5 - Nuevos verbos

Section 1 - Morir (el principal)

Dying is an action applying to nothing.

Understand "muere" or "muero" as dying.

Include (-
VerboIrregular "morir" with imperativo 'muere';
-).

Carry out of dying:
	say "Por fin.";
	say line break;
	say "No tenías ninguna salida y lo sabías.";
	say line break;
	say "Gané. Siempre gano.";
	say line break;
	say "Debiste hacerle caso a aquel viejo en las ruinas de Chipre, yo siempre gano.";
	end the story saying "Y ahora te voy a llevar a mi campo de juegos favorito.".

Section 2 - Gritar

Shouting is an action applying to nothing.

Understand "grita" or "aulla" as shouting.