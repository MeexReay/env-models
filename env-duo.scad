include <Round-Anything/polyround.scad>

// case
difference(){
  linear_extrude(height=1)
  polygon(polyRound([
    [-5, 10, 1],
    [5,  10, 1],
    [5,  -10, 1],
    [-5,  -10, 1],
  ],10));
  
  // screen
  translate([0, 0, 0.8])
  linear_extrude(height=0.4)
  polygon(polyRound([
    [-4.75, 9.75, 0.8],
    [4.75, 9.75, 0.8],
    [4.75, -9.75, 0.8],
    [-4.75, -9.75, 0.8],
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
};

$fn=20;

// camera
difference(){
  translate([0, 0, -0.2])
  linear_extrude(height=0.2)
  polygon(polyRound([
    [4, 9.5, 1],
    [0, 9.5, 1],
    [0, 7.75, 1],
    [4, 7.75, 1],
  ],10));
  
  translate([3.8-1.55/2, 7.85+1.55/2, -0.3])
  cylinder(0.4, d=1.55);
  
  translate([3.8-1.55/2 - 1.75, 7.85+1.55/2, -0.3])
  cylinder(0.4, d=1.55);
  
  translate([3.8-1.55/2 - 2.76, 7.85+1.55/2, -0.3])
  cylinder(0.4, d=0.25);
};

// pwr button
translate([5, 1, 0.3])
rotate([0, 90, 0])
linear_extrude(height=0.1)
polygon(polyRound([
  [0, 1.8, 1],
  [-0.4, 1.8, 1],
  [-0.4, 0, 1],
  [0, 0, 1],
],10));

// vol down button
translate([-5, 1, 0.3])
rotate([0, -90, 0])
linear_extrude(height=0.1)
polygon(polyRound([
  [0, 1.2, 1],
  [0.4, 1.2, 1],
  [0.4, 0, 1],
  [0, 0, 1],
],10));

// vol up button
translate([-5, 2.3, 0.3])
rotate([0, -90, 0])
linear_extrude(height=0.1)
polygon(polyRound([
  [0, 1.2, 1],
  [0.4, 1.2, 1],
  [0.4, 0, 1],
  [0, 0, 1],
],10));