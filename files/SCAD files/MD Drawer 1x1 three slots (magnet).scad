include <Chamfer.scad>;

$fn = 50;
ang = 25;

translate([ -15,0,0]) drawer0();

module drawer0()
{
  difference() {
	chamferCube(30.4,54.1,12.4,.4,[1,1,0,0],[1,0,0,1],[]);
    translate([1,1.5,1]) chamferCube(28.4,15.5,12,2,[],[],[]);
    translate([1,18,1]) chamferCube(28.4,15.5,12,2,[],[],[]);
    translate([1,34.5,1]) chamferCube(28.4,15.5,12,2,[],[],[]);
    translate([8.5,15,11.2]) chamferCube(14,22,1.3,1.5,[],[1,0,0,1],[]);  
    translate([15,54.2,5.5]) rotate([90,0,0]) cylinder(h=1.25,r=4.15,$fn=100);
  }
//  translate([9,26,11.2]) cube([12,2,1.3]);
  
  handle();
}

module handle()
{
  difference() {
    translate([15,8,0]) chamferOval(11,18,3);
    translate([15,8,-0.1]) oval(9,16,3.2);
    translate([0.1,0.1,-0.1])	cube([29.8,30,3.2]);
  }
}

module oval(w,h, height, center = false) {
  scale([1, h/w, 1]) cylinder(h=height, r=w, center=center);
}

module chamferOval(w,h, height) {
  scale([1, h/w, 1]) chamferCylinder(height, w, w, .4, 360,1);
}