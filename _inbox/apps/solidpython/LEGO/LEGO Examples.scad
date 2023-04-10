use <LEGO.scad>;

generate_stack = false;
hide = false;
show_white = true;
active=true;
show_road = false;

rotate([0, 0, 180]) union() {
    if(active) color("gray") place(0, -4) uncenter(-4, 0) rotate([0, 0, 90]) block(
        type="brick",
        roadway_invert=true,
        width=4,
        length=3,
        height=1/3,
        roadway_width=2,
        roadway_length=2,
        roadway_y=1,
        roadway_x=1,
            stud_type="hollow"
    );
    if(active) color( "blue" ) place(-2, 0, 0) uncenter(2, 2) block(
            width=2,
            length=2,
            horizontal_holes=true,
    
            vertical_axle_holes=true,
            stud_type="hollow"
        );
    if(show_white) color( "white" ) place(4, 3, 0) uncenter(2, 2) block(
            width=2,
            length=2,
            height=1/3,
            vertical_axle_holes=true,
            stud_type="hollow"
        );
    
    if(show_road) place(-4, -12) uncenter(22, 6) rotate([0, 0, 90]) block(
        type="baseplate",
        width=6,
        length=22,
        roadway_width=6,
        roadway_length=6,
        roadway_x=12,
        stud_type="hollow"
    );
        //place(0, 0, 13/96) {
        if(false) color( "yellow" ) place(-5, -5, 0) uncenter(1/3, 15, 4) if(hide) rotate([90, 0, 0]) block(
            dual_sided=true,
            width=4,
            length=15,
            height=1/3
        );
    
        if(hide) color( "orange" ) place(-6.5, -3, 0) uncenter(1/3, 11, 3) rotate([90, 0, 0]) block(
            dual_bottom=true,
            width=3,
            length=15,
            height=1/3
        );
    
        if(hide) color( "red" ) place(1, 0, 0) uncenter(2, 9) block(
            width=2,
            length=9,
            height=2,
            reinforcement=true
        );
        
        
        
        
        
        if(hide) color( "green" ) place(4, 6, 0) uncenter(2, 3) block(
            width=2,
            length=3,
            height=1/3,
            type="tile"
        );
        
        if(show_white && false) color( "white" ) place(7, 0, 0) uncenter(4, 9) block(
            width=4,
            length=9,
            height=1/3,
            type="wing",
            stud_notches=false
        );
    
        if(hide) color( "yellow" ) place(12, 0, 0) uncenter(1, 8) block(
            width=1,
            length=8,
            horizontal_holes=true
        );
        
        if(hide) color( "black" ) place(16, -5, 0) uncenter(2, 4) block(
            width=2,
            length=4,
            type="slope"
        );
        
        if(hide) color( "green" ) place(-4, 0, 0) uncenter(4, 6) block(
            width=2,
            length=3,
            brand="duplo",
            reinforcement=true,
            stud_type="hollow"
        );
        
        if(hide) color( "blue" ) place(-4, 7, 0) uncenter(4, 4) rotate([0, 0, 180]) block(
            width=2,
            length=2,
            brand="duplo",
            reinforcement=true,
            stud_type="hollow",
            type="curve"
        );
        
        if(hide) color( "gray" ) place(-4, -5, 0) uncenter(12, 4) rotate([0, 0, 270]) block(
            width=2,
            length=6,
            height=2,
            curve_end_height=1,
            brand="duplo",
            type="curve",
            curve_type="convex",
            curve_stud_rows=5
        );
    
        if(hide) color( "blue" ) place(9, -5, 0) uncenter(6, 4) rotate([0, 0, 270]) block(
            width=4,
            length=6,
            height=2,
            brand="lego",
            reinforcement=true,
            stud_type="hollow",
            type="slope",
            slope_stud_rows=4,
            slope_end_height=1
        );
    
        if(hide) color( "red" ) place(14, 0, 0) uncenter(3, 7) block(
            width=3,
            length=7,
            height=1,
            type="wing",
            wing_type="left",
            wing_end_width=1
        );
    
        if(hide) color( "yellow" ) place(1, 10, 0) uncenter(6, 2) rotate([0, 0, 90]) block(
            width=2,
            length=6,
            height=1/3,
            type="wing",
            wing_type="right",
            wing_end_width=1,
            wing_base_length=1
        );
   // }
   
if(generate_stack) stack(-7,-9,0) {
        color("red") uncenter(0, 0) block(
            width=4,
            length=6,
            height=1/3,
            type="block",
            reinforcement="yes",
            include_wall_splines="no"
        );
        stack(0,0,1/3) {
            color("yellow") uncenter(0,0) rotate([0,0,90]) block(
                width=2,
                length=4,
                height=1/3,
                type="block",
                block_bottom_type="closed"
            );
            color("green") uncenter(0, 0) block(
                width=2,
                length=4,
                height=1,
                type="block",
                block_bottom_type="closed"
            );
            stack(0,0,1) {
                color("blue") uncenter(0, 0) block(
                        width=2,
                        length=2,
                        height=1/3,
                        block_bottom_type="closed"
                    );
                stack(0,0,1/3) {
                    color("purple") uncenter(0, 1) rotate([0,0,90]) block(
                        width=1,
                        length=2,
                        height=1,
                        block_bottom_type="closed"
                    );
                }
            }
        }
    }
    if(hide) color("gray") place(8, 10, 0) uncenter(2, 2) block(
        height=1/3,
        width=2,
        length=2,
        stud_top_roundness=0.3
    );
    if(show_white && false) color("white") place(-6, 13) block(
        type="round",
        width=3,
        length=3
    );


}