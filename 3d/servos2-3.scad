// servos 2-3 mount

$fa=5; $fs=0.1;

difference(){
    
    cylinder(h=5, r=6, center=true);
    
    union()
    {
        translate([0, 0, -1]) cylinder(h=3.01, r=2.35, center=true);
        translate([0, 0, 1.5]) cylinder(h=2.01, r=1.25, center=true);
        //translate([0, 0, 2]) cylinder(h=1.01, r =2.35, center=true);
    }
    
}

translate([30,0,0])
difference(){
    
    cylinder(h=5, r=6, center=true);
    
    union()
    {
        translate([0, 0, -1]) cylinder(h=3.01, r=2.35, center=true);
        translate([0, 0, 1.5]) cylinder(h=2.01, r=1.25, center=true);
        //translate([0, 0, 2]) cylinder(h=1.01, r =2.35, center=true);
    }
    
}
        
translate([2.5, -2.5, -2.5]) cube([25, 5, 5]);