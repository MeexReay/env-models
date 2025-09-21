include <Round-Anything/polyround.scad>

// case
color([0.65, 0.65, 0.65, 1])
difference(){
  linear_extrude(height=1)
  polygon(polyRound([
    [-5, 10, 1],
    [5,  10, 1],
    [5,  -10, 1],
    [-5,  -10, 1],
  ],10));
  
  translate([0, 0, 0.1])
  linear_extrude(height=1)
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

// screen
color([0, 0, 0, 0.5])
translate([0, 0, 0.8])
linear_extrude(height=0.2)
polygon(polyRound([
[-4.75, 9.75, 0.8],
[4.75, 9.75, 0.8],
[4.75, -9.75, 0.8],
[-4.75, -9.75, 0.8],
],10));

$fn=20;

// camera block
color([0.65, 0.65, 0.65, 1])
difference(){
  translate([0, 0, -0.2])
  linear_extrude(height=0.2)
  polygon(polyRound([
    [4, 9.5, 1],
    [0, 9.5, 1],
    [0, 7.75, 1],
    [4, 7.75, 1],
  ],10));
  
  // cut back camera
  translate([3.8-1.55/2, 7.85+1.55/2, -0.3])
  cylinder(0.4, d=1.55);
  
  // cur wide camera
  translate([3.8-1.55/2 - 1.75, 7.85+1.55/2, -0.3])
  cylinder(0.4, d=1.55);
  
  // cut flashlight
  translate([3.8-1.55/2 - 2.76, 7.85+1.55/2, -0.3])
  cylinder(0.4, d=0.25);
};

// back camera
color([0.1, 0.1, 0.1, 1])
translate([3.8-1.55/2, 7.85+1.55/2, -0.3])
cylinder(0.4, d=1.55);

// wide camera
color([0.1, 0.1, 0.1, 1])
translate([3.8-1.55/2 - 1.75, 7.85+1.55/2, -0.3])
cylinder(0.4, d=1.55);

// flashlight
color([1, 1, 1, 1])
translate([3.8-1.55/2 - 2.76, 7.85+1.55/2, -0.2])
cylinder(0.2, d=0.25);

// pwr button
color([0.7, 0.7, 0.7, 1])
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
color([0.7, 0.7, 0.7, 1])
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
color([0.7, 0.7, 0.7, 1])
translate([-5, 2.3, 0.3])
rotate([0, -90, 0])
linear_extrude(height=0.1)
polygon(polyRound([
  [0, 1.2, 1],
  [0.4, 1.2, 1],
  [0.4, 0, 1],
  [0, 0, 1],
],10));