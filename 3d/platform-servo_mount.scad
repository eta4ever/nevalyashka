$fa=5; $fs=0.1;

module servo_mount(){

difference(){
    
    linear_extrude(height = 4, center = true, convexity = 10, twist = 0, slices = 20, scale = 1.0) polygon(points=[[0,0],[30,0],[20,10],[30,20],[20,30],[10,20],[0,30]], paths=[[0,1,2,3,4,5,6]]);
    
    
    
    union()
    {
        // mounting holes
        translate([3, 3, 0]) cylinder(h=4.01, r=1.7, center=true);
        translate([23, 3, 0]) cylinder(h=4.01, r=1.7, center=true);
        translate([3, 23, 0]) cylinder(h=4.01, r=1.7, center=true);
        
        //servo hole
        translate([10,10,0.5]) cylinder(h=3.01, r=3.5, center=true);
        translate([10,10,0]) cylinder(h=4.01, r=2, center=true);
        
        translate([10,10,0.75])
            rotate([0, 0, 45])
                hull()
                {
                    translate([0, 0, 0]) cylinder(h=2.51, r=3.5, center=true);
                    translate([17, 0, 0]) cylinder(h=2.51, r=2.2, center=true);
                }
        
        

    }
    
    
}
}

servo_mount();

