#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"

camera {
	location<0, 1, -3>
	look_at <0, 1, 0>
	right x * image_width / image_height
	angle 75
}

light_source {
	<1000, 1000, -1500>
	color White
}

sphere {
	<0, 0, 0>, 0.5
	texture { Polished_Chrome }
	translate<0, 1.35, 0>
}

// Sky
plane {
	<0, 1, 0>,1 hollow
	texture {
		pigment { bozo turbulence 0.92
			color_map {
				[0.00 rgb<0.05,0.15,0.45>]
				[0.50 rgb<0.05,0.15,0.45>]
				[0.75 rgb<1,1,1>]
				[0.85 rgb<0.2,0.2,0.2>]
				[1.00 rgb<0.5,0.5,0.5>]
			}
			scale<1,1,1.5>*2.5
			translate<0,0,0>
		}
		finish {ambient 1 diffuse 0}
	}
	scale 10000
}

fog {
	fog_type 2
	distance 50
	color rgb<1,1,1>*0.8
	fog_offset 0.1
	fog_alt 1.5
	turbulence 1.8
}

// Grass
plane {
	<0, 1, 0>, 0
	texture {
		pigment { color rgb<0.22, 0.45, 0> }
		normal { bumps 0.75 scale 0.015 }
		finish { phong 0.1 }
	}
}
