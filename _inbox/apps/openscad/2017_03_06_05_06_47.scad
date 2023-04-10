/* Yet Another Dice CASE
TH Sturgill 7/15/21
uses polyhedral solid shapes from:
// https://www.thingiverse.com/thing:1043661 Original
// https://www.thingiverse.com/thing:3472349 Modified
/*****************************************
        VARIABLES
****************************************/
use <../library/MMark.scad>
//text to display on cover - auto centered
toptext = "YET ANOTHER DICE BOX"; 

display = "all"; //options base,cover,both and debug
base = 1; //generate bottom or base section
cover = 1; // generate slide on cover


$fn=60;
module base_shape(){
    difference(){
        union(){
          rounded_cube([200,66,20],5,0,1);
            difference(){
            translate([0,-3,0]) rounded_cube([8,72,31],5,1,1);
            translate([6,-4,-1]) cube([5,73,35]);
            }
        }
        translate([100,33,0]) rotate([0,0,-90]) mmark();
        translate([26,18,12]) cylinder(d=27, h=10);
        translate([26,18,18]) cylinder(d1=27, d2=31, h=2.1);
        translate([174,18,12]) cylinder(d=27, h=10);
        translate([174,18,18]) cylinder(d1=27, d2=31, h=2.1);
        translate([26,4.5,12]) cube([150,27,10]);
        translate([26,4.5,18]) rotate([45,0,0])cube([148,4,4]);
        translate([26,31.5,18]) rotate([45,0,0])cube([148,4,4]);
        // die spots
        translate([0,19,12]) import("./mydice.stl");
        //pencil
        translate([6,40,20]) rotate([0,90,0]) cylinder(r=4.5, h=190);
        // grooves for top
        translate([6,0,9])  rotate([0,90,0]) cylinder(h=200,r=2);
        translate([6,66,9]) rotate([0,90,0]) cylinder(h=200,r=2);
        translate([200,70,9]) rotate([90,0,0]) cylinder(h=70,r=2);
        // magnet pocket
       // translate([196,13,10]) cube([3,10,12]);
        for (i=[1:9]) translate([i*20-10, 46,12]) rounded_cube([17,17,17],1,1,1);
         translate([1.5*20-10, 46,12]) rounded_cube([17,17,17],1,1,1);
         translate([8.5*20-10, 46,12]) rounded_cube([17,17,17],1,1,1);   

    }
}
module cover_shape(){
   difference(){
        translate([-1,-83,0])rounded_cube([205,72,22],6,1,0);
        translate([-5,-81,1]) rounded_cube([207,68,19],5,1,0);
        translate([-1,-78,-1]) cube([199.5,62,14]);
        translate([-7,-83.5,-1]) cube([13,73,34]);
        //translate([202,-27,9]) rotate([0,90,0]) cylinder(d=15,h=2.5); //magnet
    }
    
   color("black")translate([100,-48,21.8])linear_extrude(1.0) text(toptext,font = "Herculanum", size=20,halign="center",valign="center");
    
}

module xdice(){
    //pencil
    translate([7,41,20]) rotate([0,90,0]) cylinder(r=4.5, h=190);
    translate([34,17,10]) rotate([0,0,90])cylinder(d=28, h=3, $fn=3);
    translate([34,17,10]) rotate([0,0,90])cylinder(d1=28,d2=0, h=18, $fn=3);
    translate([48,10,6])  cube(17); // 6 sided
    translate([76,19,14]) rotate([90,0,0])rotate([0,0,45])cylinder(d2=0, d1=25,h=12.5,$fn=4);// 8 sided
    translate([76,19,14]) rotate([90,0,0])rotate([180,0,0]) rotate([0,0,45])cylinder(d2=0, d1=25,h=12.5,$fn=4);// 8 sided
    translate([99,19,14]) rotate([180,0,0]) cylinder(d2=0, d1=25,h=12,$fn=5); // 10 sided
    translate([99,19,14]) rotate([0,0,36]) cylinder(d2=0, d1=25,h=12,$fn=5); // 10 sided
    translate([122,19,14]) rotate([0,0,36]) cylinder(d2=0, d1=25,h=12,$fn=5);//percentile
    translate([122,19,14]) rotate([180,0,0]) cylinder(d2=0, d1=25,h=12,$fn=5);//percentile
    translate([146,19,12]) rotate([0,0,36])  sphere(d=24,$fn=5);// 12 sided
    translate([169,19,14]) sphere(d=25, $fn=60);// D20
}
module filler(){
    difference(){
        translate([10,1,16]) cube([177,31,5]);
        translate([1.25,0,0]) scale([0.99,0.93,1]) base_shape();
        translate([0,17,10]) import("./mydice.stl");
    }
}
module stand(){
    difference(){
        cube([15,36,15]);
        translate([-6,35,33])rotate([180,0,0])filler();
        translate([2,1,11]) cube([15,34,2]);
        translate([1,-1, 1.2]) cube([17,38,8.6]);
        //translate([1,6,-1]) cube([17,24,11]);
    }
}
module stand3(){
    rotate([0,-90,0]) stand();
    translate([18,-35,0]) rotate([0,-90,0])  stand();
    translate([36,-70,0]) rotate([0,-90,0])  stand();
    translate([0,-35,0]) cube([36,71,1]);
    translate([-10,35,0])cube([46,1,15]);
    translate([-10,0,0])cube([46,1,15]);
    translate([0,-35,0])cube([36,1,15]);
    translate([16,-70,0])cube([20,1,15]);
}
module rounded_cube(size, radius, top, bottom) {
    //defines cube with rounded sides
	x = size[0];
	y = size[1];
	z = size[2];
    if (radius >= z) {
        top=false;
        bottom=false;
        echo("HEIGHT MUST BE GREATER THAN RADIUS");
    }    
	hull() {
		// place corners
  		translate([radius,   radius,   0])  edge_shape(z,radius,top,bottom);
		translate([radius,   y-radius, 0])  edge_shape(z,radius,top,bottom);
		translate([x-radius, radius,   0])  edge_shape(z,radius,top,bottom);
		translate([x-radius, y-radius, 0])	edge_shape(z,radius,top,bottom);
	}
}
module edge_shape(z,radius,top,bottom){
    if (top) {
        if (bottom) {
            translate([0,0,radius])cylinder(r=radius, h=z-radius*2, $fn=30);
            translate([0,0,radius]) sphere(r=radius, $fn=30);
        }
        else cylinder(r=radius, h=z-radius, $fn=30);
        translate([0,0,z-radius]) sphere(r=radius, $fn=30);  
    } 
    else if (bottom) {
        translate([0,0,radius]) sphere(r=radius, $fn=30);
        translate([0,0,radius]) cylinder(r=radius, h=z-radius, $fn=30);
    } 
    else cylinder(r=radius, h=z, $fn=30);
} 

/*****************************************************
  D I S P L A Y     S E C T I O N
******************************************************/
if (display == "base" || display == "both" || display == "debug"|| display == "all") base_shape();
if (display == "debug") translate([0,45,7.5]) {cover_shape(); filler();} 
if (display == "cover" || display == "both"|| display == "all" ) cover_shape();
if ( display == "all" || display == "filler"){ 
    translate([0,-90,21]) rotate([180,0,0]) filler();}
   translate([60,-65,0 ]){
   rotate([0,-90,0])  stand();
   translate([10,0,0]) rotate([0,90,0]) mirror([1,0,0]) stand();
   }

//import("./mydice.stl");

