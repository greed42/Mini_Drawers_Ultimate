include <Chamfer.scad>;

$fn = 50;
ang = 25;

translate([ -15,0,0]) drawer0();

module drawer0()
{
  difference() {
	chamferCube(66.8,54.1,12.4,.4,[1,1,0,0],[1,0,0,1],[]);
    translate([1,1.5,1]) chamferCube(64.8,51.6,13,2,[1,0,0,0],[],[]);
  }
  handle();
  translate([36.8,0,0]) handle();
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