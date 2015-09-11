$fa=5; $fs=0.1;

module servo_mount(){

difference(){
    
    linear_extrude(height = 5, center = true, convexity = 10, twist = 0, slices = 20, scale = 1.0) polygon(points=[[0,0],[30,0],[0,30]], paths=[[0,1,2]]);
    
    union()
    {
        // mounting holes
        translate([3, 3, 0]) cylinder(h=5.01, r=1.7, center=true);
        translate([23, 3, 0]) cylinder(h=5.01, r=1.7, center=true);
        translate([3, 23, 0]) cylinder(h=5.01, r=1.7, center=true);
        
        //servo hole
        translate([10, 10, 0]) cylinder(h=5.01, r=2.35, center=true);
        translate([10,10, 1.5]) cylinder(h=2.01, r=3.2, center=true);

    }
    
    
}
}

servo_mount();
