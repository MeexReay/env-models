include <Round-Anything/polyround.scad>

// case
translate([0, 0, 0.2])
color([0.65, 0.65, 0.65, 1])
difference(){
  union(){
    // case
    linear_extrude(height=1)
    polygon(polyRound([
      [-5, 10, 1],
      [5,  10, 1],
      [5,  -10, 1],
      [-5,  -10, 1],
    ],10));
      
    // camera block
    translate([0, 0, -0.2])
    linear_extrude(height=0.2)
    polygon(polyRound([
      [4, 9.5, 1],
      [0, 9.5, 1],
      [0, 7.75, 1],
      [4, 7.75, 1],
    ],10));
  }
  
  // screen
  translate([0, 0, 0.1])
  linear_extrude(height=1)
  polygon(polyRound([
    [-4.75, 9.75, 0.8],
    [4.75, 9.75, 0.8],
    [4.75, -9.75, 0.8],
    [-4.75, -9.75, 0.8],
  ],10));
  
  // under screen
  translate([0, 0, 0.1])
  linear_extrude(height=0.8)
  polygon(polyRound([
    [-4.85, 9.85, 0.8],
    [4.85, 9.85, 0.8],
    [4.85, -9.85, 0.8],
    [-4.85, -9.85, 0.8],
  ],10));
  
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
  
  // cut camera block
  translate([0, 0, 0])
  linear_extrude(height=0.2)
  polygon(polyRound([
    [3.95, 9.45, 1],
    [0.05, 9.45, 1],
    [0.05, 7.8, 1],
    [3.95, 7.8, 1],
  ],10));
  
  // cut back camera
  translate([3.8-1.55/2, 7.85+1.55/2, -0.3])
  cylinder(0.4, d=1.55);
  
  // cut wide camera
  translate([3.8-1.55/2 - 1.75, 7.85+1.55/2, -0.3])
  cylinder(0.4, d=1.55);
  
  // cut flashlight
  translate([3.8-1.55/2 - 2.76, 7.85+1.55/2, -0.3])
  cylinder(0.4, d=0.25);
  
  // cut pwr button
  color([0.7, 0.7, 0.7, 1])
  translate([4.85-0.075, 1, 0.3])
  rotate([0, 90, 0])
  linear_extrude(height=0.3)
  polygon(polyRound([
    [0, 1.8, 1],
    [-0.4, 1.8, 1],
    [-0.4, 0, 1],
    [0, 0, 1],
  ],10));

  // cut vol down button
  color([0.7, 0.7, 0.7, 1])
  translate([-4.85+0.075, 1, 0.3])
  rotate([0, -90, 0])
  linear_extrude(height=0.3)
  polygon(polyRound([
    [0, 1.2, 1],
    [0.4, 1.2, 1],
    [0.4, 0, 1],
    [0, 0, 1],
  ],10));

  // cut vol up button
  color([0.7, 0.7, 0.7, 1])
  translate([-4.85+0.075, 2.3, 0.3])
  rotate([0, -90, 0])
  linear_extrude(height=0.3)
  polygon(polyRound([
    [0, 1.2, 1],
    [0.4, 1.2, 1],
    [0.4, 0, 1],
    [0, 0, 1],
  ],10));
};

$fn=20;

// pwr button
color([0.7, 0.7, 0.7, 1])
translate([6, 0, 0])
linear_extrude(height=0.3)
polygon(polyRound([
  [0, 1.8, 1],
  [-0.4, 1.8, 1],
  [-0.4, 0, 1],
  [0, 0, 1],
],10));

// vol down button
color([0.7, 0.7, 0.7, 1])
translate([6.5, 0, 0])
linear_extrude(height=0.3)
polygon(polyRound([
  [0, 1.2, 1],
  [0.4, 1.2, 1],
  [0.4, 0, 1],
  [0, 0, 1],
],10));

// vol up button
color([0.7, 0.7, 0.7, 1])
translate([7, 0, 0])
linear_extrude(height=0.3)
polygon(polyRound([
  [0, 1.2, 1],
  [0.4, 1.2, 1],
  [0.4, 0, 1],
  [0, 0, 1],
],10));