include <Chamfer.scad>;
$fn = 50;
height = 56; // in millimeters
runnersDiameter = 2.85;

house();

module house()
{
  //
  // case
  difference()
  {
    cube([33,15,height]);
    translate([-1,1,-1]) cube([34,15,height+2]); // hollow out drawer
  }

  //
  // runners
  radius = runnersDiameter/2;
  // bottom
  translate([ 4,  -1.4, 0]) chamferCylinder(height,radius,radius,.5);
  translate([ 3.5,-1.5, 0]) cube([1,1.6,height]);
  translate([29,  -1.4, 0]) chamferCylinder(height,radius,radius,.5);
  translate([28.5,-1.5, 0]) cube([1,1.6,height]);
  // right
  /*translate([34.4, 3.5,0]) chamferCylinder(height,radius,radius,.5);
  translate([32.9, 3,  0]) cube([1.6,1,height]);
  translate([34.4,11.5,0]) chamferCylinder(height,radius,radius,.5);
  translate([32.9,11,  0]) cube([1.6,1,height]);*/

  //
  // slots
/*  difference()
  {
    union()
    {
      //translate([ 1.5,  14.9, 0]) cube([5,2.8,height]);
      //translate([26.5,  14.9, 0]) cube([5,2.8,height]);
      translate([-2.7,   1,   0]) cube([2.8,5,height]);
      translate([-2.7,   9,   0]) cube([2.8,5,height]);
    }
    //translate([ 4,  16.5, -0.1]) cylinder(d=3.1,h=height+02);
    //translate([29,  16.5, -0.1]) cylinder(d=3.1,h=height+02);
    translate([-1.5, 3.5, -0.1]) cylinder(d=3.1,h=height+02);
    translate([-1.5,11.5, -0.1]) cylinder(d=3.1,h=height+02);
  }
  */
  //
  // stopper
//  translate([11,2,height-2]) rotate( [0,180,180] ) prism(l=11,w=1,h=10);
}

module prism(l, w, h)
{
  polyhedron(
    points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
    faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
  );     
}
