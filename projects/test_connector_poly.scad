// translateRadiiPoints example

include <polyround.scad>
include <solid/constructive.scad>

r_min=0.8;
thikness = 1.6;


conn_x1 = 4;  conn_y1 = 0;
conn_x2 = conn_x1 * 2.0; 
conn_y2 = 8;
conn_y3 = conn_y2 +  (conn_y2 * 1);
function connector_1(r_start_end=0)=[
  [-conn_x1,      conn_y1,   r_start_end],
  [-conn_x1,      conn_y2,   0],
  [-conn_x2,      conn_y2,   r_min],
  [-conn_x2,      conn_y3,   r_min],
  //[       0,      conn_y3+thikness,   r_min], 
  [+conn_x2,      conn_y3,   r_min],
  [+conn_x2,      conn_y2,   r_min],
  [+conn_x1,      conn_y2,   0],
  [+conn_x1,      conn_y1,   r_start_end],
];

diff_1 = conn_x1 * 0.1;

function connector_2(r_start_end=0)=[
  [-conn_x1+diff_1,      conn_y1,          r_start_end],
  [-conn_x1+diff_1,      conn_y2+diff_1+thikness,   0],
  [+conn_x1-diff_1,      conn_y2+diff_1+thikness,   0],
  [+conn_x1-diff_1,      conn_y1,          r_start_end],
];

function connector_3(r_start_end=0)=[
  [-conn_x1+diff_1+thikness,      conn_y2+diff_1+thikness,   r_start_end],
  [-conn_x2+diff_1+thikness,      conn_y2+diff_1+thikness,   r_min],
  [-conn_x2+diff_1+thikness,      conn_y3-diff_1-thikness,   r_min],
  [              0,      conn_y3+6*diff_1-thikness,   r_min], 
  [+conn_x2-diff_1-thikness,      conn_y3-diff_1-thikness,   r_min],
  [+conn_x2-diff_1-thikness,      conn_y2+diff_1+thikness,   r_min],
  [+conn_x1-diff_1-thikness,      conn_y2+diff_1+thikness, r_start_end],
];

function connector_4(r_start_end=0)=[
  [-conn_x1+diff_1,      conn_y1,          r_start_end],
  [-conn_x1+diff_1,      conn_y2+diff_1,   0],
  [-conn_x2+diff_1,      conn_y2+diff_1,   r_min],
  [-conn_x2+diff_1,      conn_y3-diff_1,   r_min],
  [              0,      conn_y3+0,        r_min], 
  [+conn_x2-diff_1,      conn_y3-diff_1,   r_min],
  [+conn_x2-diff_1,      conn_y2+diff_1,   r_min],
  [+conn_x1-diff_1,      conn_y2+diff_1,   0],
  [+conn_x1-diff_1,      conn_y1,          r_start_end],
];



a1 = 40.0;
r1 = a1;
d1 = 2 * r1;
h1=a1*sin(60);
    



//Y(-10) linear_extrude(3) Y(-h1) polygon(polyRound(connector_1(0)));
//Y(  0) linear_extrude(3) Y(-h1) polygon(polyRound(connector_2(0)));
//Y(+10) linear_extrude(3) Y(-h1) polygon(polyRound(connector_3(0)));

connector_neg_1=translateRadiiPoints(connector_1(),tran=[0,h1],rot=180);
connector_pos_2=translateRadiiPoints(connector_2(),tran=[0,h1],rot=0);
connector_pos_3=translateRadiiPoints(connector_3(),tran=[0,h1],rot=0);
connector_pos_4=translateRadiiPoints(connector_4(),tran=[0,h1],rot=0);

//linear_extrude(3) Y(-h1) shell2d(thikness) polygon(polyRound(connector_3(0)));

module base_part_pos(rotate_n, color_1="#ffff00", a=a1, height=6) {
    h=a*sin(60);
    
    base_triangle_1=concat(
    [[0,0,0]],
    [[+a/2,h,0]],
    connector_pos_2,
    [[-a/2,h,0]]
    );
    
    color(color_1) turnXY(rotate_n) linear_extrude(height) polygon(polyRound(base_triangle_1,20));
    turnXY(rotate_n) linear_extrude(height+3) Y(h1) shell2d(thikness) polygon(polyRound(connector_3(0)));
}   

module base_part_neg(rotate_n, color_1="#ffff00", a=a1, height=6) {
    h=a*sin(60);
    
    base_triangle_1=concat(
    [[0,0,0]],
    [[+a/2,h,0]],
    connector_neg_1,
    [[-a/2,h,0]]
    );
    
   color(color_1) Z(0) turnXY(rotate_n) 
    {
        linear_extrude(height) polygon(polyRound(base_triangle_1,20));
    }
}


module base_part(rotate_n, color_1="#ffff00", a=a1,height=3) {
    h=a*sin(60);
    
    base_triangle_1=concat(
    [[0,0,0]],
    [[+a/2,h,0]],
    [[-a/2,h,0]]
    );
    
   color(color_1) Z(0) turnXY(rotate_n) linear_extrude(height) polygon(polyRound(base_triangle_1,20));
}


pieces(1) {
    Z(0) base_part_neg(every(120)-60,color_1="#ff0000",height=6);
    Z(0) base_part_pos(every(120),color_1="#ff0000",height=3);
    Z(3) base_part(every(120),color_1="#ff0000",height=4);
}



Z(6) difference() {
 pieces(2) base_part(every(60)-60);
}

h_2 = 20;


//color("#ff00ff") Z(6+h_2/2) tube(h=h_2-6,d=d1-4,wall=2,$fn=6);
//color("#0011ff") Z(6+h_2) chamfer(-2,-2) tube(h=12,d=d1,wall=4,$fn=6);
//color("#00ff11")Z(6+h_2) chamfer(-2,-2) tube(h=6,d=d1,wall=4,$fn=6);



base_1=concat(
  [[-a1,0,0]],                    //point 1 
  [[-a1*cos(60),a1*sin(60),0]],    //point 2
  [[a1*cos(60),a1*sin(60),0]],     //point 3
  [[+a1,0,0]],                    //point 4
  [[a1*cos(60),-a1*sin(60),0]],    //point 5
  [[-a1*cos(60),-a1*sin(60),0]]    //point 6
);
//Z(-10) linear_extrude(3)polygon(polyRound(base_1,20));


///////////////////////////