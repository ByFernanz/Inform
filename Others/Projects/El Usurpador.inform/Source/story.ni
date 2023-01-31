"El Usurpador" by "Billy Y. Fernández" (in spanish)
[
- Cuando cambia de localizacion, el objeto seleccionado debe borrarse.
]
[TODO
- Quitar que el fondo tape los elementos interactuables
- Listar direcciones disponibles a las que puede ir
- Seleccionar un objeto o escenario al hacer click
- Listar lista de acciones posibles sobre un objeto
- Darle apariencia de un controld e videojuego a todo
]

[ACCIONES DEL CONTROL

- EN EL CENTRO: MIRAR INVENTARIO

- IZQUIERDA: DIRECCIONES: NORTE, SUR, ESTE, OESTE.

- DERECHA: ACCIONES POSIBLES EN EL OBJETO SELECCIONADO: EXAMINAR, TOMAR, EMPUJAR, etc.

- Z-TARGET: EN EL CENTRO, PRESENTA EL ÚLTIMO OBJETO SELECCIONADO.

]

Part 0 - Configuraciones

Chapter 0 - Includes

Include Vorple by Juhana Leinonen.
Include Vorple Multimedia by Juhana Leinonen.
Include Vorple Screen Effects by Juhana Leinonen.
include Vorple Hyperlinks by Juhana Leinonen.
Include Vorple Command Prompt Control by Juhana Leinonen.
Include Status Line Removal by Emily Short.
[Include Exit Descriptions SP by Matthew Fletcher.]

Chapter 1 - Metadatos

The story title is "El Usurpador". 
The story author is "Billy Y. Fernández". 
The story headline is "Un misterio interactivo". 
The story genre is "Mystery". 
The release number is 1. 
The story description is "La inundación de Fraudavit." 
The story creation year is 2022.

Chapter 2 - Publicación

[Archivos a incluir para la distribución del juego]
Release along with the "Vorple" interpreter. 
Release along with a cover art ("Cover").
[CSS para las animaciones]
Release along with the style sheet "animate.min.css".
[CSS para modificar la apariencia de Vorple]
Release along with the style sheet "usurpadorStyle.css".
[Funciones Javascript llamadas desde el código]
Release along with Javascript "main.js".
[Imágenes necesarias para el efecto de película muda]
Release along with the file "scratch.png".
Release along with the file "noise-transparent.png".
[Imagen de inicio]
Release along with the file "usurpador.gif".
[Sonido de cámara antigua]
Release along with the file "camera.ogg".
[música inicial]
Release along with the file "intro.ogg".

Release along with the file "intro-mascara1.gif".
Release along with the file "intro-mascara2.gif".
Release along with the file "intro-mascara3.gif".
Release along with the file "intro-mascara4.gif".

[para el z-targeting]
Release along with the file "mirilla.png".

Chapter 3 - Reglas

[No imprimir el banner de versión de inform y Vorple]
Rule for printing the banner text: do nothing.
The display Vorple credits rule is not listed in any rulebook.

[Convertir los nombres de los objetos sean enlaces]
Rule for printing the name of something: place a link to execute the JavaScript command "console.log('Click sobre el objeto [printed name]')" reading "[printed name]".[place a link to command "examinar [printed name]" reading "[printed name]".]

[instead of doing anything while current action is not looking:
	clear the screen;
	try looking;
	continue the action.]
	
Chapter 4 - Extensiones modificadas

Section 1 - Exit Descriptions SP
[Exit Descriptions SP by Matthew Fletcher]

The amount is a number variable.
The amount is 0.

The num is a number variable.
The num is 0.

[After looking:
    Now the amount is the number of adjacent rooms;
    REPEAT with destination running through adjacent rooms begin; 
        if the num is 0, say "Salidas:";
        let the way be the best route from the location to the destination,using even locked doors;
        if the way is a direction, place a link to command "ir al [way]" reading " [way]";
	if the way is east, say "la direccion este";
        [if the destination is visited, say " hacia [the destination]";]
        Decrease the amount by 1;
        Increase the num by 1;
        if the amount is 0, say ".";
        if the amount is 1, say " y";
        if the amount is greater than 1, say ",";
    END repeat;
    Now the amount is 0;
    Now the num is 0.]

After looking for first time:
	create controller.

Every turn:
	create controller.

Part 1 - Bibliografía

Part 2 - Procedimientos

