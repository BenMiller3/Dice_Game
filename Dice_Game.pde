//import the necessary files
import processing.video.*;
Movie myMovie;
Movie myMovie2;
Movie myMovie3;
Movie myMovie4;
Movie myMovie5;
Movie myMovie6;
Movie myMovie7;

//music imports
import ddf.minim.*;
Minim minim;
//Intro Song
AudioPlayer player;
//Dice Roll
AudioPlayer player2;
//7 Rolled
AudioPlayer player3;
//11 Rolled
AudioPlayer player4;
//LVL 2 SONG
AudioPlayer player5;
//LVL 3 SONG
AudioPlayer player6;
//LVL 4 SONG
AudioPlayer player7;
//GAME OVER
AudioPlayer player8;
//INTRODUCTION SONG
AudioPlayer player9;
//Menu Switches
AudioPlayer player10;

//imports the images
PImage back0,back1,back2,back3,back4;
PImage die1a,die2a,die3a,die4a,die5a,die6a;
PImage die1b,die2b,die3b,die4b,die5b,die6b;
PImage die1c,die2c,die3c,die4c,die5c,die6c;
PImage die1d,die2d,die3d,die4d,die5d,die6d;
PImage char0,char1,char2,char3,char4,char5,char6,char7,char8,char9,char10,char11,char12,char13,char14,char15;
PImage gameOver1,creditsOG,selChar,menuButton,congrats;

//Player Level
int level = 0;

//Bools for One Timers
boolean lvl2movie = false;
boolean lvl3movie = false;
boolean lvl4movie = false;

//Credits Screen
int screen = 0;

//Player Money
int moneyC0 = 100; 
int moneyC1 = 100;
int moneyC2 = 100;
int moneyC3 = 100;

//To Win Game
float user = 0;
float ezy = 0;
float dave = 0;
float lily = 0;
float maxer = 0;

//Play Movies
boolean playMovie1 = true;
boolean playMovie2 = false;
boolean playMovie3 = false;
boolean playMovie4 = false;
boolean playMovie5 = false;
boolean playMovie6 = false;
boolean playMovie7 = true;

//Who's turn is it
int turn = -2;

//Begin Game
boolean begin = false;
boolean betTime = true;

//Audio
boolean playOnce = true;

//Dice
float a = -1;
float b = 0;

//Character Selector
String whoRU = "";

//Menu Sounds only go once
boolean mainMenu = false;boolean mainMenu2 = false;boolean mainMenu3 = false;
boolean mainMenu4 = false;boolean mainMenu5 = false;boolean mainMenu6 = false;
boolean mainMenu7 = false;boolean mainMenu8 = false;boolean mainMenu9 = false;
boolean mainMenu10 = false;boolean mainMenu11 = false;boolean mainMenu12 = false;
boolean mainMenu13 = false;boolean mainMenu14 = false;boolean mainMenu15 = false;
boolean mainMenu16 = false;boolean mainMenu17 = false;boolean mainMenu18 = false;
boolean mainMenu19 = false;boolean mainMenu20 = false;boolean mainMenu21 = false;
boolean mainMenu22 = false;


//Character Selection
boolean selCharacter = false;

//OG Bet
int OGAmt = 100;
int bet = 20;

//Winners
float numC0 = 0;
float numC1 = 0;
float numC2 = 0;
float numC3 = 0;
boolean winner = false;

//Only take money once
boolean oneTime = false;
boolean oneTaker = false;

//Is this player still in the game?
boolean P0Out = false;
boolean P1Out = false;
boolean P2Out = false;
boolean P3Out = false;

//Anti Timer
float timer = 0;

//Roll Arguments
boolean roll = false;
boolean rollA = false;
boolean uRolled = false;

void setup(){
size(650,500);

//Load Movies
myMovie = new Movie(this, "introMovie.mp4");
myMovie.loop();

myMovie2 = new Movie(this, "lvl1.mp4");
myMovie3 = new Movie(this, "instructions.mp4");
myMovie4 = new Movie(this, "lvl2.mp4");
myMovie5 = new Movie(this, "lvl3.mp4");
myMovie6 = new Movie(this, "lvl4.mp4");
myMovie7 = new Movie(this, "Outro.mp4");

//Load and Play Music
minim = new Minim(this);

//Load Tracks
player = minim.loadFile("song1.mp3",2048);
player2 = minim.loadFile("shake.mp3",2048);
player3 = minim.loadFile("roll7.wav",2048);
player4 = minim.loadFile("roll11.wav",2048);
player5 = minim.loadFile("lvl2.mp3", 2048);
player6 = minim.loadFile("lvl3.mp3", 2048);
player7 = minim.loadFile("lvl4.mp3", 2048);
player8 = minim.loadFile("gameOver.mp3",2048);
player9 = minim.loadFile("introSongCut.mp3",2048);
player10 = minim.loadFile("menu.mp3",2048);

//Load Images
back1 = loadImage("back1.png"); back2 = loadImage("back2.png"); die1a = loadImage("die1a.png");
die2a = loadImage("die2a.png"); die3a = loadImage("die3a.png"); die4a = loadImage("die4a.png"); 
die5a = loadImage("die5a.png");die6a = loadImage("die6a.png"); char0 = loadImage("char0.png");
die1b = loadImage("die1b.png");die2b = loadImage("die2b.png");die3b = loadImage("die3b.png");
die4b = loadImage("die4b.png");die5b = loadImage("die5b.png");die6b = loadImage("die6b.png");
char1 = loadImage("char1.png"); char2 = loadImage("char2.png"); char3 = loadImage("char3.png"); 
die1c = loadImage("die1c.png");die2c = loadImage("die2c.png");die3c = loadImage("die3c.png");
die4c = loadImage("die4c.png");die5c = loadImage("die5c.png");die6c = loadImage("die6c.png");
die1d = loadImage("die1d.png");die2d = loadImage("die2d.png");die3d = loadImage("die3d.png");
die4d = loadImage("die4d.png");die5d = loadImage("die5d.png");die6d = loadImage("die6d.png");
char4 = loadImage("char4.png"); char5 = loadImage("char5.png"); char6 = loadImage("char6.png");
char7 = loadImage("char7.png"); char8 = loadImage("char8.png"); char9 = loadImage("char9.png");
back3 = loadImage("back3.png"); back4 = loadImage("back4.png"); char10 = loadImage("char10.png");
char11 = loadImage("char11.png"); char12 = loadImage("char12.png"); char13 = loadImage("char13.png");
gameOver1 = loadImage("gameOver1.png"); back0 = loadImage("menu1.png");creditsOG = loadImage("credits.png");
selChar = loadImage("selChar.png"); char15 = loadImage("char15.png");char14 = loadImage("char14.png");
menuButton = loadImage("menuButton.png"); congrats = loadImage("congrats.png");
}

