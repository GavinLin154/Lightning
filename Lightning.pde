void setup() {
  size(700, 700);
  background(0,0,255);
  frameRate(140);
}

int firstX = ((int)(Math.random() * 150)) + 250;
int firstY = 0;
int secondX = firstX + 9;
int secondY = firstY + 9;
int changeInX;
int lightningDirection;
int seeThrough = 255;
int meatballY = (int)(Math.random() * 100) * (-1);
int secondMeatballY = ((int)(Math.random() * 200) * (-1)) - 127;
int thirdMeatballY = ((int)(Math.random() * 200) * (-1)) - 349;
int fourthMeatballY = (int)(Math.random() * 100) * (-1);
int fifthMeatballY = ((int)(Math.random() * 200) * (-1)) - 297;
int sixthMeatballY = ((int)(Math.random() * 200) * (-1)) - 457;

void draw() { 
  System.out.println(firstX);
  //Meatball
  if(meatballY > 700) {
   meatballY = 0;
  }  
  if(secondMeatballY > 700) {
    secondMeatballY = 0;
  }
  if(thirdMeatballY > 700) {
    thirdMeatballY = 0;
  }
  if(fourthMeatballY > 700) {
    fourthMeatballY = 0;
  }
  if(fifthMeatballY > 700) {
    fifthMeatballY = 0;
  }
  if(sixthMeatballY > 700) {
    sixthMeatballY = 0;
  }
  noStroke();
  fill(0,0,255);
  rect(0,0,180,700);
  rect(580,0,200,700);
  fill(84,45,45);
  ellipse(50,meatballY,40,40);
  ellipse(90,secondMeatballY,40,40);
  ellipse(130,thirdMeatballY,40,40);
  ellipse(600,fourthMeatballY,40,40);
  ellipse(630,fifthMeatballY,40,40);
  ellipse(650,sixthMeatballY,40,40);
  meatballY += 5;
  secondMeatballY += 5;
  thirdMeatballY += 5;
  fourthMeatballY += 5;
  fifthMeatballY += 5;
  sixthMeatballY += 5;
  //Cloud
  fill(162,184,192);
  rect(0,0,700,80);
  ellipse(40,100,90,90);
  ellipse(120,90,140,200);
  ellipse(210,80,100,100);
  ellipse(300,100,120,90);
  ellipse(390,120,130,100);
  ellipse(450,130,120,130);
  ellipse(540,100,130,90);
  ellipse(600,120,140,100);
  ellipse(660,110,130,120);
  strokeWeight(6);
  stroke(0,0,0);
  line(220,10,290,30);
  line(480,10,410,30);
  fill(0,0,0);
  ellipse(255,60,35,35);
  ellipse(445,60,35,35);
  noFill();
  arc(350,125,140,70,PI,2 * PI);
  //Lightning
  if (keyPressed) {
    stroke(252,192,30,seeThrough);
    strokeWeight(9);
    line(firstX, firstY, secondX, secondY);
    lightningDirection = (int)(Math.random() * 2);
    if(firstX < 200){
    lightningDirection = 1; 
    } else if(firstX > 500) {
    lightningDirection = 0;
    }
    if (lightningDirection == 0) {
      firstX = secondX;
      firstY = secondY;
      secondX = secondX - (int)(Math.random() * 19);
      secondY = secondY + (int)(Math.random() * 25);
      seeThrough -= (int)(Math.random() * 2);
    } else {
      firstX = secondX;
      firstY = secondY;
      secondX = secondX + (int)(Math.random() * 19);
      secondY = secondY + (int)(Math.random() * 25);
      seeThrough -= (int)(Math.random() * 2);
    }
    if (firstY >= 700) {
      firstX = ((int)(Math.random() * 150)) + 250;
      firstY = 0;
      secondX = firstX + 9;
      secondY = firstY + 9;
      seeThrough = 255;
    }
  }
}
