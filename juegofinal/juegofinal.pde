npc jugador;
npc[] enemis = new npc[5];

void setup(){
  rectMode(CENTER);
size(800,800);
 for (int i = 0; i < enemis.length; i++){
   float x = random(900,1900);
   float y = random(10,700);
 enemis[i]= new npc(x,y,random(100,200),10,10);
 }
jugador = new npc(50,550,50,70,10);
//cualquier cosa
}
void draw(){
 background(0);
for (int i = 0; i < enemis.length; i++){
enemis[i].plata();
    if(enemis[i].colide(jugador)){
      exit();
    }
}
// no se que poner
jugador.control();

//todo bien en casa?

}
