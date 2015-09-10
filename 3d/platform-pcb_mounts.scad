$fa=5; $fs=0.1;

difference(){
    
    cube([9, 6, 4]);
    
    union()
    {
            translate([5, -0.01, 2]) cube([4.01, 4.01, 2.01]);
            translate([2.5, 3, 2]) cylinder(h=4.01, r=1.7, center=true);
    }
}


translate([12, 0, 0])

difference(){
    
    cube([9, 6, 4]);
    
    union()
    {
            translate([-0.01, -0.01, 2]) cube([4.01, 4.01, 2.01]);
            translate([6.5, 3, 2]) cylinder(h=4.01, r=1.7, center=true);
    }
}