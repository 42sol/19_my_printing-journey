$fn=21;
$use_42sol_nodge = true;
$use_lid_hole = true;
$show_box = true;
$show_lid = true;
$height = 50.0; // height of box
$wall_thikness = 5; // thikness of wall and bottom
$box_size = 6.0; // size of the box
$box_r_corner = 5.0; // corner radius of the box

module core_2d (width = 20, r_corner=5) {
    offset = width / 2;
    if(r_corner > offset) {
        use_r_corner = (offset / 10.0);
        call_core_2d(offset, offset/10.0);
        echo("........reset corner radius (r_corner) %d", use_r_corner);
    
    } else {
       call_core_2d(offset, r_corner);
    } 
}

module call_core_2d(offset,r_corner) {
    if($use_42sol_nodge) translate([offset,0,0]) circle(r_corner*sqrt(2),$fn=4);
    else translate([offset,0,0])  circle(r_corner);
    translate([-offset,0,0]) circle(r_corner);
    translate([0,offset,0]) circle(r_corner);
    translate([0,-offset,0]) circle(r_corner);
}//module call 2d

module core (width=100, r_corner=10) {
hull () core_2d(width,r_corner);
}

module box(size=50) {
    difference() {
        linear_extrude($height) {
           core(50,$box_r_corner);
        }
        translate([0,0,$wall_thikness]) linear_extrude($height) {
            core(50-2*$wall_thikness,$box_r_corner);
        }
    }
}

module lid(size=50) {
        translate([0,0,$height+$wall_thikness]) linear_extrude($wall_thikness) {
           core(50,$box_r_corner);
        }
        translate([0,0,$height]) linear_extrude($wall_thikness*2) {
            core(50-2*$wall_thikness,$box_r_corner);
        }
}




module main() {
    if($show_box) box($box_size);
    if($show_lid) #difference() {
        lid($box_size);
        cylinder(200,r=$box_r_corner*2.0);
    }

}

rotate([0,0,45]) main();
//rotate([0,0,45]) core(50,24);