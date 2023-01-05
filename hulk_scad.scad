// differnce example - compare
include <constructive-compiled.scad>

red   = "#ff0000";
green = "#00ff00";
blue  = "#0000ff";

h = 50;

/* use constructive library
 */
assemble() add() {
color(blue) X(60+h/2) Z(40) {
        difference() {
            box(side=h,y=10,h=20);
            //------------------------------------------------------------------
            turnXZ(15) turnYZ(90)        tube(h=20,dOuter=15,wall=5,$fn=6);
            X(-18) turnYZ(90) tube(h=20,dOuter=15,solid=true,$fn=3);
            X(+18) turnYZ(90) turnXY(60)  tube(h=20,dOuter=15,solid=true,$fn=3);
            
        }///difference
    }///move
}

assemble() add() {
color(blue) X(h/2) Z(40) {
        //difference() {
        //    box(side=h,y=10,h=20);
            //------------------------------------------------------------------
            turnXZ(15) turnYZ(90)        tube(h=20,dOuter=15,wall=5,$fn=6);
            X(-18) turnYZ(90) tube(h=20,dOuter=15,solid=true,$fn=3);
            X(+18) turnYZ(90) turnXY(60)  tube(h=20,dOuter=15,solid=true,$fn=3);
            
        //}///difference
    }///move
}

/* use default sets rotate first
 */
color(green) difference(){
    cube([50,10,20]);
    //------------------------------------------------------------------
    rotate([90,0,0]) translate([8,10,-20]) cylinder(30,d=15, $fn=3);
    rotate([90,0,0]) translate([26,10,-20]) rotate([0,0,15]) cylinder(30,d=15, $fn=6);
    rotate([90,0,180]) translate([-42,10,-10]) cylinder(30,d=15, $fn=3);
}///difference


/* use default sets rotate last
 */
color(red) difference() {
    translate([60,0,0])     cube([50,10,20]);
    //------------------------------------------------------------------
    translate([66,20,10])   rotate([90,0,0])   cylinder(30,d=15, $fn=3);
    translate([85,15,10])   rotate([90,15,0])  cylinder(30,d=15, $fn=6);
    translate([103,-10,10]) rotate([90,0,180]) cylinder(30,d=15, $fn=3);    
}