to preload images:
	preload image "usurpador.gif";
	preload image "intro-mascara1.gif";
	preload image "intro-mascara2.gif";
	preload image "intro-mascara3.gif";
	preload image "intro-mascara4.gif";
	
To create controller:
	execute JavaScript command "saveLastLink()";
	execute JavaScript command "$('.controller').remove()";
	open HTML tag "div" called "controller";
	open HTML tag "div" called "directional-buttons";
	place "div" element called "middle";
	Now the amount is the number of adjacent rooms;
    	REPEAT with destination running through adjacent rooms begin;
		if vorple is not supported begin;
        		if the num is 0, say "Salidas:";
		end if;
        	let the way be the best route from the location to the destination,using even locked doors;
		if vorple is not supported begin;	
        		if the way is a direction, say " [way]";
		end if;
		if vorple is supported begin;
			if the way is east begin;
				open HTML tag "div" called "right";
					place a link to command "Ir al este" reading "E";
				close HTML tag;
			end if;
			if the way is west begin;
				open HTML tag "div" called "left";
					place a link to command "Ir al oeste" reading "O";
				close HTML tag;
			end if;
			if the way is north begin;
				open HTML tag "div" called "top";
					place a link to command "Ir al norte" reading "N";
				close HTML tag;
			end if;
			if the way is south begin;
				open HTML tag "div" called "bottom";
					place a link to command "Ir al sur" reading "S";
				close HTML tag;
			end if;
		end if;		
        [if the destination is visited, say " hacia [the destination]";]
        Decrease the amount by 1;
        Increase the num by 1;
	if vorple is not supported begin;
        	if the amount is 0, say ".";
        	if the amount is 1, say " y";
        	if the amount is greater than 1, say ",";
	end if;
    	END repeat;
    	close HTML tag;
		open HTML tag "div" called "selections-buttons";
			place "div" element called "row mirilla" reading "";
			execute JavaScript command "$('.mirilla')[bracket]0[close bracket].innerText=lastClickLink;";
			open HTML tag "div" called "row mediafuente";
				open HTML tag "div" called "select";
					place a link to command "mirar" reading "mirar";
				close HTML tag;
				open HTML tag "div" called "start";
					place a link to command "inventario" reading "invent.";
				close HTML tag;
			close HTML tag;
		close HTML tag;
	open HTML tag "div" called "mainbuttons";
		open HTML tag "div" called "row actions";
			place "div" element called "select" reading "EXAMINAR";
			place "div" element called "start" reading "TOMAR";
			place "br" element;
			place "div" element called "select" reading "ROMPER";
			place "div" element called "start" reading "REFLEJAR";
		close HTML tag;
	close HTML tag;
	close HTML tag;
    	execute JavaScript command "createDirections()";
    	Now the amount is 0;
    	Now the num is 0.
	[open HTML tag "div" called "controller";
		open HTML tag "div" called "directional-buttons";
			place "div" element called "middle";
			open HTML tag "div" called "left";
				place a link to command "Ir al oeste" reading "O";
			close HTML tag;
			place "div" element called "top" reading "N";
			place "div" element called "right" reading "E";
			place "div" element called "bottom" reading "S";
		close HTML tag;
		[open HTML tag "div" called "selections-buttons";
			place "div" element called "row";
			place "div" element called "row";
			open HTML tag "div" called "row mediafuente";
				place "div" element called "select" reading "mirar";
				place "div" element called "select-button";
				open HTML tag "div" called "start";
					say "maletín";
					place "div" element called "start-button";
				close HTML tag;
			close HTML tag;
			place "div" element called "row bigger";
			place "div" element called "row";
		close HTML tag;
		open HTML tag "div" called "mainbuttons";
			open HTML tag "div" called "a-container";
				place "div" element called "a";
			close HTML tag;
			open HTML tag "div" called "b-container";
				place "div" element called "b";
			close HTML tag;
		close HTML tag;]
	close HTML tag.]

[Pausar, limpiar y continuar el flujo narrativo]
To touch to continue:
	if vorple is supported, place a "div" element called "tocar" reading "toca para continuar";
	otherwise:
		say "[paragraph break]";
		center "[cursive font style]Presiona cualquier tecla para continuar...[end style]";
	wait for any key;
	clear the screen.

Part 3 - Cortometrajes	

