include <Chamfer.scad>;
$fn = 50;
height = 56; // in millimeters
runnersDiameter = 2.85;

difference() {
  union() {
    house();
    translate([35.9,0,0]) house();
    translate([32,14,0]) cube([5,1,height]);
    translate([32,0,0]) cube([5,1,height]);
    translate([32,1,0]) cube([5,13,1]);
  }
  translate([27,1,1]) cube([12,13,height]);
}

module house()
{
  //
  // case
  difference()
  {
    cube([33,15,height]);
    translate([1,1,1]) cube([31,13,height]); // hollow out drawer
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
  translate([34.4, 3.5,0]) chamferCylinder(height,radius,radius,.5);
  translate([32.9, 3,  0]) cube([1.6,1,height]);
  translate([34.4,11.5,0]) chamferCylinder(height,radius,radius,.5);
  translate([32.9,11,  0]) cube([1.6,1,height]);

  //
  // slots
  difference()
  {
    union()
    {
      translate([ 1.5,  14.9, 0]) cube([5,2.8,height]);
      translate([26.5,  14.9, 0]) cube([5,2.8,height]);
      translate([-2.7,   1,   0]) cube([2.8,5,height]);
      translate([-2.7,   9,   0]) cube([2.8,5,height]);
    }
    translate([ 4,  16.5, -0.1]) cylinder(d=3.1,h=height+02);
    translate([29,  16.5, -0.1]) cylinder(d=3.1,h=height+02);
    translate([-1.5, 3.5, -0.1]) cylinder(d=3.1,h=height+02);
    translate([-1.5,11.5, -0.1]) cylinder(d=3.1,h=height+02);
  }
}
