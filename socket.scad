bearing_diameter = 3;

length_multiplier=4;
thickness_multiplier = 1/8;

lm = length_multiplier;
tm = thickness_multiplier;

d=bearing_diameter;
r=0.5*d;
h = length_multiplier*lm;

translate([0,0,4*d]){
	sphere(r=d, $fs=0.1*d);
}


cylinder(r=d, h=h, $fs=0.1);

translate([-r, 0.5*r, h]){
	cube([d, tm*d, h]);
}