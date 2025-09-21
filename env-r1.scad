include <Round-Anything/polyround.scad>

$fn=20;

// case
difference(){
  linear_extrude(height=1)
  polygon(polyRound([
    [-5, 10, 1],
    [5,  10, 1],
    [5,  -10, 1],
    [-5,  -10, 1],
  ],10));
  
  difference() {
    // screen
    translate([0, 0, 0.8])
    linear_extrude(height=0.4)
    polygon(polyRound([
      [-4.75, 9.75, 0.8],
      [4.75, 9.75, 0.8],
      [4.75, -9.75, 0.8],
      [-4.75, -9.75, 0.8],
    ],10));
    
    // front camera
    translate([0, 9.15, 0.8])
    cylinder(0.4, d=0.6);
  }
    
  // front camera
  translate([0, 9.15, 0.8])
  cylinder(0.4, d=0.4);
  
  // usb c
  translate([0, -9.6, 0])
  rotate([90, 0, 0])
  linear_extrude(height=0.8)
  polygon(polyRound([
    [-0.6, 0.75, 0.4],
    [0.6, 0.75, 0.4],
    [0.6, 0.25, 0.4],
    [-0.6, 0.25, 0.4],
  ],10));

  // right speakers
  for (i = [0:4]) { 
    translate([i*0.35 + 1.8, -9.8, 0.5])
    rotate([90, 0, 0])
    cylinder(0.4, d=0.3);
  }

  // left speakers
  for (i = [0:4]) { 
    translate([i*-0.35 - 1.8, -9.8, 0.5])
    rotate([90, 0, 0])
    cylinder(0.4, d=0.3);
  }
};

// camera
difference(){
  translate([0, 0, -0.2])
  linear_extrude(height=0.2)
  polygon(polyRound([
    [4, 9.5, 1],
    [0.3, 9.5, 1],
    [0.3, 7.75, 1],
    [4, 7.75, 1],
  ],10));
  
  translate([3.025, 8.625, -0.3])
  cylinder(0.4, d=1.55);
  
  translate([1.275, 8.625, -0.3])
  cylinder(0.4, d=1.55);
};

// pwr button
translate([-5, 1, 0.3])
rotate([0, -90, 0])
linear_extrude(height=0.1)
polygon([
  [0, 1.8],
  [0.4, 1.8],
  [0.4, 0],
  [0, 0],
]);

// vol down button
translate([5, 1, 0.3])
rotate([0, 90, 0])
linear_extrude(height=0.1)
polygon([
  [0, 1.2],
  [-0.4, 1.2],
  [-0.4, 0],
  [0, 0],
]);

// vol up button
translate([5, 2.4, 0.3])
rotate([0, 90, 0])
linear_extrude(height=0.1)
polygon([
  [0, 1.2],
  [-0.4, 1.2],
  [-0.4, 0],
  [0, 0],
]);