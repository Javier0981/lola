class npc{
float posxn,posyn,tamxn,tamyn,velon;
int pro=0;
int pri=0;

npc(float pposxn,float pposyn,float ttamxn,float ttamyn,float vvelon){
posxn=pposxn;
posyn=pposyn;
tamxn=ttamxn;
tamyn=ttamyn;
velon=vvelon;
}
//jugador
void control(){
  rect(posxn,posyn,tamxn,tamyn);
  if(keyPressed){
    if(key == 'a' || key == 'A'){ posxn -= velon;}
    if(key == 'd' || key == 'D'){ posxn += velon;}   
   //salto 
    if(key == 'w' || key == 'W'){pro=1;}
  }

//bajada automatica
if(pro==1){posyn-=velon; pri+=1;}
if(posyn>=550){posyn=550; pri=1;}
if(pri>=25){posyn+=velon; pro=2;}
}
//plataforma
void plata(){
rect(posxn,posyn,tamxn,tamyn);

posxn-=velon;
if(posxn <-tamxn){
 posxn = random(900,1500);
 posyn= random(10,700);
 }

}
 boolean colide(npc jugador){
    if(posxn > jugador.posxn-jugador.tamxn-30 && posxn <jugador.posxn+jugador.tamxn+30){
      if(posyn > jugador.posyn-jugador.tamyn+20 && posyn <jugador.posyn+jugador.tamyn-20){
        return true;
    
      }    
    }   
   return false;
 }

//dddd
}
