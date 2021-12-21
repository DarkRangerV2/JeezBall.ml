#load "graphics.cma";;



#load "unix.cma";;
open Unix;;
open Graphics;;

(* Un petit test *)


open_graph "800x800";;
foreground 1 100 1;;


type balle={pos_x:int ref; pos_y:int ref; sortie:bool ref; direction_x:int ref; direction_y:int ref};;

let direction_x= ref 10;;let direction_y= ref 10;;

let jeu =
let r = ref 100 in 
let a = ref 100 in 
let b= ref 100 in 
	fill_circle 300 200 100;
	while true do 
		a:= !a + !direction_x;
		b:= !b + !direction_y;
				clear_graph ();
				fill_circle !a !b !r ;
				let dedans = ref false in 
					while not !dedans do
						let clic = wait_next_event [Button_up] in
							dedans := distance2 (!a,!b) (clic.mouse_x, clic.mouse_y) <= !r * !r;
					done;
				r := !r-5;
		done;;
		
let distance2 (x1, y1) (x2, y2) = 
	let dx = x1- x2 and dy = y1-y2 in
		dx * dx  + dy * dy;;
		

typedef balle{
	int pos_x;
	int pos_y;
	bool sortie;
	int direction;
	};;

let jeu =
	open_graph "800x500"; 
	let boule={pos_x= ref 50; pos_y=ref 50; sortie= ref false; direction_x= ref 1;direction_y=ref 1} in
	fill_circle !(boule.pos_x) !(boule.pos_y) 50;
	let compteur=ref 0 in
	while !compteur<=100000 do
 		while not !dedans do
						let clic = wait_next_event [Button_up] in
							dedans := clic.mouse_x<=800 && clic.mouse_x>=0&& clic.mouse_y<= 500 && clic.mouse_y>=0;
				if !(boule.pos_x)+50>=800 || !(boule.pos_x)-50<0 then begin
 						boule.direction_x:= - !(boule.direction_x);
 							end;
 				if !(boule.pos_y) +50>=500 || !(boule.pos_y)-50<0 then begin
 							boule.direction_y:=- !(boule.direction_y);
 								end;
 				clear_graph();
 				boule.pos_y:=!(boule.pos_y)+ !(boule.direction_y);
 				boule.pos_x:=!(boule.pos_x)+ !(boule.direction_x);
 				fill_circle !(boule.pos_x) !(boule.pos_y) 50;
 				compteur:=!compteur+1;
 				let clic = wait_next_event [Button_up] in
 				sleepf 0.00099999999999999999999999999;
 			done;
 	let basGaucheAbs = clic.mouse_x -(clic.mouse_x mod 32) (*car 800/25=32*)in
 	let basGaucheOrd = clic.mouse_y - (clic.mouse_y mod 20)
	let_mur basGaucheAbs basGaucheOrd
 	done;; 		
 		
 			
 jeu();;

(* faire un let_mur positiongauchedumur  ordonneedubasgauche ET argument couleur en optionnel*)


type mur ={ (*abscisse des mur*)hor:int;(*liste des cases prises par le mur descendant*)liste_D: int list; (*liste des cases prises par le mur montant*)liste_M:int list} ;;




;;


let r = ref 100 in
		while true do
			let a,b = alea_dans_fenetre !r in
				clear_graph 	();
				fill_circle a b !r ;
				let dedans = ref false in 
					while not !dedans do
						let clic = wait_next_event [Button_up] in
							dedans := distance2 (a,b) (clic.mouse_x, clic.mouse_y) <= !r * !r;
					done;
				r := !r-5;
		done;;