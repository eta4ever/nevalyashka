$fa=5; $fs=0.1;

difference(){

union()
    {
        translate([0, 0, -1.5]) cube([78, 78 , 3], center=true);

        translate([-27.5, 30, 0]) cube([9, 6, 2]);
        translate([18.5, 30, 0]) cube([9, 6, 2]);
        translate([-27.5, -36, 0]) cube([9, 6, 2]);
        translate([18.5, -36, 0]) cube([9, 6, 2]);
    }
    
    // servo holes
    translate([-32, 32, -1.5]) cylinder(h=3.01, r=2.35, center=true);
    translate([32, -32, -1.5]) cylinder(h=3.01, r=2.35, center=true);
    translate([32, 32, -1.5]) cylinder(h=3.01, r=2.35, center=true);
    translate([-32, -32, -1.5]) cylinder(h=3.01, r=2.35, center=true);
    
    // pcb mount holes
    translate([-25, 33, -0.5]) cylinder(h = 5.01, r = 1.7, center=true);
    translate([25, -33, -0.5]) cylinder(h = 5.01, r = 1.7, center=true);
    translate([25, 33, -0.5]) cylinder(h = 5.01, r = 1.7, center=true);
    translate([-25, -33, -0.5]) cylinder(h = 5.01, r = 1.7, center=true);
    
}