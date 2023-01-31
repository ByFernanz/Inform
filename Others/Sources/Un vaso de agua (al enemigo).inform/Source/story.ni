"Un vaso de agua (al enemigo)" by El Clérigo Urbatain (in spanish)

Book 1 - Un vaso de agua (al enemigo)

The story headline is "Una versión".
The story genre is "Fiction".
The release number is 2.
The story creation year is 2008.
The story description is "Una versión interactiva de la canción 'Un vaso de agua (al enemigo)' de Radio Futura."

Include Basic Screen Effects by Emily Short.

Part 0 - Inicialización

Use full-length room descriptions.

When play begins:
	display the boxed quotation
	"Perseguido, por la calle desierta con un zig-zag,
Aturdido, golpeó la puerta y entró.
Al fondo de la sala oscura unos ojos,
-¿Quién eres tú?
-Soy un hombre muerto.
Se acerca una luz.
Das un vaso de agua, al enemigo.
Das un vaso de agua, al enemigo.

Radio Futura, En un país en llamas.";
	show the current quotation;
	wait for any key;
	Change the player to José;
	remove yourself from play;
	move the player to mecedora.


Before doing something other than examining to something (called the
far object) when the holder of the player is not a room:
        if the far object is the holder of the player, continue the
action;
        if the holder of the player encloses the far object, continue
the action;
        say "Debes salir [if the holder of the player is a
container]de [otherwise]de dentro de [end if][the holder of the player].";
        stop the action.

Part 1 - La casa de José

Chapter 1 - La habitación oscura

Sala oscura is a room. The description is "Humilde, en sombras, distingues a ver una mesa cercana. Dos puertas abandonan la habitación, una hacia el norte hasta la cocina y la puerta de madera de salida a la calle, junto a ella una ventana de una sola hoja."

The mesa is here. It is female and scenery.

The cenicero is on the mesa. It is a container, open. The carrying capacity is 1.

Some cenizas is in the cenicero. They are female.

The bolsa de papel is on the mesa. It is a container, openable, closed and female. The carrying capacity is 1. The description is "Es una bolsa de papel impresa de una marca popular de tabaco de liar." The tabaco de liar is in the bolsa de papel.
After taking the tabaco de liar, say "Tomas un pequeño puñado de tabaco con tres dedos de la bolsa, algunas hebras caen de tu mano otra vez dentro de la bolsa."

The libreto is on the mesa. The description is "Es un libreto que contiene láminas de papel de fumar." A lamina de papel is in the libreto.

The vela apagada is on the mesa. It is female.

The oblea pan élfico is on the mesa. The printed name of the oblea is "oblea de pan élfico".

The mechero is on the mesa. The description is "Es un mechero de cuerda, rueda y mina de pedernal."

The mecedora is here. It is a supporter, scenery and female.

The ventana is here. It is scenery and female. The description is "A través de la ventana puedes ves la calle desierta." Instead of searching the ventana, try examining the ventana.

The puerta is east of Sala oscura and west of Calle desierta. The puerta is a door, scenery and female.
Instead of searching the open puerta, say "A través de la puerta puedes ver la calle desierta."
Instead of searching the closed puerta, say "Está cerrada, no puedes ver nada a través de ella."

Chapter 2 - La cocina

Cocina is a room. The description is "En la penumbra distingues el hogar apagado y una estantería llena de enseres. La puerta hacia el sur lleva hasta la habitación oscura."

The estanteria is here. The printed name is "estantería". The description is "En la pared oeste un arco enmarca una estantería de madera con unos pocos enseres de cocina."
The estanteria can be moved or unmoved.
Instead of examining the moved estanteria, say "La estantería ahora está movida de su sitio, y la entrada a la cueva ya no es un secreto, nunca más."

Part 2 - Personajes

Chapter 1 - Jose

José is on the mecedora. The description is "Eres José Moral Expósito."
The cigarro is carried by José. The description is "Un cigarro liado a medio fumar."
Instead of opening the cigarro, say "No quieres desarmar el cigarro."

Chapter 2 - El enemigo

Part 3 - La calle

Calle desierta is a room. The description is "Más una plaza que una calle, está completamente a oscuras salvo por la luz de la luna que ilumina el suelo adoquinado. Las casas blancas se agolpan alrededor. Hacia el oeste está tu casa y más allá las montañas. Las casas nacen directamente de la montaña."