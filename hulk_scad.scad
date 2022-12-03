difference(){
cube([50,10,20]);
rotate([90,0,0]) translate([11,10,-20]) cylinder(30,r=5, $fn=3);
rotate([90,0,0]) translate([26,10,-20]) rotate([0,0,15]) cylinder(30,r=5, $fn=6);
rotate([90,0,180]) translate([-41,10,-10]) cylinder(30,r=5, $fn=3);
}
//rotate([90,0,0]) translate([11,10,-20]) cylinder(30,r=5);

