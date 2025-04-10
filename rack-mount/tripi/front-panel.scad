include <../common.scad>
use <../plateBase.scad>

module cover() {
	U = 5;
	plateThickness = 3;
        screwToXEdge = 4.5;
        screwToYEdge = 4.5;

	difference() {
		plateBase(U = U, plateThickness = plateThickness, screwType = mainRailScrewType, screwToXEdge = screwToXEdge, screwToYEdge = screwToYEdge, filletR = 2);

		union() {
           
        // Left cut-off    
		translate([-screwToXEdge - (10*eps), -screwToYEdge - (10 * eps) + 0.5, -plateThickness - (10*eps)])
		cube([screwToXEdge * (2.8) + (10*eps) + 1, uDiff * 5 + (10*eps), plateThickness + (20*eps)]);

        // Right cut-off
		translate([railSupportsDx - (screwToXEdge * (3.8)) + (10*eps) - 1, -screwToYEdge - (10 * eps) + 0.5, -plateThickness - (10*eps)])
		cube([screwToXEdge * (2.8) + (10*eps) + 1, uDiff * 5 + (10*eps), plateThickness + (20*eps)]);

		// Bottom cut-off
        translate([-screwToXEdge - (10*eps), -screwToYEdge - (10*eps), -plateThickness - (10*eps)])
		cube([railSupportsDx + (20*eps), 6 + (10*eps), plateThickness + (20*eps)]);
        
        // Fan vent 1    
        translate([-screwToXEdge - (10*eps) + 30, -screwToYEdge - (10*eps) + 50, -plateThickness - (10*eps) - 0])
		cube([railSupportsDx + (20*eps) - 60, 2 + (10*eps), plateThickness + (20*eps)]);
            
         // Fan vent 2
         translate([-screwToXEdge - (10*eps) + 30, -screwToYEdge - (10*eps) + 45, -plateThickness - (10*eps) - 0])
		cube([railSupportsDx + (20*eps) - 60, 2 + (10*eps), plateThickness + (20*eps)]);
            
         // Fan vent 3
         translate([-screwToXEdge - (10*eps) + 30, -screwToYEdge - (10*eps) + 40, -plateThickness - (10*eps) - 0])
		cube([railSupportsDx + (20*eps) - 60, 2 + (10*eps), plateThickness + (20*eps)]);

        // Ethernet slot 'A'
		translate([0 - (10*eps) + screwToXEdge * 2.0 + 10, 6 - (10 * eps), -plateThickness - (10*eps)])
		cube([15 + (20*eps), 17 + (20*eps), plateThickness + (20*eps)]);

        // Ethernet slot 'B'
		translate([0 - (10*eps) + screwToXEdge * 2.0 + 10 + 15 + 4.5, 6 - (10 * eps), -plateThickness - (10*eps)])
		cube([17.5 + (20*eps), 14 + (20*eps), plateThickness + (20*eps)]);

        // Ethernet slot 'C'
		translate([0 - (10*eps) + screwToXEdge * 2.0 + 10 + 15 + 4.5 + 17.5 + 4, 6 - (10 * eps), -plateThickness - (10*eps)])
		cube([17.5 + (20*eps), 14 + (20*eps), plateThickness + (20*eps)]);

        // HDMI slot 'D'
		translate([0 - (10*eps) + screwToXEdge * 2.0 + 9 + 15 + 4.5 + (17.5 + 4) * 2, 6 - (10 * eps), -plateThickness - (10*eps)])
		cube([16 + (20*eps), 6 + (20*eps), plateThickness + (20*eps)]);

        // USB slot 'E'
		translate([0 - (10*eps) + screwToXEdge * 2.0 + 9 + 15 + 4.5 + (17.5 + 4) * 2 + 16 + 5, 6 - (10 * eps), -plateThickness - (10*eps)])
		cube([6 + (20*eps), 14 + (20*eps), plateThickness + (20*eps)]);

		translate([0 - (10*eps) + screwToXEdge * 2.0 + 12 + 15 + 4.5 + (17.5 + 4) * 2 + 16 + 5 + 60,
			15 - (10 * eps), -plateThickness - (10*eps)])
		cylinder(r=4, h=inf, center=true);
		}
		;
	}


}

cover();
