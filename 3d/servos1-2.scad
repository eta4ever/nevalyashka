// servos 1-2 mount

$fa=5; $fs=0.1;

difference(){
    
    union()
    {
        cube([29.5,27.5,7]);
        translate([11.25, -7, 0]) cube([7, 7, 7]);
    }

    union()
    {
        translate([2.5, 2.5, -0.01]) cube([24.5, 22.7, 7.02]);
        translate([13.75, -7.01, -0.01]) cube([2, 10.02, 7.02]);
        
        translate([14.75, -3.5, 3.5])
            rotate([0, 90, 0]) cylinder(h = 7.02, r = 1.75, center=true);
    }
    
    
}

