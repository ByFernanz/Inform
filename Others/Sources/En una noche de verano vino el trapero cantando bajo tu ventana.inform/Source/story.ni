"En una noche de invierno apareció el trapero cantando bajo tu ventana" by Expio (in Spanish)

 Include Basic Screen Effects by Emily Short.

[ Historia original por Expio. Editado por Ruber Eaglenest. ]

[ The story headline is "(c) 2008 Expio".]
 The release number is 2.
 The story creation year is 2008.
 The story genre is "horror".


[  Use full-length room descriptions and no scoring.]
  Use no scoring.
  [Use Auto Pronouns.] [actualiza pronombres al mencionar las cosas de una habitacion]
[  Release along with the source text, cover art, a solution and a website.]

Part  1 - Visita nocturna

[Sound of musica is the file "shadow.ogg". ]

When play begins:
	[play the sound of musica;]
	say "Tal vez fuese el frío o la sensación de un vacío a mi lado, pero me encontraba despierta. No me atrevo a moverme y permanezco mirando el techo con las manos por debajo de las sábanas.

Supongo que a vosotros también os ha pasado alguna vez. Os despertáis a altas horas de la noche, con una sensación de que hay alguien en tu habitación, termináis por encender una vela y descubrís que no hay nada, tan solo un ratón noctámbulo en el mejor de los casos.

Solo que esta vez sabia que el estaba allí cerca.

Había venido a cobrar una antigua deuda, de cuando aún era joven, de cuando aún creía en el futuro y corría desnuda entre las campanillas.

- Han pasado cinco veces cinco años, mi niña de ojos verdes... cinco veces cinco años de fortuna y suerte. Un hombre que te ame, un hijo de cabellos como el trigo en verano, dinero escurriéndose entre tus dedos, una casa con una verja blanca y sirvientes que la atiendan.

Unos dedos mas fríos que la escarcha me rozan el rostro, mientras una cacofonía de diez voces susurra en mis oídos, pero reprimo el grito que pugna por taladrar mi garganta y permanezco con los ojos cerrados.

- ¿Duermes? No lo creo. Como ves mantengo mis promesas ¿Mantendrás las tuyas? ¿El deseo de mi corazón a cambio de un tiempo de dicha?

Oigo crujir los tablones del suelo. Se aleja. Está... está cerca de la cuna, lo sé.

- No pido ni oro, ni plata, ni riqueza terrenal. No deseo nada vano, ni nada que no me puedas dar. Solo pido algo de lo que un mortal se puede desprender. Dámelo y nuestro contrato será sellado, doblado y guardado en el cuarto cajón de la sala centésima en la torre más alta de mi castillo invertido. Niégamelo y me llevaré a tu hijo, tu marido sufrirá una muerte atroz, tus sirvientes te abandonarán vertiendo veneno sobre tu honra y el invierno anidará en tu hogar... Dame... dame el amor de una madre y todo estará saldado. Solo cinco latidos de tu corazón te concedo.


Con un suspiro me incorporo.";                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
wait for any key;
clear the screen.

The Dormitorio is a room."Me encuentro hundida en la semioscuridad de la habitación. En el hogar brillan unos rescoldos moribundos que apenas llegan a iluminar la escena. La mayor parte de la luz proviene de la luna que penetra invasora por una ventana abierta por la cual se cuela algún esporádico trapo de nieve.

Debe llevar un tiempo abierta ya que ha llegado a acumularse un poco sobre el clavecín que se encuentra debajo. 

El Trapero se encorva sobre la cuna de mi único hijo en la esquina más alejada de la habitación. Lo oigo musitar una canción de cuna mientras teje con sus largos dedos complicadas esculturas de hilo, que mi niño intenta aferrar juguetón. 

Estoy reclinada en la cama, apoyada la espalda contra el cabecero. A mi lado hay un vacío. Las sabanas han sido apartadas ".

Final is a number that varies. Final is 0.

Every turn, increase final by 1.

every turn, If final is 1, say "- Uno era el astro rey.".
every turn, If final is 2, say "- Dos eran los habitantes del paraiso.".
every turn, If final is 3, say "- Tres eran los reyes portadores de regalos...".
every turn, If final is 4, say "- Cuatro las desdichas que marcarán el final del reinado hombre...".

