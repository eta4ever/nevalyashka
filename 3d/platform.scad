$fa=5; $fs=0.1;

module servo_mount_holes(){
        
        translate([3, 3, 0]) cylinder(h=4.01, r=1.7, center=true);
        
        translate([23, 3, 0]) cylinder(h=4.01, r=1.7, center=true);
        translate([23, 3, 3.01]) cylinder(h=2, r=3.2, center=true);
    
        translate([3, 23, 0]) cylinder(h=4.01, r=1.7, center=true);
        translate([3, 23, 3.01]) cylinder(h=2, r=3.2, center=true);
}

difference(){

union()
    {
        translate([0, 0, -1.5]) cube([78, 78 , 3], center=true);

        translate([-27.5, 30, 0]) cube([9, 6, 2]);
        translate([18.5, 30, 0]) cube([9, 6, 2]);
        translate([-27.5, -36, 0]) cube([9, 6, 2]);
        translate([18.5, -36, 0]) cube([9, 6, 2]);
    }
    
    // struct holes
    translate([-29, 5, -3.01]) cube([24, 24, 3.02]);
    translate([5, 5, -3.01]) cube([24, 24, 3.02]);
    
    translate([-29, -29, -3.01]) cube([24, 24, 3.02]);
    translate([5, -29, -3.01]) cube([24, 24, 3.02]);
    
    // servo mount
    translate([-39, -39, -2]) servo_mount_holes();
    translate([-39, 39, -2]) rotate([0, 0, 270]) servo_mount_holes();
    translate([39, 39, -2]) rotate([0, 0, 180]) servo_mount_holes();
    translate([39, -39, -2]) rotate([0, 0, 90]) servo_mount_holes();
    
    // pcb mount holes
    translate([-25, 33, -0.5]) cylinder(h = 5.01, r = 1.7, center=true);
    translate([-25, 33, -1.75]) cylinder(h = 2.51, r = 3.2, center=true);
    
    translate([25, -33, -0.5]) cylinder(h = 5.01, r = 1.7, center=true);
    translate([25, -33, -1.75]) cylinder(h = 2.51, r = 3.2, center=true);
    
    translate([25, 33, -0.5]) cylinder(h = 5.01, r = 1.7, center=true);
    translate([25, 33, -1.75]) cylinder(h = 2.51, r = 3.2, center=true);
    
    translate([-25, -33, -0.5]) cylinder(h = 5.01, r = 1.7, center=true);
    translate([-25, -33, -1.75]) cylinder(h = 2.51, r = 3.2, center=true);
    
}



