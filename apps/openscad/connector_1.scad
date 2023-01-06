include <solid/constructive.scad>

connector_height = 1;
connector_diameter = 5;
connector_material = 1;

module connector_frame() {
difference() {
    tube(h=connector_height,dInner=connector_diameter-  connector_material,dOuter=connector_diameter,$fn=6);
    right(connector_diameter/2) box(x=connector_diameter*0.6,y=connector_material,z=connector_height*1.2);
}///difference
}///module connector_frame

module connector_spring() {
right(connector_diameter/4)  difference() {
tube(h=connector_height,dInner=connector_diameter-  connector_material,dOuter=connector_diameter,$fn=6);
    #right(connector_diameter/4)box(x=connector_diameter/2,y=connector_diameter*1.2, z=connector_height*1.2);
}///difference
}///module connector_srping

module connector_staff() {

left(connector_diameter/2) box(x=connector_diameter*0.7,y=connector_material,z=connector_height*1.0);

}///module connector_srping

chamfer(-0.1,-0.1)  {
connector_frame();
connector_spring();
connector_staff();
}//chamfer()


text("\uF04E", font="remixicon", size=5);

right(20) text("EEEE", font="arial", size=5);
right(10) text("\uEEEE", font="remixicon", size=5);

down(20) {
right(20) text("\\uEA101", font="arial", size=5);
right(10) text("\uEA101", font="remixicon", size=5);
}