every turn, If final is 5,  end the story saying "- Y cinco son los rostros que mi mano derecha ha engendrado. 

Mi corazón lo ha dictado. Cinco latidos han sonado. Ni cuatro ni seis han sido, cinco es el número elegido. Y viendo que por lo que he venido se me ha negado no queda más resultado que cumplir lo estipulado. Que la amargura y el frío sean ahora por siempre tus  amantes dispuestos, ya que lo que antes era tuyo ahora es mío.".

A cama is here. It is scenery and female.
	The description is "Una amplia cama de matrimonio de blancas sábanas y un colchón de hoja de maiz. Se me hace aún más grande con el hueco que ha dejado mi esposo. Paso la mano por las frías sábanas. Enredado entre las sábanas encuentro un ejemplar de el Hijo del Hombre."
	Understand "vacio" as cama.

A sabanas are here. It is scenery and female.
	The description is "Unas suaves sábanas de lino blanqueadas con ceniza. En una esquina están bordadas las iniciales M.A.".

A colchon is here. It is scenery and male.
	The description is "Un mullido colchón relleno de hojas de maíz."

A libro is here. It is scenery. The description is "Es un ensayo sobre evangelios escrito por el padre Giovanni Lanfranco. Últimamente me gusta leerlo antes de dormir. Tal vez como una expiación por mi vida pasada." The printed name is "Hijo del Hombre".
	Understand "hijo de hombre" as the libro.
	Understand "libreto" as libro.
	Understand "ejemplar" as libro.

A ventana is here. It is scenery and container.  It is openable and closed.
	The description is "La ventana está abierta. Tal vez por el fuerte viento invernal o por la entrada del Trapero. Aunque que yo sepa nunca ha necesitado entrar en una casa, siempre ha estado allí donde nunca miras."
	Instead of opening or closing the ventana, say "Extiendo mis fríos dedos, pero las fuerzas me fallan. Es como si tuviese una losa encima, tal vez sean mis culpas.".

A Clavecin is here. It is scenery. The description is "Una de las pocas aficiones que me permito. Me han dicho que toco bastante bién así que lo he situado junto a la ventana, por cuestiones estéticas y por un punto de vanidad. Sobre su tapa reposa la partitura ·Concierto para piano y orquesta nº 33· de Béla Bartók".

A cuna is here. It is scenery. The description is "La cuna donde reposa mi hijo. Es de madera de pino y está adornada con motivos florales. Tallada por mi propio marido. Siempre le dije que un fabricante de violines no podía construir otra cosa, pero se empeño en contradecirme y he de reconocer que le quedó muy bien.".


A man called niño is here. The niño is scenery.
	The printed name is "mi niño".
	The description is "Mi tesoro, mi vida. Cuando pensé que ya no era posible... ocurrió. Mi alegría y tristeza. Alegría por un regalo esperado, tristeza porque fue la rúbrica a un contrato. Ahora está llorando quedamente, tal vez tenga hambre o miedo.".
	Understand "hijo" as niño.
	Understand "al hijo" as niño.
	Understand "el hijo" as niño.
	Rule for writing a paragraph about niño: 
	   say " ".

Telling niño about something is conversation behavior.
Answering niño that something is conversation behavior.
Asking niño about something is conversation behavior.
Asking niño for something is conversation behavior.


	
A man called Trapero is here. The Trapero is scenery.
	The printed name is "el Trapero".
	The description is "Un antiguo recuerdo de mi juventud. De tiempos de deseos y caminos torcidos. Se asemeja a un espantapájaros desechado, de miembros rotos y retorcidos. Cuando se mueve sus extremedidades adoptan ángulos imposibles que parecen ejecutar una extraña danza, como si lo manejase un marionetista loco. Viste una vorágine de telas y colores sin orden ni concierto, de la que penden adornos tan dispares como un reloj de bolsillo, un rosario, el ojo de un salmón, una Grylloblatta, un pendiente del cual aún cuelga una oreja,... lo que para nosotros es basura para el es la más preciada de las joyas, un trofeo carente de banalidad.

