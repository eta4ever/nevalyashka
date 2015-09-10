$fa=5; $fs=0.1;

difference(){
    
    union()
    {
        cube([12, 5, 3]);
        translate([-0.1, 4.8, 1.5])
            scale([1, 1, 3])
                import("leg.dxf", convexity=3);
    }
    
    translate([6, 2.5, 1.5])
        cylinder(h=3.01, r=1.2, center=true);
}