void draw(){
  
  
  if(myMovie.time()>10){myMovie.stop();playMovie1 = false;}
  
if(level==1){OGAmt = 100;}
else if(level==2){OGAmt = 1000;} 
else if(level==3){OGAmt = 10000;}
else if(level==4){OGAmt = 500000;}
  
//Set Background
if(level==1){background(back1);
image(menuButton,530,20);}
else if(level==2){image(back2,0,0);
image(menuButton,530,20);}
else if(level==3){image(back3,0,0);
image(menuButton,530,20);}
else if(level==4){image(back4,0,0);
image(menuButton,530,20);}
//Begin Timer
float time = millis();

float rolls[] = {user,dave,lily,ezy};
maxer = max(rolls);

if(level==1 & moneyC0>0){player.play();player9.pause();}
else{player.pause();}

if(level==2 & moneyC0>0 & playMovie4==false){player5.play();}
else{player5.pause();}

if(level==3 & moneyC0>0 & playMovie5 == false){player6.play();}
else{player6.pause();}

if(level==4 & moneyC0>0 & playMovie6 == false){player7.play();}
else{player7.pause();}

if(moneyC1<=0){P1Out=true;}
if(moneyC2<=0){P2Out=true;}
if(moneyC3<=0){P3Out=true;}

//Two Dice Display
if(a==1 & level ==1){image(die1a, 235, 210);}
else if (a==2 & level == 1){image(die2a, 235, 210);}
else if (a==3 & level == 1){image(die3a, 235, 210);}
else if (a==4 & level == 1){image(die4a, 235, 210);}
else if (a==5 & level == 1){image(die5a, 235, 210);}
else if (a==6 & level == 1){image(die6a, 235, 210);}

if(a==1 & level ==2){image(die1b, 235, 210);}
else if (a==2 & level == 2){image(die2b, 235, 210);}
else if (a==3 & level == 2){image(die3b, 235, 210);}
else if (a==4 & level == 2){image(die4b, 235, 210);}
else if (a==5 & level == 2){image(die5b, 235, 210);}
else if (a==6 & level == 2){image(die6b, 235, 210);}

if(a==1 & level ==3){image(die1c, 235, 210);}
else if (a==2 & level == 3){image(die2c, 235, 210);}
else if (a==3 & level == 3){image(die3c, 235, 210);}
else if (a==4 & level == 3){image(die4c, 235, 210);}
else if (a==5 & level == 3){image(die5c, 235, 210);}
else if (a==6 & level == 3){image(die6c, 235, 210);}

if(a==1 & level ==4){image(die1d, 235, 210);}
else if (a==2 & level == 4){image(die2d, 235, 210);}
else if (a==3 & level == 4){image(die3d, 235, 210);}
else if (a==4 & level == 4){image(die4d, 235, 210);}
else if (a==5 & level == 4){image(die5d, 235, 210);}
else if (a==6 & level == 4){image(die6d, 235, 210);}

if(b==1 & level == 1){image(die1a, 335, 210);}
else if (b==2 & level == 1){image(die2a, 335, 210);}
else if (b==3 & level == 1){image(die3a, 335, 210);}
else if (b==4 & level == 1){image(die4a, 335, 210);}
else if (b==5 & level == 1){image(die5a, 335, 210);}
else if (b==6 & level == 1){image(die6a, 335, 210);}

if(b==1 & level == 2){image(die1b, 335, 210);}
else if (b==2 & level == 2){image(die2b, 335, 210);}
else if (b==3 & level == 2){image(die3b, 335, 210);}
else if (b==4 & level == 2){image(die4b, 335, 210);}
else if (b==5 & level == 2){image(die5b, 335, 210);}
else if (b==6 & level == 2){image(die6b, 335, 210);}

if(b==1 & level == 3){image(die1c, 335, 210);}
else if (b==2 & level == 3){image(die2c, 335, 210);}
else if (b==3 & level == 3){image(die3c, 335, 210);}
else if (b==4 & level == 3){image(die4c, 335, 210);}
else if (b==5 & level == 3){image(die5c, 335, 210);}
else if (b==6 & level == 3){image(die6c, 335, 210);}

if(b==1 & level == 4){image(die1d, 335, 210);}
else if (b==2 & level == 4){image(die2d, 335, 210);}
else if (b==3 & level == 4){image(die3d, 335, 210);}
else if (b==4 & level == 4){image(die4d, 335, 210);}
else if (b==5 & level == 4){image(die5d, 335, 210);}
else if (b==6 & level == 4){image(die6d, 335, 210);}

//Display USER
strokeWeight(2);
stroke(0);
fill(255);
rect(250,397,150,55);
if(whoRU=="Ben"){image(char9,252,400);}
else if(whoRU=="Brandon"){image(char7,252,400);}
else if(whoRU=="Dave"){image(char1,252,400);}
else if(whoRU=="Ezy"){image(char2,252,400);}
else if(whoRU=="Lily"){image(char3,252,400);}
else if(whoRU=="Juan"){image(char4,252,400);}
else if(whoRU=="Emily"){image(char5,252,400);}
else if(whoRU=="Yunus"){image(char8,252,400);}
else if(whoRU=="Cal"){image(char6,252,400);}
else if(whoRU=="Zach"){image(char11,252,400);}
else if(whoRU=="Cam Hollands"){image(char12,252,400);}
else if(whoRU=="Julia"){image(char13,252,400);}
else if(whoRU=="Sydney"){image(char14,252,400);}
else if(whoRU=="Cam Howes"){image(char15,252,400);}
else{image(char0,252,400);}
fill(0);
textSize(17);
if(whoRU != "Cam Howes" & whoRU!="Cam Hollands"){
text(whoRU,320,425);}
else{text("Cam",320,425);}
textSize(12);
text("$"+moneyC0,305,450);

//Display Char1
if(level==1 | level==2 | level==3){
fill(255);
rect(250,20,150,55);}
else if(level==4){
fill(255);
rect(250,20,150,165);
}
if(level==1 & whoRU!="Dave"){image(char1,252,23);}
else if(level==1 & whoRU=="Dave"){image(char12,252,23);}
else if(level==2 & whoRU!="Juan"){image(char4,252,23);}
else if(level==2 & whoRU=="Juan"){image(char13,252,23);}
else if(level==3 & whoRU!="Brandon"){image(char7,252,23);}
else if(level==3 & whoRU=="Brandon"){image(char11,252,23);}
else if(level==4){image(char10,252,23);}
fill(0);
textSize(17);
if(level==1 & whoRU!="Dave"){text("Dave",320,48);}
else if(level==1 & whoRU=="Dave"){text("Cam",320,48);}
else if(level==2 & whoRU!="Juan"){text("Juan",320,48);}
else if(level==2 & whoRU=="Juan"){text("Julia",320,48);}
else if(level==3 & whoRU!="Brandon"){text("Brandon",320,48);}
else if(level==3 & whoRU=="Brandon"){text("Zach",320,48);}
else if(level==4){text("IAN COSCHI",320,48);}
textSize(12);
text("$"+moneyC1,305,73);


//Display Char2
if(level==1 | level == 2 | level == 3){
fill(255);
rect(20,225,150,55);}
if(level==1 & whoRU !="Ezy"){image(char2,22,228);}
else if(level==1 & whoRU=="Ezy"){image(char12,22,228);}
else if(level==2 & whoRU!="Emily"){image(char5,22,228);}
else if(level==2 & whoRU=="Emily"){image(char13,22,228);}
else if(level==3 & whoRU!="Yunus"){image(char8,22,228);}
else if(level==3 & whoRU=="Yunus"){image(char11,22,228);}
fill(0);
textSize(17);
if(level==1 & whoRU!="Ezy"){text("Ezy",90,253);}
else if(level==1 & whoRU=="Ezy"){text("Cam",90,253);}
else if(level==2 & whoRU!="Emily"){text("Emily",90,253);}
else if(level==2 & whoRU=="Emily"){text("Julia",90,253);}
else if(level==3 & whoRU!="Yunus"){text("Yunus",90,253);}
else if(level==3 & whoRU=="Yunus"){text("Zach",90,253);}
textSize(12);
text("$"+moneyC2,75,278);

//Display Char3
if(level==1 | level==2 | level==3){
fill(255);
rect(475,225,150,55);}
if(level==1 & whoRU!="Lily"){image(char3,477,228);}
else if(level==1 & whoRU=="Lily"){image(char14,477,228);}
else if(level==2 & whoRU!="Cal"){image(char6,477,228);}
else if(level==2 & whoRU=="Cal"){image(char15,477,228);}
else if(level==3 & whoRU!="Ben"){image(char9,477,228);}
else if(level==3 & whoRU =="Ben"){image(char12,477,228);}
fill(0);
textSize(17);
if(level==1 & whoRU!="Lily"){text("Lily",545,253);}
else if(level==1 & whoRU=="Lily"){text("Sydney",545,253);}
else if(level==2 & whoRU != "Cal"){text("Cal",555,253);}
else if(level == 2 & whoRU == "Cal"){text("Cam",555,253);}
else if(level==3 & whoRU !="Ben"){text("Ben",555,253);}
else if(level == 3 & whoRU == "Ben"){text("Cam",555,253);}
textSize(12);
text("$"+moneyC3,530,278);

//Creates two random nums, a and b and rolls for 400ms
if(roll==true){a = round(random(1,6));b = round(random(1,6));
if(rollA==true){timer=time;rollA=false;}}
if(timer+400<time){roll=false;}

//INTRODUCTORY CODE RIGHT HERE
if(begin==false){
if(playMovie3==false & playMovie2==false){  
background(back0);player9.play();}
if(playMovie1 == true){image(myMovie,0,0);}

if(mouseX>=98 & mouseX<=508 & mouseY>=221 & mouseY<=271 & playMovie1==false & screen==0 & playMovie3==false){
  if(mainMenu==false){player10.rewind();player10.play();mainMenu=true;}
  strokeWeight(8);noFill();stroke(255,0,0);rect(98,221,410,55);
if(mousePressed){
selCharacter=true;
//playMovie2=true;
}}
else{mainMenu=false;}
if(mouseX>=77 & mouseX<=547 & mouseY>=326 & mouseY<=381 & playMovie1==false & screen==0 & playMovie3==false){
  if(mainMenu2==false){player10.rewind();player10.play();mainMenu2=true;}
  strokeWeight(8);noFill();stroke(255,0,0);rect(77,326,470,55);
if(mousePressed){playMovie3=true;}}
else{mainMenu2=false;}
if(mouseX>=170 & mouseX<=447 & mouseY>=425 & mouseY<=480 & playMovie1==false & screen==0 & playMovie3==false){
  if(mainMenu3==false){player10.rewind();player10.play();mainMenu3=true;}
  strokeWeight(8);noFill();stroke(255,0,0);rect(170,425,277,55);
if(mousePressed){screen=1;}}
else{mainMenu3=false;}

if(screen==1){
image(creditsOG,0,0);
  if(keyPressed){screen=0;}
}
}

if(selCharacter==true){
image(selChar,0,0);
screen=3;
stroke(255,0,0);
strokeWeight(5);
noFill();
//DAVE
if(mouseX>34 & mouseX<=114 & mouseY>=175 & mouseY<=265){if(mainMenu9==false){player10.rewind();player10.play();mainMenu9=true;}rect(34,175,80,90);
if(mousePressed){whoRU="Dave";}}
else{mainMenu9=false;}
//EMILY
if(mouseX>114 & mouseX<=194 & mouseY>=175 & mouseY<=265){if(mainMenu10==false){player10.rewind();player10.play();mainMenu10=true;}rect(114,175,80,90);
if(mousePressed){whoRU="Emily";}}
else{mainMenu10=false;}
//CAL
if(mouseX>194 & mouseX<=279 & mouseY>=175 & mouseY<=265){if(mainMenu11==false){player10.rewind();player10.play();mainMenu11=true;}rect(194,175,85,90);
if(mousePressed){whoRU="Cal";}}
else{mainMenu11=false;}
//EZY
if(mouseX>279 & mouseX<=371 & mouseY>=175 & mouseY<=265){if(mainMenu12==false){player10.rewind();player10.play();mainMenu12=true;}rect(279,175,92,90);
if(mousePressed){whoRU="Ezy";}}
else{mainMenu12=false;}
//JUAN
if(mouseX>371 & mouseX<=446 & mouseY>=175 & mouseY<=265){if(mainMenu13==false){player10.rewind();player10.play();mainMenu13=true;}rect(371,175,75,90);
if(mousePressed){whoRU="Juan";}}
else{mainMenu13=false;}
//YUNUS
if(mouseX>446 & mouseX<=526 & mouseY>=175 & mouseY<=265){if(mainMenu14==false){player10.rewind();player10.play();mainMenu14=true;}rect(446,175,80,90);
if(mousePressed){whoRU="Yunus";}}
else{mainMenu14=false;}
//SYDNEY
if(mouseX>525 & mouseX<=615 & mouseY>=175 & mouseY<=265){if(mainMenu15==false){player10.rewind();player10.play();mainMenu15=true;}rect(526,175,89,90);
if(mousePressed){whoRU="Sydney";}}
else{mainMenu15=false;}
//CAM Hollands
if(mouseX>34 & mouseX<=114 & mouseY>=270 & mouseY<=360){if(mainMenu16==false){player10.rewind();player10.play();mainMenu16=true;}rect(34,270,80,90);
if(mousePressed){whoRU="Cam Hollands";}}
else{mainMenu16=false;}
//LILY
if(mouseX>114 & mouseX<=194 & mouseY>=270 & mouseY<=360){if(mainMenu17==false){player10.rewind();player10.play();mainMenu17=true;}rect(114,270,80,90);
if(mousePressed){whoRU="Lily";}}
else{mainMenu17=false;}
//JULIA
if(mouseX>194 & mouseX<=272 & mouseY>=270 & mouseY<=360){if(mainMenu18==false){player10.rewind();player10.play();mainMenu18=true;}rect(194,270,78,90);
if(mousePressed){whoRU="Julia";}}
else{mainMenu18=false;}
//BRANDON
if(mouseX>272 & mouseX<=376 & mouseY>=270 & mouseY<=360){if(mainMenu19==false){player10.rewind();player10.play();mainMenu19=true;}rect(272,270,104,90);
if(mousePressed){whoRU="Brandon";}}
else{mainMenu19=false;}
//CAM Howes
if(mouseX>376 & mouseX<=446 & mouseY>=270 & mouseY<=360){if(mainMenu20==false){player10.rewind();player10.play();mainMenu20=true;}rect(376,270,70,90);
if(mousePressed){whoRU="Cam Howes";}}
else{mainMenu20=false;}
//Ben
if(mouseX>446 & mouseX<=526 & mouseY>=270 & mouseY<=360){if(mainMenu21==false){player10.rewind();player10.play();mainMenu21=true;}rect(446,270,80,90);
if(mousePressed){whoRU="Ben";}}
else{mainMenu21=false;}
//Zach
if(mouseX>526 & mouseX<=615 & mouseY>=270 & mouseY<=360){if(mainMenu22==false){player10.rewind();player10.play();mainMenu22=true;}rect(526,270,89,90);
if(mousePressed){whoRU="Zach";}}
else{mainMenu22=false;}


if(whoRU=="Ben"){stroke(255,255,0);rect(446,270,80,90);}
else if(whoRU=="Dave"){stroke(255,255,0);rect(34,175,80,90);}
else if(whoRU=="Emily"){stroke(255,255,0);rect(114,175,80,90);}
else if(whoRU=="Cal"){stroke(255,255,0);rect(194,175,85,90);}
else if(whoRU=="Ezy"){stroke(255,255,0);rect(279,175,92,90);}
else if(whoRU=="Juan"){stroke(255,255,0);rect(371,175,75,90);}
else if(whoRU=="Yunus"){stroke(255,255,0);rect(446,175,80,90);}
else if(whoRU=="Sydney"){stroke(255,255,0);rect(526,175,89,90);}
else if(whoRU=="Cam Hollands"){stroke(255,255,0);rect(34,270,80,90);}
else if(whoRU=="Lily"){stroke(255,255,0);rect(114,270,80,90);}
else if(whoRU=="Julia"){stroke(255,255,0);rect(194,270,78,90);}
else if(whoRU=="Brandon"){stroke(255,255,0);rect(272,270,104,90);}
else if(whoRU=="Cam Howes"){stroke(255,255,0);rect(376,270,70,90);}
else if(whoRU=="Zach"){stroke(255,255,0);rect(526,270,89,90);}

if(mouseY>412 & mouseY<=495 & mouseX>=449 & mouseX<=649){
  if(mousePressed){
selCharacter=false;
playMovie2=true;}
}


}

if(playMovie2==true){myMovie2.loop();player9.pause();
image(myMovie2,0,0);}
if(myMovie2.time()>4){
myMovie2.stop();begin=true;level=1;playMovie2=false;}

if(playMovie3==true){myMovie3.loop();player9.pause();
image(myMovie3,0,0);}
if(myMovie3.time()>30){
myMovie3.stop();playMovie3=false;}

if(begin==true){
  //User
if(turn == -2 | turn == 0){
  if(timer+1000<time & turn==0 & a!=b){
player2.rewind();player2.play();roll = true;rollA = true;if(a!=b){uRolled=true;}oneTime=false;}
if(timer+333>time){oneTaker=false;}
noFill();
stroke(255,255,0);
strokeWeight(4);
rect(251,398,149,54);
if(uRolled==true){ 

if(P1Out==true & P2Out==true & turn == 0){turn=3;}
else if(P2Out==true & turn == 0){turn=1;}
else{turn+=2;}
oneTaker=true;
uRolled=false;}}

//Dave
else if(turn==1){
  if(P3Out == false){
  if(timer+1000<time){
  player2.rewind();player2.play();roll = true;rollA = true;if(a!=b){uRolled=true;}oneTime=false;}}
  else{if(timer+1000<time & a == b){
  player2.rewind();player2.play();roll = true;rollA = true;if(a!=b){uRolled=true;}oneTime=false;}}
  if(timer+333>time){oneTaker=false;}
  if(timer+1200<time & a!=b & P0Out == false){
noFill();
stroke(255,255,0);
strokeWeight(4);
rect(251,398,149,54);
turn=-2;
}
noFill();
stroke(255,255,0);
strokeWeight(4);
if(level==1 | level == 2 | level == 3){
rect(251,21,149,54);
}
if(level==4){rect(201,21,249,104);}
if(uRolled==true){
if(P3Out==true & P0Out==true){turn=2;}
else if(P3Out==true){noFill();
stroke(255,255,0);
strokeWeight(4);
rect(251,398,149,54);turn=-2;}
else{turn=3;}
uRolled=false;}}

//Ezy
else if(turn==2){
  if(P1Out == true & P3Out== true){
  if(timer+1000<time & a == b){
  player2.rewind();player2.play();roll = true;rollA = true;if(a!=b){uRolled=true;}oneTime=false;}}
  else{if(timer+1000<time){
  player2.rewind();player2.play();roll = true;rollA = true;if(a!=b){uRolled=true;}oneTime=false;}}
  if(timer+333>time){oneTaker=false;}
  if(timer+1200<time & a!=b){
noFill();
stroke(255,255,0);
strokeWeight(4);
rect(251,398,149,54);
turn=-2;}
noFill();
stroke(255,255,0);
strokeWeight(4);
rect(21,226,149,54);
if(uRolled==true){
if(P1Out == true & P3Out==true){noFill();
stroke(255,255,0);
strokeWeight(4);
rect(251,398,149,54);turn=-2;}
else if(P1Out == true){turn=3;}
else{turn=1;}
uRolled=false;}
}

//Lily
else if(turn==3){
if(P0Out == false){
if(timer+1000<time & a==b){
player2.rewind();player2.play();roll = true;rollA = true;if(a!=b){uRolled=true;}oneTime=false;}}
else{if(timer+1000<time){
player2.rewind();player2.play();roll = true;rollA = true;if(a!=b){uRolled=true;}oneTime=false;}}
if(timer+333>time){oneTaker=false;}
if(timer+1200<time & a!=b & P0Out == false){
noFill();
stroke(255,255,0);
strokeWeight(4);
rect(251,398,149,54);
turn=-2;}
else{
noFill();
stroke(255,255,0);
strokeWeight(4);
rect(476,226,149,54);}
if(uRolled==true){
if(P0Out==true & P2Out==true){turn=1;}
else if(P0Out == true){turn = 2;}
else{turn=-2;}
uRolled=false;}

}

//textSize(20);
//fill(255);
//text("PLAYER NUM: " + user,10,350);
//text("EZY'S NUM: " + ezy,10,370);
//text("DAVE'S NUM: " + dave,10,390);
//text("LILY'S NUM: " + lily,10,410);
//text("MAX: " + maxer,10,430);

//ASSIGN SPECIAL ROLLS TO PLAYERS
if(a+b==7 | a+b==11){
if(a+b==7 & oneTime==false & timer+400<time & oneTaker == false){player3.rewind();player3.play();}
if(a+b==11 & oneTime==false & timer+400<time & oneTaker == false){player4.rewind();player4.play();}
if(turn==0 & oneTime==false & timer+400<time & oneTaker == false){
user = a+b; oneTaker = true;}
if(turn==1 & oneTime==false & timer+400<time & oneTaker == false){
dave = a+b; oneTaker = true;}
if(turn==2 & oneTime==false & timer+400<time & oneTaker == false){
ezy = a+b; oneTaker = true;}
if(turn==3 & oneTime==false & timer+400<time & oneTaker == false){
lily = a+b; oneTaker = true;
}}


//TO GET PEOPLE OUT

//EZY ON TOP
if(ezy == maxer & user == maxer & lily == maxer & turn==-2 & maxer!=0){P1Out=true;
ezy=3;user=3;lily=3;dave=0;betTime=false;}
if(ezy == maxer & user == maxer & dave == maxer & turn==-2 & maxer!=0){P3Out=true;
ezy=3;lily=0;dave=3;user=3;betTime=false;}
if(ezy == maxer & dave == maxer & lily == maxer & turn == -2 & maxer!=0){P0Out=true;
ezy=3;lily=3;dave=3;user=0;betTime=false;winner=true;}
if(ezy == maxer & user == maxer & turn==-2 & maxer!=0){P1Out=true;P3Out=true;
ezy=3;user=3;dave=0;lily=0;betTime=false;}
if(ezy == maxer & dave == maxer & turn==-2 & maxer!=0){P0Out=true;P3Out=true;
ezy=3;dave=3;lily=0;user=0;betTime=false;winner=true;}
if(ezy == maxer & lily == maxer & turn==-2 & maxer!=0){P0Out=true;P1Out=true;
ezy=3;lily=3;user=0;dave=0;betTime=false;winner=true;}

//USER ON TOP
if(user == maxer & dave == maxer & lily == maxer & turn==-2 & maxer!=0){P2Out=true;
user=3;dave=3;lily=3;ezy=0;betTime=false;}
if(user == maxer & dave == maxer & ezy == maxer & turn==-2 & maxer!=0){P3Out=true;
user=3;dave=3;ezy=3;lily=0;betTime=false;}
if(user == maxer & lily == maxer & ezy == maxer & turn==-2 & maxer!=0){P1Out=true;
user=3;lily=3;ezy=3;dave=0;betTime=false;}
if(user == maxer & lily == maxer & turn==-2 & maxer!=0){P1Out=true;P2Out=true;
user=3;lily=3;dave=0;ezy=0;betTime=false;}
if(user == maxer & dave == maxer & turn==-2 & maxer!=0){P2Out=true;P3Out=true;
user=3;dave=3;ezy=0;lily=0;betTime=false;}
if(user == maxer & ezy == maxer & turn==-2 & maxer!=0){P1Out=true;P3Out=true;
user=3;ezy=3;dave=0;lily=0;betTime=false;}

//LILY ON TOP
if(lily == maxer & dave == maxer & user == maxer & turn==-2 & maxer!=0){P2Out=true;
lily=3;dave=3;user=3;ezy=0;betTime=false;}
if(lily == maxer & dave == maxer & ezy == maxer & turn==-2 & maxer!=0){P0Out=true;
lily=3;dave=3;ezy=3;user=0;betTime=false;winner=true;}
if(lily == maxer & user == maxer & ezy == maxer & turn==-2 & maxer!=0){P1Out=true;
ezy=3;user=3;lily=3;betTime=false;}
if(lily == maxer & user == maxer & turn==-2 & maxer!=0){P1Out=true;P2Out=true;
lily=3;user=3;dave=0;ezy=0;betTime=false;}
if(lily == maxer & dave == maxer & turn==-2 & maxer!=0){P0Out=true;P2Out=true;
lily=3;dave=3;ezy=0;user=0;betTime=false;winner=true;}
if(lily == maxer & ezy == maxer & turn==-2 & maxer!=0){P0Out=true;P1Out=true;
lily=3;ezy=3;user=0;dave=0;betTime=false;winner=true;}

//DAVE ON TOP
if(dave == maxer & lily == maxer & user == maxer & turn==-2 & maxer!=0){P2Out=true;
dave=3;lily=3;user=3;ezy=0;betTime=false;}
if(dave == maxer & lily == maxer & ezy == maxer & turn==-2 & maxer!=0){P0Out=true;
dave=3;lily=3;ezy=3;user=0;betTime=false;winner=true;}
if(dave == maxer & ezy == maxer & user == maxer & turn==-2 & maxer!=0){P3Out=true;
dave=3;ezy=3;user=3;lily=0;betTime=false;}
if(dave == maxer & lily == maxer & turn==-2 & maxer!=0){P0Out=true;P2Out=true;
dave=3;lily=3;user=0;ezy=0;betTime=false;winner=true;}
if(dave == maxer & ezy == maxer & turn==-2 & maxer!=0){P0Out=true;P3Out=true;
dave=3;ezy=3;user=0;lily=0;betTime=false;winner=true;}
if(dave == maxer & user == maxer & turn==-2 & maxer!=0){P3Out=true;P2Out=true;
dave=3;user=3;ezy=0;lily=0;betTime=false;}




//To clear if everyone rolled 7 or 11
//Be sure this is AFTER payment
if(user==ezy & ezy==dave & dave==lily & maxer!=0 & turn==0){
user = 0;ezy=0;dave=0;lily=0;betTime=false;}
if(user==ezy & ezy == dave & dave == lily & turn == 0){
betTime=false;}

//Testing for people who are OUT
if(user==dave & dave==lily & P2Out==true){if(turn==0){betTime=false;}}
if(user==lily & lily==ezy & P1Out==true){if(turn==0){betTime=false;}}
if(user==ezy & ezy==dave & P3Out==true){if(turn==0){betTime=false;}}
if(user==ezy & P1Out==true & P3Out==true){if(turn==0){betTime=false;}}
if(user==lily & P1Out==true & P2Out==true){if(turn==0){betTime=false;}}
if(user==dave & P2Out==true & P3Out==true){if(turn==0){betTime=false;}}


//PAYOUT if one person SWEEPS
if(turn==-2 & ezy>user & ezy>lily & ezy>dave | winner==true & ezy>user & ezy>lily & ezy>dave){
float total = 0;
if(moneyC1>0){moneyC1-=bet;total+=bet;}
if(moneyC0>0){moneyC0-=bet;total+=bet;}
if(moneyC3>0){moneyC3-=bet;total+=bet;}
moneyC2+=total;
oneTaker = true;
oneTime=true;
user=0;ezy=0;dave=0;lily=0;
betTime=true;
winner=false;
P0Out=false;
P1Out=false;
P2Out=false;
P3Out=false;}
else if(turn==-2 & user>ezy & user>lily & user>dave | winner==true & user>ezy & user>lily & user>dave){
float total = 0;
if(moneyC1>0){moneyC1-=bet;total+=bet;}
if(moneyC2>0){moneyC2-=bet;total+=bet;}
if(moneyC3>0){moneyC3-=bet;total+=bet;}
moneyC0+=total;
oneTime=true;
oneTaker = true;
user=0;ezy=0;dave=0;lily=0;
betTime=true;
winner=false;
P0Out=false;
P1Out=false;
P2Out=false;
P3Out=false;}
else if(turn==-2 & lily>user & lily>ezy & lily>dave | winner==true & lily>user & lily>ezy & lily>dave){
float total = 0;
if(moneyC1>0){moneyC1-=bet;total+=bet;}
if(moneyC2>0){moneyC2-=bet;total+=bet;}
if(moneyC0>0){moneyC0-=bet;total+=bet;}
moneyC3+=total;
oneTaker = true;
oneTime=true;
user=0;ezy=0;dave=0;lily=0;
betTime=true;
winner=false;
P0Out=false;
P1Out=false;
P2Out=false;
P3Out=false;}
else if(turn==-2 & dave>lily & dave>user & dave>ezy | winner==true & dave>lily & dave>user & dave>ezy){
float total = 0;
if(moneyC0>0){moneyC0-=bet;total+=bet;}
if(moneyC2>0){moneyC2-=bet;total+=bet;}
if(moneyC3>0){moneyC3-=bet;total+=bet;}
moneyC1+=total;
oneTaker = true;
oneTime=true;
user=0;ezy=0;dave=0;lily=0;
betTime=true;
winner=false;
P0Out=false;
P1Out=false;
P2Out=false;
P3Out=false;}

if(level!=0 & begin==true & mouseX>=530 & mouseX<=630 & mouseY>=20 & mouseY<=50){
  noFill();
  stroke(255,255,0);
  strokeWeight(4);
  rect(530,20,100,30);
if(mousePressed){
  
level=0;
turn=-2;
betTime=false;
moneyC0=100;
moneyC1=100;
moneyC2=100;
moneyC3=100;
playMovie3=false;
playMovie2=false;
playMovie2 = false;
playMovie3 = false;
playMovie4 = false;
playMovie5 = false;
playMovie6 = false;
playMovie7 = true;
lvl2movie = false;
lvl3movie = false;
lvl4movie = false;
playMovie1 = false;
screen = 0;
begin=false;}}

//Change the bet $$$
if(turn==-2 & betTime == true){
  fill(0);
  stroke(0);
  rect(89,298,447,87);
  rect(207,123,233,44);
  fill(255);
  textSize(20);
text("HOW MUCH WOULD YOU LIKE TO WAGER?",120,320);
text("CURRENT BET: $"+bet,220,150);
if(level==1){textSize(30);}
else if(level==2){textSize(25);}
else if(level==3){textSize(20);}
else if(level==4){textSize(15);}
text("$"+OGAmt/20+"    $"+OGAmt/10+"    $"+OGAmt/5+"    $"+OGAmt/2+"    $"+OGAmt,100,370);

//if mouse is hovering above:
noFill();
stroke(0,255,0);
if(mouseY>=343 & mouseY<=377){
if(mouseX>=100 & mouseX<=145){
  if(mainMenu4==false){player10.rewind();player10.play();mainMenu4=true;}rect(100,343,45,34);
if(mousePressed){bet=OGAmt/20;}}
else{mainMenu4=false;}
if(mouseX>=174 & mouseX<=234){if(mainMenu5==false){player10.rewind();player10.play();mainMenu5=true;}rect(174,343,60,34);
if(mousePressed){bet=OGAmt/10;}}
else{mainMenu5=false;}
if(mouseX>=270 & mouseX<=330){if(mainMenu6==false){player10.rewind();player10.play();mainMenu6=true;}rect(270,343,60,34);
if(mousePressed){bet=OGAmt/5;}}
else{mainMenu6=false;}
if(mouseX>=364 & mouseX<=424){if(mainMenu7==false){player10.rewind();player10.play();mainMenu7=true;}rect(364,343,60,34);
if(mousePressed){bet=OGAmt/2;}}
else{mainMenu7=false;}
if(mouseX>=459 & mouseX<=536){if(mainMenu8==false){player10.rewind();player10.play();mainMenu8=true;}rect(459,343,77,34);
if(mousePressed){bet=OGAmt;}}
else{mainMenu8=false;}}}

//Determine who is in and who is out
if(moneyC0<=0){P0Out=true;
stroke(255,0,0);
strokeWeight(5);
line(250,397,400,452);
line(250,452,400,397);}

if(moneyC1<=0){P1Out=true;
stroke(255,0,0);
strokeWeight(5);
line(250,21,400,75);
line(250,75,400,21);}

if(moneyC2<=0 & level!=4){P2Out=true;
stroke(255,0,0);
strokeWeight(5);
line(21,226,170,277);
line(21,277,170,226);}

if(moneyC3<=0 & level!=4){P3Out=true;
stroke(255,0,0);
strokeWeight(5);
line(476,226,625,280);
line(476,280,625,226);}

if(P1Out==true){dave=-1;}
if(P2Out==true){ezy=-1;}
if(P3Out==true){lily=-1;}
playOnce=true;

if(moneyC0<=0){

image(gameOver1,0,0);
if(playOnce==true){player8.play();playOnce=false;}

if(mouseX>=143 & mouseX<=512 & mouseY>=308 & mouseY<=375){
noFill();stroke(255);rect(143,308,369,67);
if(mousePressed){
  
if(level==1){turn=-2;betTime=true;moneyC0=100;moneyC1=100;moneyC2=100;moneyC3=100;P0Out=false;P1Out=false;P2Out=false;P3Out=false;bet=20;}
if(level==2){turn=-2;betTime=true;moneyC0=400;moneyC1=1000;moneyC2=1000;moneyC3=1000;P0Out=false;P1Out=false;P2Out=false;P3Out=false;bet=200;}
if(level==3){turn=-2;betTime=true;moneyC0=3400;moneyC1=10000;moneyC2=10000;moneyC3=10000;P0Out=false;P1Out=false;P2Out=false;P3Out=false;bet=2000;}
if(level==4){turn=-2;betTime=true;moneyC0=33400;moneyC1=1000000;moneyC2=0;moneyC3=0;P0Out=false;P1Out=false;P2Out=true;P3Out=true;bet=200000;}

}
}
if(mouseX>=180 & mouseX<=475 & mouseY>=430 & mouseY<=486){
noFill();stroke(255);rect(180,430,295,56);
if(mousePressed){
level=0;
turn=-2;
betTime=false;
moneyC0=100;
moneyC1=100;
moneyC2=100;
moneyC3=100;
playMovie3=false;
playMovie2=false;
playMovie2 = false;
playMovie3 = false;
playMovie4 = false;
playMovie5 = false;
playMovie6 = false;
playMovie7 = true;
lvl2movie = false;
lvl3movie = false;
lvl4movie = false;
playMovie1 = false;
screen = 0;
begin=false;

}

}

}

if(moneyC0>0){
player8.rewind();playOnce=true;}


if(moneyC0>=400 & level==1){
if(lvl2movie==false){playMovie4=true;lvl2movie=true;}
level=2;
moneyC1=1000;
moneyC2=1000;
moneyC3=1000;
turn=-2;betTime=true;
P0Out=false;P1Out=false;P2Out=false;P3Out=false;
user=0;lily=0;ezy=0;dave=0;}

if(playMovie4==true){myMovie4.loop();player.pause();
image(myMovie4,0,0);}
if(myMovie4.time()>4){
playMovie4=false;myMovie4.stop();}


if(moneyC0>=3400 & level==2){
if(lvl3movie==false){playMovie5=true;lvl3movie=true;}
level=3;
moneyC1=10000;
moneyC2=10000;
moneyC3=10000;
turn=-2;betTime=true;
P0Out=false;P1Out=false;P2Out=false;P3Out=false;
user=0;lily=0;ezy=0;dave=0;}

if(playMovie5==true){myMovie5.loop();player.pause();
image(myMovie5,0,0);}
if(myMovie5.time()>4){
playMovie5=false;myMovie5.stop();}

if(moneyC0>=33400 & level==3){
if(lvl4movie==false){playMovie6=true;lvl4movie=true;}
level=4;
moneyC1=1000000;
moneyC2=0;
moneyC3=0;
turn=-2;betTime=true;
P0Out=false;P1Out=false;P2Out=true;P3Out=true;
user=0;lily=0;ezy=0;dave=0;}

if(playMovie6==true){myMovie6.loop();player.pause();
image(myMovie6,0,0);}
if(myMovie6.time()>4){
playMovie6=false;myMovie6.stop();}

if(level==4){P2Out=true;P3Out=true;}


//GAME IS OVER CODE
if(level==4 & moneyC3<=0 & moneyC0>=1000000){
player7.pause();  
level=4;
turn=-2;
betTime=false;
image(congrats,0,0);
//if(whoRU=="Ben"){image(benWin,0,0);}
//else if(whoRU=="Lily"){image(lilyWin,0,0);}
//else if(whoRU=="Dave"){image(daveWin,0,0);}
//else if(whoRU=="Julia"){image(juliaWin,0,0);}
//else if(whoRU=="Cam Howes"){image(howesWin,0,0);}
//else if(whoRU=="Cam Hollands"){image(hollandsWin,0,0);}
//else if(whoRU=="Ezy"){}
//else if(whoRU=="Cal"){}
//else if(whoRU=="Juan"){}
//else if(whoRU=="Sydney"){}
//else if(whoRU=="Emily"){}
//else if(whoRU=="Yunus"){}
//else if(whoRU=="Brandon"){}
//else if(whoRU=="Zach"){}

moneyC0=100;
moneyC1=100;
moneyC2=100;
moneyC3=100;
playMovie3=false;
playMovie2=false;
playMovie2 = false;
playMovie3 = false;
playMovie4 = false;
playMovie5 = false;
playMovie6 = false;
playMovie7 = true;
turn=-2;
betTime=false;
lvl2movie = false;
lvl3movie = false;
lvl4movie = false;
playMovie1 = false;
if(mousePressed){
screen = 0;
level=0;
begin=false;
playMovie1=false;}
//Play Outro Movie  
//if(playMovie7==true){myMovie7.loop();player.pause();
//image(myMovie7,0,0);}
//if(myMovie7.time()>22.5){
//playMovie7=false;myMovie7.stop();begin=false;level=0;}
}

//Bug Fix
if(dave==maxer & ezy==maxer & user!=maxer){
dave=-1;
}

}//End of begin Game

}//End of draw



//Pressing the Spacebar simulates a roll
void keyPressed(){if(key==' '){if(begin==true & turn==0 | begin==true & turn == -2 | begin==true & turn == 3){player2.rewind();player2.play();roll = true;rollA = true;if(a!=b){uRolled=true;}oneTime=false;}}}

void movieEvent(Movie m) {
  m.read();}
