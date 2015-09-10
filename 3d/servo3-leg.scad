$fa=5; $fs=0.1;

difference(){
    
    union()
    {
        cube([12, 5, 3]);
        translate([-0.1, 4.8, 1.5])
            linear_extrude(height = 3, center = true, convexity = 10, twist = 0, slices = 20, scale = 1.0)
                import("leg.dxf", convexity=3);
    }
    
    translate([6, 2.5, 1.5])
        cylinder(h=3.01, r=1.2, center=true);
}