To introductory short film:
	place an image "intro-mascara1.gif" called "cover margin" with description "", centered;
	center "[cursive font style]'Cada día es un carnaval'[end style], dice la gente de Fraudavit.";
	touch to continue;
	place an image "intro-mascara2.gif" called "cover margin" with description "", centered;
	center "Desde que nacen, a los habitantes de la ciudad se les asigna una máscara que deben llevar durante toda su vida...";
	touch to continue;
	place an image "intro-mascara3.gif" called "cover margin" with description "", centered;
	center "pero cuando mueren, tanto la máscara como su rostro son incinerados, porque...";
	touch to continue;
	place an image "intro-mascara4.gif" called "cover margin mw50" with description "", centered;
	center "si la máscara cayera en manos de otra persona, esta podría usurpar la vida del fallecido.";
	touch to continue;
	place a "div" element called "center-page" reading "Pero tú Miles, todo esto ya lo sabes. ¿Acaso no llevas también una máscara?";
	touch to continue;
	
	
Part 4 - Inicio	

When play begins:
	[hide the prompt;]
	preload images;
	play sound effect file "camera.ogg";
	play music file "intro.ogg", looping;
	execute JavaScript command "runMain()";
	if vorple is supported:
		place a "h2" element called "titulo2" reading "Textagames";
		place a "h1" element called "titulo1" reading "El Usurpador";
	otherwise:
		center "[bold type]EL USURPADOR[roman type]";
	place an image "usurpador.gif" called "cover" with description "", centered;
	touch to continue;
	introductory short film;
	execute JavaScript command "$('#vorple').css('z-index', '1')". [Para poder interactuar con el texto]

Part 5 - Locaciones

Chapter 1 - Ciudad Fraudavit

Section 1 - Casa del Doctor

The CasaRisus (f) is a region. The HabitacionMiles and Elit_Nivel2 are in the CasaRisus.

The HabitacionMiles is a room. It is female. The printed name is "Habitación de Miles". The description is "Este es tu cuarto, el pequeño receptáculo de tus pensamientos, las paredes de tu condena. Una cama, un [RoperoMiles], un [EspejoMiles]... Con poco es suficiente, siempre te dices.".

The EspejoMiles (m) is a scenery  in the HabitacionMiles. The printed name is "espejo". Understand "espejo" as EspejoMiles. The description is "Aquí no hay nada que ver".

Table of EspejoMiles Actions
Actions		Activated
"examinar"	true
"romper"	true
"mirar"		true

after examining the EspejoMiles:
	say "las acciones posibles sobre [the noun] son: ";
	repeat through the Table of EspejoMiles Actions begin;
			if Activated entry is true begin;
				say "[Actions entry], ";
			end if;
	end repeat;

The RoperoMiles (m) is a container, openable and closed in the HabitacionMiles. The printed name is "ropero". The description is "Es un ropero". Understand "ropero" as RoperoMiles.

Rule for printing room description details of RoperoMiles: omit contents in listing.	

The SueloMiles (m) is a scenery in the HabitacionMiles. The printed name is "piso". The description is "El piso es de baldosas triangulares". Understand "suelo", "piso" and "baldosa" as SueloMiles.

The ParedesMiles (m) are a scenery. The printed name is "paredes". The description is "Detrás de cada máscara, ¿hay una persona o un demonio? Me miro al espejo, ¿es la máscara que mira o eres tú?". Understand "paredes", "pared" as ParedesMiles.

The Miles_Cama (f) is a scenery in the HabitacionMiles. The printed name is "cama". The description is "Una cama muy cómoda hecha de paja." Understand "cama" as the Miles_Cama.

instead of looking in HabitacionMiles for the first time:
	say "Abres los ojos, con el vago recuerdo del sueño: muerte; ecos de una risa estrepitosa en toda la ciudad; vivos entre los no vivos; inundación; el llanto de una mujer en lo profundo; una voz agonizante, que te susurra auxilio...[paragraph break]";
	say "Te levantas de la cama asustado.[paragraph break]";
	continue the action.


The Elit_Nivel2 (m) is a east of the HabitacionMiles. The printed name is "Casa del doctor Elit: Nivel #2". The description is "Es un pasillo que conecta ambas habitaciones".

The ElitNorte is a north of the HabitacionMiles.



Part 5 - Objetos

Part 6 - Personajes

Miles is a man. The description is "Un hombre muy guapo". The printed name is "Miles". The player is Miles.


