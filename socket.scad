bearing_diameter = 3;
internal_diameter = bearing_diameter-1;

length_multiplier= 2;
thickness_multiplier = 0.5;

lm = length_multiplier;
tm = thickness_multiplier;

d=bearing_diameter;
id=internal_diameter;
r=0.5*d;
h = length_multiplier*d;
fs = 0.1*d;

difference(){
	cylinder(r=d, h=h, $fs=fs);
	translate([0,0,-1]){
		cylinder(r=id, h=1+h-tm*d, $fs=fs);
	}
}

module pillar(){
	translate([-0.8*r, .8*r, h]){
		cube([0.8*d, tm*d, 1.5*d]);

	}
}
module pillars(){
	pillar();
	mirror([0,1,0]){
		pillar();
	}
}
translate([0,0,0]){
	difference(){
		pillars();
		translate([0,0,h+1*d]){
			sphere(r=r, $fs=fs);
		}
	}
}

