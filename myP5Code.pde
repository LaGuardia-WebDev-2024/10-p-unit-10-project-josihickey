setup = function() {
    size(800, 600); 

   background(184, 201, 212);
  var pillarX = 15; 
  var pillarY = 380;
  var pillarHeight = 450;
  var windowY = 550;
  var triangleY = 375;
  var triangleY2 = 375;
  birdNumber = 0;
  
    
  //main building/structure  
  stroke(170, 159, 137);
  fill(230, 219, 197);
  triangle(25,400,415,150,775,400);
  rect(325,200,150,650);
  rect(175,300,150,500);
  rect(475,300,150,500);
  rect(25,400,150,450);
  rect(625,400,150,450);
  
   //triangle tops left
  for(var triangleX = 58; triangleX < 415; triangleX+=10){
  fill(255,255, 255, 0);
  stroke(170, 159, 137);
  line(triangleX, triangleY-20, triangleX, triangleY+20);
  triangle(triangleX, triangleY, triangleX+5, triangleY-10, triangleX+10, triangleY);
  triangle(triangleX, triangleY-20, triangleX+5, triangleY-30, triangleX+10, triangleY-20);
  line(triangleX+5, triangleY-30, triangleX+5, triangleY-35);
  line(triangleX+2.5, triangleY-32.5, triangleX+6.5, triangleY-32.5);
  triangleY-=6.3;
  
  }
  
  //triangle tops right
  for(var triangleX = 758; triangleX > 410; triangleX-=10){
  fill(255,255, 255, 0);
  stroke(170, 159, 137)
  line(triangleX, triangleY2-20, triangleX, triangleY2+20);
  line(triangleX+10, triangleY2-20, triangleX+10, triangleY2+20);
  triangle(triangleX, triangleY2, triangleX+5, triangleY2-10, triangleX+10, triangleY2);
  triangle(triangleX, triangleY2-20, triangleX+5, triangleY2-30, triangleX+10, triangleY2-20);
  line(triangleX+5, triangleY2-30, triangleX+5, triangleY2-35);
  line(triangleX+2.5, triangleY2-32.5, triangleX+6.5, triangleY2-32.5);
  triangleY2-=6.3;
  
  }
  
  fill(230, 219, 197);
  
  //pillars
  while(pillarX < 400){
  stroke(170, 159, 137)
  rect(pillarX, pillarY, 50, pillarHeight);
  triangle(pillarX,pillarY, pillarX+12.5, pillarY-100, pillarX+25, pillarY);
  line(pillarX+12, pillarY-100, pillarX+12, pillarY-115);
  triangle(pillarX+25,pillarY, pillarX+37.5, pillarY-100, pillarX+50, pillarY);
  line(pillarX+37, pillarY-100, pillarX+37, pillarY-115);
  pillarX+=150;
  pillarY-=100;
  pillarHeight+=100;
  }; 
  rect(465, 180, 50, 650);
  triangle(465, 180, 477.5, 80, 490, 180);
  line(477, 80, 477, 65);
  triangle(490, 180, 502.5, 80, 515, 180);
  line(502, 80, 502, 65);
  
  rect(615, 280, 50, 550);
  triangle(615, 280, 627.5, 180, 640, 280);
  line(627, 180, 627, 165);
  triangle(640, 280, 652.5, 180, 665, 280);
  line(652, 180, 652, 165);
  
  rect(745, 380, 50, 450);
  triangle(745,380, 757.5, 280, 770, 380);
  line(757, 280, 757, 265);
  triangle(770, 380, 782.5, 280, 795, 380);
  line(782, 280, 782, 265);
  
  //far-left windows
  stroke(0,0,0);
  for(var windowY = 550; windowY > 400; windowY-=100){
  fill(0,0,0);
  rect(90,windowY,45,55);
  arc(112.5,windowY, 45, 20, radians(180), radians(360));
  };
  
  //far-right windows
  for(var windowY = 550; windowY > 400; windowY-=100){
  fill(0,0,0);
  rect(690,windowY,45,55);
  arc(712.5,windowY, 45, 20, radians(180), radians(360));
  };
  
  //right windows
  for(var windowY = 550; windowY > 300; windowY-=100){
  fill(0,0,0);
  rect(545,windowY,45,55);
  arc(567.5,windowY, 45, 20, radians(180), radians(360));
  };
  
   //left windows
  for(var windowY = 550; windowY > 300; windowY-=100){
  fill(0,0,0);
  rect(245,windowY,45,55);
  arc(267.5,windowY, 45, 20, radians(180), radians(360));
  };
  
  //center windows
  for(var windowY = 515; windowY > 200; windowY-=135){
  fill(0,0,0);
  rect(390,windowY,55,85);
  arc(417.5,windowY, 55, 20, radians(180), radians(360));
  };
  
  //birds
 while(birdNumber < 75){
  textSize(random(15,60));
  text("🕊️", random(0,800), random(0,600));
  birdNumber+=1;
};
  
};




