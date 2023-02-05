faces=20;
step=5;

for(th=[0:step:360]) {
   hull() {
      translate([th/PI,20*sin(th    ),wave((th+168    )%180)])sphere(2,$fn=faces); 
      translate([(th+step)/PI,20*sin(th+step    ),wave((th+step+168    )%180)])sphere(2,$fn=faces); 
   }
   hull() {  
      translate([th/PI,20*sin(th+72 ),wave((th+168+72 )%180)])sphere(2,$fn=faces); 
      translate([(th+step)/PI,20*sin(th+72+step    ),wave((th+step+168+72    )%180)])sphere(2,$fn=faces);       
   }
   hull() {  
      translate([th/PI,20*sin(th+144),wave((th+168+144)%180)])sphere(2,$fn=faces);
      translate([(th+step)/PI,20*sin(th+step+144    ),wave((th+step+168+144    )%180)])sphere(2,$fn=faces);       
   }
   hull() {       
      translate([th/PI,20*sin(th+216),wave((th+168+216)%180)])sphere(2,$fn=faces);
      translate([(th+step)/PI,20*sin(th+step+216    ),wave((th+step+168+216    )%180)])sphere(2,$fn=faces);       
   }
   hull() {       
      translate([th/PI,20*sin(th+288),wave((th+168+288)%180)])sphere(2,$fn=faces);
      translate([(th+step)/PI,20*sin(th+step+288    ),wave((th+step+168+288    )%180)])sphere(2,$fn=faces);       
   }    
} 

function wave(th)=(((((((1.53850006563052E-16*th-1.27387805434208E-13)*th+4.34669346542468E-11)*th-7.88147244501425E-9)*th+ 8.16830636022657E-7)*th-4.84392712381305E-5)*th+1.54722865226176E-3)*th-2.17013888888711E-2)*th*th+1; 