Lo peor de todo son su cabeza y manos. En vez de testa luce un vacío rostro de maniquí de modista, plano y sin adornos y como única concesión a una figura humana luce una enredada peluca, como las que se ven en las fiestas del barrio alto. Sus manos... sarmientos metálicos de las que cuelgan hilos con los que se entretiene creando extrañas formas... una cuna, un barco, un pájaro... todo ello mientras los diminutos rostros de querubín que son la punta de sus dedos no cesan de parlotear.".
	Instead of attacking Trapero, say "La laxitud que parece haber tomado mi cuerpo me impide moverme. El trapero ríe mientras me ve debatirme y susurra... solo una cosa te pido.".
	Understand "trapero" as Trapero.
	Understand "al trapero" as Trapero.


Telling Trapero about something is conversation behavior.
Answering Trapero that something is conversation behavior.
Asking Trapero about something is conversation behavior.
Asking Trapero for something is conversation behavior.

Instead of conversation behavior:
	say "Intento hablar pero el aire escapa silenciosamente entre mis labios -Shhh. No te esfuerces, tranquila pronto podrás dormir. Solo calma mi sed y todo acabará.-".


Taking something is taking behavior.

Instead of taking behavior:
	say "Extiendo mis fríos dedos, pero las fuerzas me fallan. Es como si tubiese una losa encima, tal vez sean mis culpas.".

Examining yourself is examining behavior.

Instead of examining behavior:
	say "Un cuerpo que ya lleva treinta y cinco años a las espaldas. Aún me conservo bien aunque hay tenido recientemente un hijo (mi madre siempre se quejó de que no tenia caderas para ello) y mis pechos se encuentran hinchados. Digamos que aún provoco alguna mirada en los bailes sociales.".

Instead of going nowhere, say "No... no puedo moverme.".


Ayudaring is an action applying to nothing.

Understand "ayuda" or "help" as ayudaring.

Check ayudaring:  if the player carry nothing, say "Esta es una obra de ficción interactivo algo particular. Solo consta de un rompecabezas y una orden exacta para ganar. El método de interacción del juego es el habitual en este tipo de juegos: se debe de escribir lo que se quiere hacer a continuación, por ejemplo, puedes examinar el entorno como -examinar cuna-, o realizar cualquier otra acción como-tocar la trompeta- -atacar orco- si lo hubiera. Intenta pensar en lo que escribes y no te desesperes si no encuentras el comando correcto al principio. Si te lo tomas con calma, encontrarás la solución.

Este juego fue hecho para Rapidocomp 2 (una competencia española para juegos rápidos, en 2008) por Expio. Localizado al inglés y revisado para ECTOCOMP 2019 por Ruber Eaglenest. Revisión editorial en inglés por Caleb Wilson."


Nofeeding is an action applying to nothing.

Understand "amamanta" or "alimenta" or "da leche" or "da teta" or "da pecho" as Nofeeding.

Carry out Nofeeding: try Amamantaring the niño.


Amamantaring is an action applying to one visible thing.

Understand "amamanta a [someone]" or "amamanta [someone]" or "da teta a [someone]" or "da pecho a [someone]" or "alimenta [someone]" or "alimenta a [someone]" or "da leche a [someone]" as Amamantaring.

Check Amamantaring:  if the player carry nothing, say "Mi niño tiene hambre... pero no puedo alcanzarlo. Cada vez hace más frio.".

Instead Amamantaring Trapero: if player is in dormitorio begin;
 say "-Be.. Bebe- logro articular con un esfuerzo que casi agota mis escasas fuerzas. El Trapero palmotea divertido y se abalanza sobre mí, rasgándome el camisón en su ansia devoradora. Sus manos chillan de regocijo mientras se turnan en arrebatarme un trozo de mi. Mi hijo chilla en un rincón olvidado, confuso, pero ahora mi mundo se reduce a este momento de pérdida y liberación.

Poco a poco la risa del Trapero se va apagando.

-Muy bien... caliente y sustancioso es el amor de una madre. Esto hará que mi corazón conozca el verano por algún tiempo. Nuestra cuenta ha sido saldada, nuestro pacto completado. Ahora me retiro, ya que otras almas que ansían lo que ya tienen requieren mis cuidados.

Abro los ojos.

Mi hijo sigue llorando. 

Me levanto, cierro la ventana y avivo el fuego.

Acuno a mi hijo en mis brazos. Tiene hambre pero estoy vacía. Solo... puedo ofrecerle frio."; End the story finally;   end if.