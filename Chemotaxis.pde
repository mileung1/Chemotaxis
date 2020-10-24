bacterias[] colony; //declare bacteria variables here    
 void setup()    
 {                
    size(800,700);
    colony = new bacterias[10];   
    for(int i=0;i<colony.length;i++)
    {
      colony[i]= new bacterias();  
    }
     }    
     void draw()    
     {                     
      background(50,100,25);
for(int i=0;i<colony.length;i++){
         colony[i].walk();
         colony[i].show();
         }
         //move and show the bacteria    
         }   
         class bacterias   
{              
    int myX, myY;
    bacterias()
    {
        myX = myY = 300;
    }
    void walk()
 { 
  myX=myX+(int)(Math.random()*11)-5;
  myY=myY+(int)(Math.random()*11)-5;
 if(myX>600)
 {
 myX=0;
 }
 if(myX<0)
 {
 myX=600;
 }
 if(myY>700)
 {
 myY=0;
 }
 if(myY<0)
 {
 myY=700;
 }
 }   
     void show()
{
   fill(700,15,0);
    ellipse(myX,myY,50,50);
    }
}    
