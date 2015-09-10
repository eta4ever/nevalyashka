// servos 1-2 mount

$fa=5; $fs=0.1;

difference(){
    
    union()
    {
        cube([29.5,27.5,7]);
        translate([12.25, -7, 0]) cube([5, 7, 7]);
    }

    union()
    {
        translate([2, 2, -0.01]) cube([25.5, 23.7, 7.02]);
        translate([14.25, -7.01, -0.01]) cube([1, 9.02, 7.02]);
        
        translate([14.75, -3.5, 3.5])
            rotate([0, 90, 0]) cylinder(h = 5.02, r = 1.75, center=true);
    }
    
    
}

