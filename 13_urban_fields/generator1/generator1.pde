Pt I;
float R=50;
float A=0;
float MaxDi;
ArrayList<Seg> segLi;
ArrayList<Pt> ptLi;

float randomAng=PI/30;

int numItrs;
int maxPts;

void setup(){
  size(1000,700);
  MaxDi=width;
  segLi=new ArrayList<Seg>();
  ptLi=new ArrayList<Pt>();
  
  I=new Pt(width/2, height/2);
  ptLi.add(I);
  
  init();
}

void init(){
  moveUp(I);
  moveDn(I);
  moveLe(I);
  moveRi(I);
}

void draw(){
  background(255);
  I.display();
  for(int i=0; i<segLi.size(); i++){
    segLi.get(i).display();
  }
  for(int i=0; i<ptLi.size(); i++){
    ptLi.get(i).display();
  }
   
  fill(0);
  text("Press r or R to reset", 10,10);
  text("Press (multiple) e or E to generate", 10,20);
  noFill(); 
}

void runProgPt(){
  int i=(int) random(ptLi.size());
  Pt p=ptLi.get(i);
  move(p);
  println(ptLi.size(), segLi.size());
}

void keyPressed(){
  if(key=='e' || key=='E'){
    R=50;
    for(int i=0; i<300; i++){
      runProgPt();
    }
  }
  if(key=='r' || key=='R'){
    ptLi.clear();
    segLi.clear();
    init();
  }
}
