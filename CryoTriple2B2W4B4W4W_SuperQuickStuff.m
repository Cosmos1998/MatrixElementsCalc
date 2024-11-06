sm = {{(g*(m1 + m2 + m3))/(c1*l1), 0, 0, 0, 
      -((dtop*g*(m1 + m2 + m3))/(c1*l1)), 0}, 
     {0, (g*(m1 + m2 + m3))/(c1*l1) - (g*(m1 + m2 + m3)*(n0 - n1)^2)/
        (c1*l1^3) + (2*kw1*(n0 - n1)^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 
      (dtop*g*(m1 + m2 + m3))/(c1*l1) - 
       (g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/(c1*l1^3) + 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/
        (c1^2*l1^2 + (n0 - n1)^2)}, 
     {0, 0, -(((-1 + c1^2)*g*(m1 + m2 + m3))/(c1*l1)) + 
       (2*c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0}, 
     {0, 0, 0, (g*(m1 + m2 + m3)*n0*n1)/(c1*l1), 0, 0}, 
     {-((dtop*g*(m1 + m2 + m3))/(c1*l1)), 0, 0, 0, 
      (dtop*g*(dtop + c1*l1)*(m1 + m2 + m3))/(c1*l1), 0}, 
     {0, (dtop*g*(m1 + m2 + m3))/(c1*l1) - 
       (g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/(c1*l1^3) + 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 
      -((g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))^2)/(c1*l1^3)) + 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))^2)/(c1^2*l1^2 + (n0 - n1)^2) + 
       (g*(m1 + m2 + m3)*(dtop^2 + c1*dtop*l1 + n0*n1))/(c1*l1)}}
 
g /: g::usage = "g is local gravity."
 
l1 /: l1::usage = "l1 is part of the specification of the model and \
represents the wire length from the blades on the structure to the top mass. \
It is interpreted as either a stretched length or an unstretched length \
depending on the value of the switch constant unstretched."
 
m1 /: m1::usage = "m1 is mass of top mass."
 
m2 /: m2::usage = "m2 is mass of middle mass."
 
m3 /: m3::usage = "m3 is mass of optic."
 
dtop /: dtop::usage = 
     "dtop is the the height of the wire attachment points below the top \
blades."
 
n0 /: n0::usage = "n0 is the y-direction separation of the wire attachment \
points on the upper blade springs for the wires leading down to the top \
mass."
 
n1 /: n1::usage = "n1 is the y-direction separation of the wire attachment \
points on the top mass for the wires leading down from the upper blade \
springs (on the structure)."
 
kw1 /: kw1::usage = "kw1 is net longitudinal elasticity of wires from blades \
on structure to top mass."
 
qm = {{kbuz - ((-1 + c1^2)*g*(m1 + m2 + m3))/(2*c1*l1) + 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 0, 0}, 
     {0, kbuz - ((-1 + c1^2)*g*(m1 + m2 + m3))/(2*c1*l1) + 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 0}, 
     {0, 0, kblz - ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0}, 
     {0, 0, 0, kblz - ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 0, 0}, 
     {0, 0, 0, 0, kblz - ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 0}, 
     {0, 0, 0, 0, 0, kblz - ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2)}}
 
kbuz /: kbuz::usage = 
     "kbuz is the net vertical elasticity of the upper blades (on \
structure)."
 
kblz /: kblz::usage = 
     "kblz is the net vertical elasticity of the lower blades (on top mass)."
 
l2 /: l2::usage = "l2 is part of the specification of the model and \
represents the wire length from the blades on the top mass to middle mass. It \
is interpreted as either a stretched length or an unstretched length \
depending on the value of the switch constant unstretched."
 
kw2 /: kw2::usage = "kw2 is net longitudinal elasticity of wires from blades \
on top mass to optic."
 
n2 /: n2::usage = "n2 is the y-direction separation of the wire attachment \
points on the lower blade springs for the wires leading down to mass I."
 
n3 /: n3::usage = "n3 is the y-direction separation of the wire attachment \
points on mass I for the wires leading down from the lower blade springs."
 
cqsm = {{0, ((g*(m1 + m2 + m3) - (2*c1*kw1*l1^3)/(c1^2*l1^2 + (n0 - n1)^2))*
        (-n0 + n1))/(2*l1^2), -1/2*((-1 + c1^2)*g*(m1 + m2 + m3))/(c1*l1) + 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 
      (-2*g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1)) + 
        (4*c1*kw1*l1^3*(c1*l1*n0 + dtop*(n0 - n1)))/(c1^2*l1^2 + 
          (n0 - n1)^2) + (2*g*l1*(m1 + m2 + m3)*n1)/c1)/(4*l1^2)}, 
     {0, ((g*(m1 + m2 + m3) - (2*c1*kw1*l1^3)/(c1^2*l1^2 + (n0 - n1)^2))*
        (n0 - n1))/(2*l1^2), -1/2*((-1 + c1^2)*g*(m1 + m2 + m3))/(c1*l1) + 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 
      (2*g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1)) - 
        (4*c1*kw1*l1^3*(c1*l1*n0 + dtop*(n0 - n1)))/(c1^2*l1^2 + 
          (n0 - n1)^2) - (2*g*l1*(m1 + m2 + m3)*n1)/c1)/(4*l1^2)}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}}
 
km = {{m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1z, I1yz, I1zx, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1yz, I1y, I1xy, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1zx, I1xy, I1x, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, m2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, m2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, m2, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2z, I2yz, I2zx, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2yz, I2y, I2xy, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2zx, I2xy, I2x, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3z, I3yz, I3zx}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3yz, I3y, I3xy}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3zx, I3xy, I3x}}
 
I1z /: I1z::usage = "I1z is z-axis MOI of top mass."
 
I1y /: I1y::usage = "I1y is y-axis MOI of top mass."
 
I1x /: I1x::usage = "I1x is x-axis MOI of top mass."
 
I2z /: I2z::usage = "I2z is z-axis MOI of middle mass."
 
I2y /: I2y::usage = "I2y is y-axis MOI of middle mass."
 
I2x /: I2x::usage = "I2x is x-axis MOI of middle mass."
 
I3z /: I3z::usage = "I3z is z-axis MOI of optic."
 
I3y /: I3y::usage = "I3y is y-axis MOI of optic."
 
I3x /: I3x::usage = "I3x is x-axis MOI of optic."
 
xm = {{(g*(m2 + m3))/(c2*l2) + (g*(m1 + m2 + m3))/(c1*l1), 0, 0, 0, 
      -((d1*g*(m2 + m3))/(c2*l2)) + (d0*g*(m1 + m2 + m3))/(c1*l1), 0, 
      -((g*(m2 + m3))/(c2*l2)), 0, 0, 0, -((d2*g*(m2 + m3))/(c2*l2)), 0, 0, 
      0, 0, 0, 0, 0}, {0, (g*(m2 + m3))/(c2*l2) + (g*(m1 + m2 + m3))/
        (c1*l1) - (g*(m1 + m2 + m3)*(n0 - n1)^2)/(c1*l1^3) + 
       (2*kw1*(n0 - n1)^2)/(c1^2*l1^2 + (n0 - n1)^2) - 
       (g*(m2 + m3)*(n2 - n3)^2)/(c2*l2^3) + (4*kw2*(n2 - n3)^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, (d1*g*(m2 + m3))/(c2*l2) - 
       (d0*g*(m1 + m2 + m3))/(c1*l1) - (g*(m1 + m2 + m3)*(n0 - n1)*
         (c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3) + 
       (2*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1^2*l1^2 + (n0 - n1)^2) - (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*
         (n2 - n3))/(c2*l2^3) + (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, -((g*(m2 + m3))/(c2*l2)) + 
       (g*(m2 + m3)*(n2 - n3)^2)/(c2*l2^3) - (4*kw2*(n2 - n3)^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, (d2*g*(m2 + m3))/(c2*l2) + 
       (g*(m2 + m3)*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/(c2*l2^3) - 
       (4*kw2*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 0, 0}, 
     {0, 0, -(((-1 + c2^2)*g*(m2 + m3))/(c2*l2)) + (g*(m1 + m2 + m3))/
        (c1*l1) - (c1*g*(m1 + m2 + m3))/l1 + (2*c1^2*kw1*l1^2)/
        (c1^2*l1^2 + (n0 - n1)^2) + (4*c2^2*kw2*l2^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 0, 
      ((-1 + c2^2)*g*(m2 + m3))/(c2*l2) - (4*c2^2*kw2*l2^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, (g*(m1 + m2 + m3)*n0*n1)/(c1*l1) - 
       (g*(m2 + m3)*(n2 - n3)^2*si^2)/(c2*l2^3) + (4*kw2*(n2 - n3)^2*si^2)/
        (c2^2*l2^2 + (n2 - n3)^2) + (g*(m2 + m3)*(n2*n3 + si^2))/(c2*l2), 0, 
      0, 0, 0, 0, (g*(m2 + m3)*(n2 - n3)^2*si^2)/(c2*l2^3) - 
       (4*kw2*(n2 - n3)^2*si^2)/(c2^2*l2^2 + (n2 - n3)^2) - 
       (g*(m2 + m3)*(n2*n3 + si^2))/(c2*l2), 0, 0, 0, 0, 0, 0, 0, 0}, 
     {-((d1*g*(m2 + m3))/(c2*l2)) + (d0*g*(m1 + m2 + m3))/(c1*l1), 0, 0, 0, 
      (d0*g*(d0 + c1*l1)*(m1 + m2 + m3))/(c1*l1) - (c2*g*(m2 + m3)*si^2)/l2 + 
       (4*c2^2*kw2*l2^2*si^2)/(c2^2*l2^2 + (n2 - n3)^2) + 
       (g*(m2 + m3)*(d1^2 + c2*d1*l2 + si^2))/(c2*l2), 0, 
      (d1*g*(m2 + m3))/(c2*l2), 0, 0, 0, 
      (d1*d2*g*(m2 + m3) + ((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
           (c2^2*l2^2 + (n2 - n3)^2))*si^2)/(c2*l2), 0, 0, 0, 0, 0, 0, 0}, 
     {0, (d1*g*(m2 + m3))/(c2*l2) - (d0*g*(m1 + m2 + m3))/(c1*l1) - 
       (g*(m1 + m2 + m3)*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3) + 
       (2*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1^2*l1^2 + (n0 - n1)^2) - (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*
         (n2 - n3))/(c2*l2^3) + (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 
      (g*(m1 + m2 + m3)*(d0^2 + c1*d0*l1 + n0*n1))/(c1*l1) - 
       (g*(m1 + m2 + m3)*(c1*l1*n1 + d0*(-n0 + n1))^2)/(c1*l1^3) + 
       (2*kw1*(c1*l1*n1 + d0*(-n0 + n1))^2)/(c1^2*l1^2 + (n0 - n1)^2) - 
       (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))^2)/(c2*l2^3) + 
       (4*kw2*(c2*l2*n2 + d1*(n2 - n3))^2)/(c2^2*l2^2 + (n2 - n3)^2) + 
       (g*(m2 + m3)*(d1^2 + c2*d1*l2 + n2*n3))/(c2*l2), 0, 
      -((d1*g*(m2 + m3))/(c2*l2)) + (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*
         (n2 - n3))/(c2*l2^3) - (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 
      (g*(m2 + m3)*(d1*d2 - n2*n3))/(c2*l2) + 
       (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2*l2^3) - (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*
         (c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 
      0, 0}, {-((g*(m2 + m3))/(c2*l2)), 0, 0, 0, (d1*g*(m2 + m3))/(c2*l2), 0, 
      (g*m3)/(c3*l3) + (g*(m2 + m3))/(c2*l2), 0, 0, 0, 
      -((d3*g*m3)/(c3*l3)) + (d2*g*(m2 + m3))/(c2*l2), 0, -((g*m3)/(c3*l3)), 
      0, 0, 0, -((d4*g*m3)/(c3*l3)), 0}, {0, -((g*(m2 + m3))/(c2*l2)) + 
       (g*(m2 + m3)*(n2 - n3)^2)/(c2*l2^3) - (4*kw2*(n2 - n3)^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, -((d1*g*(m2 + m3))/(c2*l2)) + 
       (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/(c2*l2^3) - 
       (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/(c2^2*l2^2 + (n2 - n3)^2), 
      0, (g*m3)/(c3*l3) + (g*(m2 + m3))/(c2*l2) - (g*(m2 + m3)*(n2 - n3)^2)/
        (c2*l2^3) + (4*kw2*(n2 - n3)^2)/(c2^2*l2^2 + (n2 - n3)^2) - 
       (g*m3*(n4 - n5)^2)/(c3*l3^3) + (4*kw3*(n4 - n5)^2)/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0, (d3*g*m3)/(c3*l3) - 
       (d2*g*(m2 + m3))/(c2*l2) - (g*(m2 + m3)*(n2 - n3)*
         (c2*l2*n3 + d2*(-n2 + n3)))/(c2*l2^3) + 
       (4*kw2*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2^2*l2^2 + (n2 - n3)^2) - (g*m3*(c3*l3*n4 + d3*(n4 - n5))*
         (n4 - n5))/(c3*l3^3) + (4*kw3*(c3*l3*n4 + d3*(n4 - n5))*(n4 - n5))/
        (c3^2*l3^2 + (n4 - n5)^2), 0, (c3^2*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 
        g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) - 4*c3*kw3*l3^3*(n4 - n5)^2)/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (d4*g*m3*(l3^2*(n4 - n5)^2 - (n4 - n5)^4) + c3^3*g*l3^3*m3*(n4 - n5)*
         n5 + c3*l3*(n4 - n5)^2*(4*d4*kw3*l3^2 + g*m3*(n4 - n5)*n5) + 
        c3^2*(d4*g*l3^2*m3*(l3^2 - (n4 - n5)^2) + 4*kw3*l3^4*n5*(-n4 + n5)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2))}, 
     {0, 0, ((-1 + c2^2)*g*(m2 + m3))/(c2*l2) - (4*c2^2*kw2*l2^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 0, (g*(m2 + m3))/(c2*l2) - 
       (c2*g*(m2 + m3))/l2 + (g*(m3 - c3^2*m3))/(c3*l3) + 
       (4*c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2) + (4*c3^2*kw3*l3^2)/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0, 0, 0, 
      ((-1 + c3^2)*g*m3)/(c3*l3) - (4*c3^2*kw3*l3^2)/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0}, 
     {0, 0, 0, (g*(m2 + m3)*(n2 - n3)^2*si^2)/(c2*l2^3) - 
       (4*kw2*(n2 - n3)^2*si^2)/(c2^2*l2^2 + (n2 - n3)^2) - 
       (g*(m2 + m3)*(n2*n3 + si^2))/(c2*l2), 0, 0, 0, 0, 0, 
      -((g*(m2 + m3)*(n2 - n3)^2*si^2)/(c2*l2^3)) + (4*kw2*(n2 - n3)^2*si^2)/
        (c2^2*l2^2 + (n2 - n3)^2) + (g*(m2 + m3)*(n2*n3 + si^2))/(c2*l2) - 
       (g*m3*(n4 - n5)^2*sl^2)/(c3*l3^3) + (4*kw3*(n4 - n5)^2*sl^2)/
        (c3^2*l3^2 + (n4 - n5)^2) + (g*m3*(n4*n5 + sl^2))/(c3*l3), 0, 0, 0, 
      0, 0, (-4*c3*kw3*l3^3*(n4 - n5)^2*sl^2 + c3^2*g*l3^2*m3*
         ((n4 - n5)^2*sl^2 - l3^2*(n4*n5 + sl^2)) + g*m3*(n4 - n5)^2*
         ((n4 - n5)^2*sl^2 - l3^2*(n4*n5 + sl^2)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0}, 
     {-((d2*g*(m2 + m3))/(c2*l2)), 0, 0, 0, 
      (d1*d2*g*(m2 + m3) + ((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
           (c2^2*l2^2 + (n2 - n3)^2))*si^2)/(c2*l2), 0, 
      -((d3*g*m3)/(c3*l3)) + (d2*g*(m2 + m3))/(c2*l2), 0, 0, 0, 
      -((c2*g*(m2 + m3)*si^2)/l2) + (4*c2^2*kw2*l2^2*si^2)/
        (c2^2*l2^2 + (n2 - n3)^2) + (g*(m2 + m3)*(d2^2 + c2*d2*l2 + si^2))/
        (c2*l2) - (c3*g*m3*sl^2)/l3 + (4*c3^2*kw3*l3^2*sl^2)/
        (c3^2*l3^2 + (n4 - n5)^2) + (g*m3*(d3^2 + c3*d3*l3 + sl^2))/(c3*l3), 
      0, (d3*g*m3)/(c3*l3), 0, 0, 0, 
      (d3*d4*g*m3 + ((-1 + c3^2)*g*m3 - (4*c3^3*kw3*l3^3)/
           (c3^2*l3^2 + (n4 - n5)^2))*sl^2)/(c3*l3), 0}, 
     {0, (d2*g*(m2 + m3))/(c2*l2) + (g*(m2 + m3)*(n2 - n3)*
         (c2*l2*n3 + d2*(-n2 + n3)))/(c2*l2^3) - 
       (4*kw2*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 
      (g*(m2 + m3)*(d1*d2 - n2*n3))/(c2*l2) + 
       (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2*l2^3) - (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*
         (c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2), 0, 
      (d3*g*m3)/(c3*l3) - (d2*g*(m2 + m3))/(c2*l2) - 
       (g*(m2 + m3)*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/(c2*l2^3) + 
       (4*kw2*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2^2*l2^2 + (n2 - n3)^2) - (g*m3*(c3*l3*n4 + d3*(n4 - n5))*
         (n4 - n5))/(c3*l3^3) + (4*kw3*(c3*l3*n4 + d3*(n4 - n5))*(n4 - n5))/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0, 
      (g*(m2 + m3)*(d2^2 + c2*d2*l2 + n2*n3))/(c2*l2) - 
       (g*(m2 + m3)*(c2*l2*n3 + d2*(-n2 + n3))^2)/(c2*l2^3) + 
       (4*kw2*(c2*l2*n3 + d2*(-n2 + n3))^2)/(c2^2*l2^2 + (n2 - n3)^2) - 
       (g*m3*(c3*l3*n4 + d3*(n4 - n5))^2)/(c3*l3^3) + 
       (4*kw3*(c3*l3*n4 + d3*(n4 - n5))^2)/(c3^2*l3^2 + (n4 - n5)^2) + 
       (g*m3*(d3^2 + c3*d3*l3 + n4*n5))/(c3*l3), 0, 
      (d3*g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) + c3^3*g*l3^3*m3*n4*
         (n4 - n5) + c3*l3*(-4*d3*kw3*l3^2 + g*m3*n4*(n4 - n5))*(n4 - n5)^2 + 
        c3^2*(d3*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 4*kw3*l3^4*n4*(-n4 + n5)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (g*m3*(d3*d4 - n4*n5))/(c3*l3) + (g*m3*(c3*l3*n4 + d3*(n4 - n5))*
         (c3*l3*n5 + d4*(-n4 + n5)))/(c3*l3^3) - 
       (4*kw3*(c3*l3*n4 + d3*(n4 - n5))*(c3*l3*n5 + d4*(-n4 + n5)))/
        (c3^2*l3^2 + (n4 - n5)^2)}, {0, 0, 0, 0, 0, 0, -((g*m3)/(c3*l3)), 0, 
      0, 0, (d3*g*m3)/(c3*l3), 0, (g*m3)/(c3*l3), 0, 0, 0, (d4*g*m3)/(c3*l3), 
      0}, {0, 0, 0, 0, 0, 0, 0, (c3^2*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 
        g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) - 4*c3*kw3*l3^3*(n4 - n5)^2)/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (d3*g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) + c3^3*g*l3^3*m3*n4*
         (n4 - n5) + c3*l3*(-4*d3*kw3*l3^2 + g*m3*n4*(n4 - n5))*(n4 - n5)^2 + 
        c3^2*(d3*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 4*kw3*l3^4*n4*(-n4 + n5)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 
      (c3^2*g*l3^2*m3*(l3^2 - (n4 - n5)^2) + g*m3*(l3^2*(n4 - n5)^2 - 
          (n4 - n5)^4) + 4*c3*kw3*l3^3*(n4 - n5)^2)/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (d4*g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) + c3^3*g*l3^3*m3*n5*
         (-n4 + n5) + c3^2*(d4*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 
          4*kw3*l3^4*(n4 - n5)*n5) - c3*l3*(n4 - n5)^2*(4*d4*kw3*l3^2 + 
          g*m3*(n4 - n5)*n5))/(c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2))}, 
     {0, 0, 0, 0, 0, 0, 0, 0, ((-1 + c3^2)*g*m3)/(c3*l3) - 
       (4*c3^2*kw3*l3^2)/(c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0, 0, 0, 
      (g*(m3 - c3^2*m3))/(c3*l3) + (4*c3^2*kw3*l3^2)/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (-4*c3*kw3*l3^3*(n4 - n5)^2*sl^2 + c3^2*g*l3^2*m3*((n4 - n5)^2*sl^2 - 
          l3^2*(n4*n5 + sl^2)) + g*m3*(n4 - n5)^2*((n4 - n5)^2*sl^2 - 
          l3^2*(n4*n5 + sl^2)))/(c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      0, 0, (4*c3*kw3*l3^3*(n4 - n5)^2*sl^2 + c3^2*g*l3^2*m3*
         (-((n4 - n5)^2*sl^2) + l3^2*(n4*n5 + sl^2)) + 
        g*m3*(-((n4 - n5)^4*sl^2) + l3^2*(n4 - n5)^2*(n4*n5 + sl^2)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0}, 
     {0, 0, 0, 0, 0, 0, -((d4*g*m3)/(c3*l3)), 0, 0, 0, 
      (d3*d4*g*m3 + ((-1 + c3^2)*g*m3 - (4*c3^3*kw3*l3^3)/
           (c3^2*l3^2 + (n4 - n5)^2))*sl^2)/(c3*l3), 0, (d4*g*m3)/(c3*l3), 0, 
      0, 0, (d4^2*g*m3 + c3*d4*g*l3*m3 + (g*(m3 - c3^2*m3) + 
          (4*c3^3*kw3*l3^3)/(c3^2*l3^2 + (n4 - n5)^2))*sl^2)/(c3*l3), 0}, 
     {0, 0, 0, 0, 0, 0, 0, (d4*g*m3*(l3^2*(n4 - n5)^2 - (n4 - n5)^4) + 
        c3^3*g*l3^3*m3*(n4 - n5)*n5 + c3*l3*(n4 - n5)^2*
         (4*d4*kw3*l3^2 + g*m3*(n4 - n5)*n5) + 
        c3^2*(d4*g*l3^2*m3*(l3^2 - (n4 - n5)^2) + 4*kw3*l3^4*n5*(-n4 + n5)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (g*m3*(d3*d4 - n4*n5))/(c3*l3) + (g*m3*(c3*l3*n4 + d3*(n4 - n5))*
         (c3*l3*n5 + d4*(-n4 + n5)))/(c3*l3^3) - 
       (4*kw3*(c3*l3*n4 + d3*(n4 - n5))*(c3*l3*n5 + d4*(-n4 + n5)))/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 
      (d4*g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) + c3^3*g*l3^3*m3*n5*
         (-n4 + n5) + c3^2*(d4*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 
          4*kw3*l3^4*(n4 - n5)*n5) - c3*l3*(n4 - n5)^2*(4*d4*kw3*l3^2 + 
          g*m3*(n4 - n5)*n5))/(c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      d4*g*m3 + (d4^2*g*m3)/(c3*l3) + (g*m3*(n4 - n5)*n5)/(2*c3*l3) + 
       (g*m3*n5^2)/(c3*l3) - (g*m3*n5*(-n4 + n5))/(2*c3*l3) - 
       (g*m3*(c3*l3*n5 + d4*(-n4 + n5))^2)/(c3*l3^3) + 
       (4*kw3*(c3*l3*n5 + d4*(-n4 + n5))^2)/(c3^2*l3^2 + (n4 - n5)^2)}}
 
d1 /: d1::usage = "d1 is the the height of the wire attachment points below \
the COM of mass U for the wires leading down to mass I."
 
d0 /: d0::usage = "d0 is the the height of the wire attachment points above \
the COM of mass U for the wires leading down from the blades on the \
structure."
 
d2 /: d2::usage = "d2 is the height of the wire attachment points above the \
COM of mass I for the wires leading down from the mass U."
 
si /: si::usage = 
     "si is x-direction separation of wires from second top mass to optic."
 
l3 /: l3::usage = "l3 is part of the specification of the model and \
represents the wire (ribbon) length from middle mass to optic. It is \
interpreted as either a stretched length or an unstretched length depending \
on the value of the switch constant unstretched."
 
d3 /: d3::usage = "d3 is the height of the wire attachment points above the \
COM of mass I for the wires leading down from the mass U."
 
cqxm = {{0, ((-(g*(m1 + m2 + m3)) + (2*c1*kw1*l1^3)/(c1^2*l1^2 + 
           (n0 - n1)^2))*(-n0 + n1))/(2*l1^2), 
      ((-1 + c1^2)*g*(m1 + m2 + m3))/(2*c1*l1) - (c1^2*kw1*l1^2)/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, ((-2*g*l1*(m1 + m2 + m3)*n1)/c1 + 
        2*g*(m1 + m2 + m3)*(c1*l1*n1 + d0*(-n0 + n1)) - 
        (4*c1*kw1*l1^3*(c1*l1*n1 + d0*(-n0 + n1)))/(c1^2*l1^2 + (n0 - n1)^2))/
       (4*l1^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((-(g*(m1 + m2 + m3)) + (2*c1*kw1*l1^3)/(c1^2*l1^2 + (n0 - n1)^2))*
        (n0 - n1))/(2*l1^2), ((-1 + c1^2)*g*(m1 + m2 + m3))/(2*c1*l1) - 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 
      ((2*g*l1*(m1 + m2 + m3)*n1)/c1 + 2*g*(m1 + m2 + m3)*
         (d0*(n0 - n1) - c1*l1*n1) + (4*c1*kw1*l1^3*(c1*l1*n1 + 
           d0*(-n0 + n1)))/(c1^2*l1^2 + (n0 - n1)^2))/(4*l1^2), 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3))/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3))/(c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(-n2 + n3)*
        si)/(4*l2^2), (((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
          (c2^2*l2^2 + (n2 - n3)^2))*si)/(4*c2*l2), 
      (-2*g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3)) + 
        (8*c2*kw2*l2^3*(c2*l2*n2 + d1*(n2 - n3)))/(c2^2*l2^2 + (n2 - n3)^2) + 
        (2*g*l2*(m2 + m3)*n3)/c2)/(8*l2^2), 0, 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3))/(4*l2^2), ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) - 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3)*si)/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3)*si)/(c2*l2) + 
       (c2^2*kw2*l2^2*si)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-2*g*l2*(m2 + m3)*n3)/c2 + 2*g*(m2 + m3)*(c2*l2*n3 + d2*(-n2 + n3)) - 
        (8*c2*kw2*l2^3*(c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2))/
       (8*l2^2), 0, 0, 0, 0, 0, 0}, 
     {0, ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3))/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3))/(c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3)*si)/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3)*si)/(c2*l2) + 
       (c2^2*kw2*l2^2*si)/(c2^2*l2^2 + (n2 - n3)^2), 
      (-2*g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3)) + 
        (8*c2*kw2*l2^3*(c2*l2*n2 + d1*(n2 - n3)))/(c2^2*l2^2 + (n2 - n3)^2) + 
        (2*g*l2*(m2 + m3)*n3)/c2)/(8*l2^2), 0, 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3))/(4*l2^2), ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) - 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(-n2 + n3)*
        si)/(4*l2^2), (((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
          (c2^2*l2^2 + (n2 - n3)^2))*si)/(4*c2*l2), 
      ((-2*g*l2*(m2 + m3)*n3)/c2 + 2*g*(m2 + m3)*(c2*l2*n3 + d2*(-n2 + n3)) - 
        (8*c2*kw2*l2^3*(c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2))/
       (8*l2^2), 0, 0, 0, 0, 0, 0}, 
     {0, ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (n2 - n3))/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3))/(c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(n2 - n3)*
        si)/(4*l2^2), (((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
          (c2^2*l2^2 + (n2 - n3)^2))*si)/(4*c2*l2), 
      (2*g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3)) - 
        (8*c2*kw2*l2^3*(c2*l2*n2 + d1*(n2 - n3)))/(c2^2*l2^2 + (n2 - n3)^2) - 
        (2*g*l2*(m2 + m3)*n3)/c2)/(8*l2^2), 0, 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (n2 - n3))/(4*l2^2), ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) - 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(n2 - n3)*
        si)/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3)*si)/(c2*l2) + 
       (c2^2*kw2*l2^2*si)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((2*g*l2*(m2 + m3)*n3)/c2 + 2*g*(m2 + m3)*(d2*(n2 - n3) - c2*l2*n3) + 
        (8*c2*kw2*l2^3*(c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2))/
       (8*l2^2), 0, 0, 0, 0, 0, 0}, 
     {0, ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (n2 - n3))/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3))/(c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(n2 - n3)*
        si)/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3)*si)/(c2*l2) + 
       (c2^2*kw2*l2^2*si)/(c2^2*l2^2 + (n2 - n3)^2), 
      (2*g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3)) - 
        (8*c2*kw2*l2^3*(c2*l2*n2 + d1*(n2 - n3)))/(c2^2*l2^2 + (n2 - n3)^2) - 
        (2*g*l2*(m2 + m3)*n3)/c2)/(8*l2^2), 0, 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (n2 - n3))/(4*l2^2), ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) - 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(n2 - n3)*
        si)/(4*l2^2), (((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
          (c2^2*l2^2 + (n2 - n3)^2))*si)/(4*c2*l2), 
      ((2*g*l2*(m2 + m3)*n3)/c2 + 2*g*(m2 + m3)*(d2*(n2 - n3) - c2*l2*n3) + 
        (8*c2*kw2*l2^3*(c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2))/
       (8*l2^2), 0, 0, 0, 0, 0, 0}}
 
cxsm = {{-((g*(m1 + m2 + m3))/(c1*l1)), 0, 0, 0, (dtop*g*(m1 + m2 + m3))/
       (c1*l1), 0}, {0, -((g*(m1 + m2 + m3))/(c1*l1)) + 
       (g*(m1 + m2 + m3)*(n0 - n1)^2)/(c1*l1^3) - (2*kw1*(n0 - n1)^2)/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 
      -((dtop*g*(m1 + m2 + m3))/(c1*l1)) + 
       (g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/(c1*l1^3) - 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/
        (c1^2*l1^2 + (n0 - n1)^2)}, 
     {0, 0, ((-1 + c1^2)*g*(m1 + m2 + m3))/(c1*l1) - (2*c1^2*kw1*l1^2)/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0}, 
     {0, 0, 0, -((g*(m1 + m2 + m3)*n0*n1)/(c1*l1)), 0, 0}, 
     {-((d0*g*(m1 + m2 + m3))/(c1*l1)), 0, 0, 0, (d0*dtop*g*(m1 + m2 + m3))/
       (c1*l1), 0}, {0, (d0*g*(m1 + m2 + m3))/(c1*l1) + 
       (g*(m1 + m2 + m3)*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3) - 
       (2*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 
      (g*(m1 + m2 + m3)*(d0*dtop - n0*n1))/(c1*l1) + 
       (g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))*
         (c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3) - 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1^2*l1^2 + (n0 - n1)^2)}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}}
 
allvars = {x1, y1, z1, yaw1, pitch1, roll1, x2, y2, z2, yaw2, pitch2, roll2, 
     x3, y3, z3, yaw3, pitch3, roll3}
 
allvars /: allvars::usage = "allvars is part of the specification of the \
model. It should be a list of the position and angle variables for the \
system. It shouldn't include velocities, or the coordinates of the support \
structure."
 
allfloats = {qul, qur, qlf, qlb, qrf, qrb}
 
allfloats /: allfloats::usage = "allfloats is part of the specification of \
the model. It should be a list of the positions and angles of connections \
where one elastic element is connected directly to another with no mass \
element between."
 
allparams = {x00, y00, z00, yaw00, pitch00, roll00}
 
allparams /: allparams::usage = "allparams is part of the specification of \
the model. It should be a list of the positions and angles describing the \
state of the support structure, plus any other coordinates that are constant \
for the purposes of the normal mode calculation but through which one might \
want to inject a displacement input."
 
velocities = {vx1, vy1, vz1, vyaw1, vpitch1, vroll1, vx2, vy2, vz2, vyaw2, 
     vpitch2, vroll2, vx3, vy3, vz3, vyaw3, vpitch3, vroll3}
 
velocities /: velocities::usage = "velocities is a list of symbols (e.g., \
vx1) for velocities, corresponding to the variables in allvars (cf., x1), \
initialized by makevelocities[]. It was formerly used by tovelocities but is \
now deprecated."
 
stdcoeff = {g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, 
     I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, 
     d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, 
     kw2, kw3, Y1, Y2, Y3, M11, M21, M31}
 
Y1 /: Y1::usage = 
     "Y1 is Young's modulus of wires from blades on structure to top mass."
 
Y2 /: Y2::usage = 
     "Y2 is Young's modulus of wires from blades on top mass to middle mass."
 
Y3 /: Y3::usage = 
     "Y3 is Young's modulus of wires from blades on middle mass to optic."
 
M11 /: M11::usage = "M11 is the moment of area of wires from blades on \
structure to top mass in direction \"1\"."
 
M21 /: M21::usage = "M21 is the moment of area of wires from blades on top \
mass to optic in direction \"1\""
 
flexsubs = {flex1 -> c1^(3/2)*Sqrt[(M11*nw1*Y1)/(g*(m1 + m2 + m3))], 
     flex2 -> c2^(3/2)*Sqrt[(M21*nw2*Y2)/(g*(m2 + m3))], 
     flex3 -> c3^(3/2)*Sqrt[(M31*nw3*Y3)/(g*m3)], m13 -> m1 + m2 + m3, 
     m23 -> m2 + m3, tl1 -> d0 + dtop + c1*l1, tl2 -> d1 + d2 + c2*l2, 
     tl3 -> d3 + d4 + c3*l3, c1 -> Sqrt[l1^2 - (-n0 + n1)^2]/l1, 
     c2 -> Sqrt[l2^2 - (-n2 + n3)^2]/l2, c3 -> Sqrt[l3^2 - (-n4 + n5)^2]/l3, 
     si1 -> (-n0 + n1)/l1, si2 -> (-n2 + n3)/l2, si3 -> (-n4 + n5)/l3, 
     nw1 -> 2, nw2 -> 4, nw3 -> 4}
 
nw1 /: nw1::usage = 
     "nw1 is number of wires from blades on structure to top mass (total)."
 
nw2 /: nw2::usage = 
     "nw2 is number of wires from blades on top mass to middle mass (total)."
 
nw3 /: nw3::usage = 
     "nw3 is number of wires from blades on middle mass to optic (total)."
 
tl1 /: tl1::usage = "tl1 is the vertical distance spanned by the upper wires."
 
tl2 /: tl2::usage = "tl2 is the vertical distance spanned by the lower wires."
sm = {{(g*(m1 + m2 + m3))/(c1*l1), 0, 0, 0, 
      -((dtop*g*(m1 + m2 + m3))/(c1*l1)), 0}, 
     {0, (g*(m1 + m2 + m3))/(c1*l1) - (g*(m1 + m2 + m3)*(n0 - n1)^2)/
        (c1*l1^3) + (2*kw1*(n0 - n1)^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 
      (dtop*g*(m1 + m2 + m3))/(c1*l1) - 
       (g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/(c1*l1^3) + 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/
        (c1^2*l1^2 + (n0 - n1)^2)}, 
     {0, 0, -(((-1 + c1^2)*g*(m1 + m2 + m3))/(c1*l1)) + 
       (2*c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0}, 
     {0, 0, 0, (g*(m1 + m2 + m3)*n0*n1)/(c1*l1), 0, 0}, 
     {-((dtop*g*(m1 + m2 + m3))/(c1*l1)), 0, 0, 0, 
      (dtop*g*(dtop + c1*l1)*(m1 + m2 + m3))/(c1*l1), 0}, 
     {0, (dtop*g*(m1 + m2 + m3))/(c1*l1) - 
       (g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/(c1*l1^3) + 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 
      -((g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))^2)/(c1*l1^3)) + 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))^2)/(c1^2*l1^2 + (n0 - n1)^2) + 
       (g*(m1 + m2 + m3)*(dtop^2 + c1*dtop*l1 + n0*n1))/(c1*l1)}}
 
g /: g::usage = "g is local gravity."
 
l1 /: l1::usage = "l1 is part of the specification of the model and \
represents the wire length from the blades on the structure to the top mass. \
It is interpreted as either a stretched length or an unstretched length \
depending on the value of the switch constant unstretched."
 
m1 /: m1::usage = "m1 is mass of top mass."
 
m2 /: m2::usage = "m2 is mass of middle mass."
 
m3 /: m3::usage = "m3 is mass of optic."
 
dtop /: dtop::usage = 
     "dtop is the the height of the wire attachment points below the top \
blades."
 
n0 /: n0::usage = "n0 is the y-direction separation of the wire attachment \
points on the upper blade springs for the wires leading down to the top \
mass."
 
n1 /: n1::usage = "n1 is the y-direction separation of the wire attachment \
points on the top mass for the wires leading down from the upper blade \
springs (on the structure)."
 
kw1 /: kw1::usage = "kw1 is net longitudinal elasticity of wires from blades \
on structure to top mass."
 
qm = {{kbuz - ((-1 + c1^2)*g*(m1 + m2 + m3))/(2*c1*l1) + 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 0, 0}, 
     {0, kbuz - ((-1 + c1^2)*g*(m1 + m2 + m3))/(2*c1*l1) + 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 0}, 
     {0, 0, kblz - ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0}, 
     {0, 0, 0, kblz - ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 0, 0}, 
     {0, 0, 0, 0, kblz - ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 0}, 
     {0, 0, 0, 0, 0, kblz - ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2)}}
 
kbuz /: kbuz::usage = 
     "kbuz is the net vertical elasticity of the upper blades (on \
structure)."
 
kblz /: kblz::usage = 
     "kblz is the net vertical elasticity of the lower blades (on top mass)."
 
l2 /: l2::usage = "l2 is part of the specification of the model and \
represents the wire length from the blades on the top mass to middle mass. It \
is interpreted as either a stretched length or an unstretched length \
depending on the value of the switch constant unstretched."
 
kw2 /: kw2::usage = "kw2 is net longitudinal elasticity of wires from blades \
on top mass to optic."
 
n2 /: n2::usage = "n2 is the y-direction separation of the wire attachment \
points on the lower blade springs for the wires leading down to mass I."
 
n3 /: n3::usage = "n3 is the y-direction separation of the wire attachment \
points on mass I for the wires leading down from the lower blade springs."
 
cqsm = {{0, ((g*(m1 + m2 + m3) - (2*c1*kw1*l1^3)/(c1^2*l1^2 + (n0 - n1)^2))*
        (-n0 + n1))/(2*l1^2), -1/2*((-1 + c1^2)*g*(m1 + m2 + m3))/(c1*l1) + 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 
      (-2*g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1)) + 
        (4*c1*kw1*l1^3*(c1*l1*n0 + dtop*(n0 - n1)))/(c1^2*l1^2 + 
          (n0 - n1)^2) + (2*g*l1*(m1 + m2 + m3)*n1)/c1)/(4*l1^2)}, 
     {0, ((g*(m1 + m2 + m3) - (2*c1*kw1*l1^3)/(c1^2*l1^2 + (n0 - n1)^2))*
        (n0 - n1))/(2*l1^2), -1/2*((-1 + c1^2)*g*(m1 + m2 + m3))/(c1*l1) + 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 
      (2*g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1)) - 
        (4*c1*kw1*l1^3*(c1*l1*n0 + dtop*(n0 - n1)))/(c1^2*l1^2 + 
          (n0 - n1)^2) - (2*g*l1*(m1 + m2 + m3)*n1)/c1)/(4*l1^2)}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}}
 
km = {{m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1z, I1yz, I1zx, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1yz, I1y, I1xy, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1zx, I1xy, I1x, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, m2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, m2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, m2, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2z, I2yz, I2zx, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2yz, I2y, I2xy, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2zx, I2xy, I2x, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3z, I3yz, I3zx}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3yz, I3y, I3xy}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3zx, I3xy, I3x}}
 
I1z /: I1z::usage = "I1z is z-axis MOI of top mass."
 
I1y /: I1y::usage = "I1y is y-axis MOI of top mass."
 
I1x /: I1x::usage = "I1x is x-axis MOI of top mass."
 
I2z /: I2z::usage = "I2z is z-axis MOI of middle mass."
 
I2y /: I2y::usage = "I2y is y-axis MOI of middle mass."
 
I2x /: I2x::usage = "I2x is x-axis MOI of middle mass."
 
I3z /: I3z::usage = "I3z is z-axis MOI of optic."
 
I3y /: I3y::usage = "I3y is y-axis MOI of optic."
 
I3x /: I3x::usage = "I3x is x-axis MOI of optic."
 
xm = {{(g*(m2 + m3))/(c2*l2) + (g*(m1 + m2 + m3))/(c1*l1), 0, 0, 0, 
      -((d1*g*(m2 + m3))/(c2*l2)) + (d0*g*(m1 + m2 + m3))/(c1*l1), 0, 
      -((g*(m2 + m3))/(c2*l2)), 0, 0, 0, -((d2*g*(m2 + m3))/(c2*l2)), 0, 0, 
      0, 0, 0, 0, 0}, {0, (g*(m2 + m3))/(c2*l2) + (g*(m1 + m2 + m3))/
        (c1*l1) - (g*(m1 + m2 + m3)*(n0 - n1)^2)/(c1*l1^3) + 
       (2*kw1*(n0 - n1)^2)/(c1^2*l1^2 + (n0 - n1)^2) - 
       (g*(m2 + m3)*(n2 - n3)^2)/(c2*l2^3) + (4*kw2*(n2 - n3)^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, (d1*g*(m2 + m3))/(c2*l2) - 
       (d0*g*(m1 + m2 + m3))/(c1*l1) - (g*(m1 + m2 + m3)*(n0 - n1)*
         (c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3) + 
       (2*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1^2*l1^2 + (n0 - n1)^2) - (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*
         (n2 - n3))/(c2*l2^3) + (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, -((g*(m2 + m3))/(c2*l2)) + 
       (g*(m2 + m3)*(n2 - n3)^2)/(c2*l2^3) - (4*kw2*(n2 - n3)^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, (d2*g*(m2 + m3))/(c2*l2) + 
       (g*(m2 + m3)*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/(c2*l2^3) - 
       (4*kw2*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 0, 0}, 
     {0, 0, -(((-1 + c2^2)*g*(m2 + m3))/(c2*l2)) + (g*(m1 + m2 + m3))/
        (c1*l1) - (c1*g*(m1 + m2 + m3))/l1 + (2*c1^2*kw1*l1^2)/
        (c1^2*l1^2 + (n0 - n1)^2) + (4*c2^2*kw2*l2^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 0, 
      ((-1 + c2^2)*g*(m2 + m3))/(c2*l2) - (4*c2^2*kw2*l2^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, (g*(m1 + m2 + m3)*n0*n1)/(c1*l1) - 
       (g*(m2 + m3)*(n2 - n3)^2*si^2)/(c2*l2^3) + (4*kw2*(n2 - n3)^2*si^2)/
        (c2^2*l2^2 + (n2 - n3)^2) + (g*(m2 + m3)*(n2*n3 + si^2))/(c2*l2), 0, 
      0, 0, 0, 0, (g*(m2 + m3)*(n2 - n3)^2*si^2)/(c2*l2^3) - 
       (4*kw2*(n2 - n3)^2*si^2)/(c2^2*l2^2 + (n2 - n3)^2) - 
       (g*(m2 + m3)*(n2*n3 + si^2))/(c2*l2), 0, 0, 0, 0, 0, 0, 0, 0}, 
     {-((d1*g*(m2 + m3))/(c2*l2)) + (d0*g*(m1 + m2 + m3))/(c1*l1), 0, 0, 0, 
      (d0*g*(d0 + c1*l1)*(m1 + m2 + m3))/(c1*l1) - (c2*g*(m2 + m3)*si^2)/l2 + 
       (4*c2^2*kw2*l2^2*si^2)/(c2^2*l2^2 + (n2 - n3)^2) + 
       (g*(m2 + m3)*(d1^2 + c2*d1*l2 + si^2))/(c2*l2), 0, 
      (d1*g*(m2 + m3))/(c2*l2), 0, 0, 0, 
      (d1*d2*g*(m2 + m3) + ((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
           (c2^2*l2^2 + (n2 - n3)^2))*si^2)/(c2*l2), 0, 0, 0, 0, 0, 0, 0}, 
     {0, (d1*g*(m2 + m3))/(c2*l2) - (d0*g*(m1 + m2 + m3))/(c1*l1) - 
       (g*(m1 + m2 + m3)*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3) + 
       (2*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1^2*l1^2 + (n0 - n1)^2) - (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*
         (n2 - n3))/(c2*l2^3) + (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 
      (g*(m1 + m2 + m3)*(d0^2 + c1*d0*l1 + n0*n1))/(c1*l1) - 
       (g*(m1 + m2 + m3)*(c1*l1*n1 + d0*(-n0 + n1))^2)/(c1*l1^3) + 
       (2*kw1*(c1*l1*n1 + d0*(-n0 + n1))^2)/(c1^2*l1^2 + (n0 - n1)^2) - 
       (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))^2)/(c2*l2^3) + 
       (4*kw2*(c2*l2*n2 + d1*(n2 - n3))^2)/(c2^2*l2^2 + (n2 - n3)^2) + 
       (g*(m2 + m3)*(d1^2 + c2*d1*l2 + n2*n3))/(c2*l2), 0, 
      -((d1*g*(m2 + m3))/(c2*l2)) + (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*
         (n2 - n3))/(c2*l2^3) - (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 
      (g*(m2 + m3)*(d1*d2 - n2*n3))/(c2*l2) + 
       (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2*l2^3) - (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*
         (c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 
      0, 0}, {-((g*(m2 + m3))/(c2*l2)), 0, 0, 0, (d1*g*(m2 + m3))/(c2*l2), 0, 
      (g*m3)/(c3*l3) + (g*(m2 + m3))/(c2*l2), 0, 0, 0, 
      -((d3*g*m3)/(c3*l3)) + (d2*g*(m2 + m3))/(c2*l2), 0, -((g*m3)/(c3*l3)), 
      0, 0, 0, -((d4*g*m3)/(c3*l3)), 0}, {0, -((g*(m2 + m3))/(c2*l2)) + 
       (g*(m2 + m3)*(n2 - n3)^2)/(c2*l2^3) - (4*kw2*(n2 - n3)^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, -((d1*g*(m2 + m3))/(c2*l2)) + 
       (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/(c2*l2^3) - 
       (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/(c2^2*l2^2 + (n2 - n3)^2), 
      0, (g*m3)/(c3*l3) + (g*(m2 + m3))/(c2*l2) - (g*(m2 + m3)*(n2 - n3)^2)/
        (c2*l2^3) + (4*kw2*(n2 - n3)^2)/(c2^2*l2^2 + (n2 - n3)^2) - 
       (g*m3*(n4 - n5)^2)/(c3*l3^3) + (4*kw3*(n4 - n5)^2)/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0, (d3*g*m3)/(c3*l3) - 
       (d2*g*(m2 + m3))/(c2*l2) - (g*(m2 + m3)*(n2 - n3)*
         (c2*l2*n3 + d2*(-n2 + n3)))/(c2*l2^3) + 
       (4*kw2*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2^2*l2^2 + (n2 - n3)^2) - (g*m3*(c3*l3*n4 + d3*(n4 - n5))*
         (n4 - n5))/(c3*l3^3) + (4*kw3*(c3*l3*n4 + d3*(n4 - n5))*(n4 - n5))/
        (c3^2*l3^2 + (n4 - n5)^2), 0, (c3^2*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 
        g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) - 4*c3*kw3*l3^3*(n4 - n5)^2)/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (d4*g*m3*(l3^2*(n4 - n5)^2 - (n4 - n5)^4) + c3^3*g*l3^3*m3*(n4 - n5)*
         n5 + c3*l3*(n4 - n5)^2*(4*d4*kw3*l3^2 + g*m3*(n4 - n5)*n5) + 
        c3^2*(d4*g*l3^2*m3*(l3^2 - (n4 - n5)^2) + 4*kw3*l3^4*n5*(-n4 + n5)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2))}, 
     {0, 0, ((-1 + c2^2)*g*(m2 + m3))/(c2*l2) - (4*c2^2*kw2*l2^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 0, (g*(m2 + m3))/(c2*l2) - 
       (c2*g*(m2 + m3))/l2 + (g*(m3 - c3^2*m3))/(c3*l3) + 
       (4*c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2) + (4*c3^2*kw3*l3^2)/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0, 0, 0, 
      ((-1 + c3^2)*g*m3)/(c3*l3) - (4*c3^2*kw3*l3^2)/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0}, 
     {0, 0, 0, (g*(m2 + m3)*(n2 - n3)^2*si^2)/(c2*l2^3) - 
       (4*kw2*(n2 - n3)^2*si^2)/(c2^2*l2^2 + (n2 - n3)^2) - 
       (g*(m2 + m3)*(n2*n3 + si^2))/(c2*l2), 0, 0, 0, 0, 0, 
      -((g*(m2 + m3)*(n2 - n3)^2*si^2)/(c2*l2^3)) + (4*kw2*(n2 - n3)^2*si^2)/
        (c2^2*l2^2 + (n2 - n3)^2) + (g*(m2 + m3)*(n2*n3 + si^2))/(c2*l2) - 
       (g*m3*(n4 - n5)^2*sl^2)/(c3*l3^3) + (4*kw3*(n4 - n5)^2*sl^2)/
        (c3^2*l3^2 + (n4 - n5)^2) + (g*m3*(n4*n5 + sl^2))/(c3*l3), 0, 0, 0, 
      0, 0, (-4*c3*kw3*l3^3*(n4 - n5)^2*sl^2 + c3^2*g*l3^2*m3*
         ((n4 - n5)^2*sl^2 - l3^2*(n4*n5 + sl^2)) + g*m3*(n4 - n5)^2*
         ((n4 - n5)^2*sl^2 - l3^2*(n4*n5 + sl^2)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0}, 
     {-((d2*g*(m2 + m3))/(c2*l2)), 0, 0, 0, 
      (d1*d2*g*(m2 + m3) + ((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
           (c2^2*l2^2 + (n2 - n3)^2))*si^2)/(c2*l2), 0, 
      -((d3*g*m3)/(c3*l3)) + (d2*g*(m2 + m3))/(c2*l2), 0, 0, 0, 
      -((c2*g*(m2 + m3)*si^2)/l2) + (4*c2^2*kw2*l2^2*si^2)/
        (c2^2*l2^2 + (n2 - n3)^2) + (g*(m2 + m3)*(d2^2 + c2*d2*l2 + si^2))/
        (c2*l2) - (c3*g*m3*sl^2)/l3 + (4*c3^2*kw3*l3^2*sl^2)/
        (c3^2*l3^2 + (n4 - n5)^2) + (g*m3*(d3^2 + c3*d3*l3 + sl^2))/(c3*l3), 
      0, (d3*g*m3)/(c3*l3), 0, 0, 0, 
      (d3*d4*g*m3 + ((-1 + c3^2)*g*m3 - (4*c3^3*kw3*l3^3)/
           (c3^2*l3^2 + (n4 - n5)^2))*sl^2)/(c3*l3), 0}, 
     {0, (d2*g*(m2 + m3))/(c2*l2) + (g*(m2 + m3)*(n2 - n3)*
         (c2*l2*n3 + d2*(-n2 + n3)))/(c2*l2^3) - 
       (4*kw2*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 
      (g*(m2 + m3)*(d1*d2 - n2*n3))/(c2*l2) + 
       (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2*l2^3) - (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*
         (c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2), 0, 
      (d3*g*m3)/(c3*l3) - (d2*g*(m2 + m3))/(c2*l2) - 
       (g*(m2 + m3)*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/(c2*l2^3) + 
       (4*kw2*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2^2*l2^2 + (n2 - n3)^2) - (g*m3*(c3*l3*n4 + d3*(n4 - n5))*
         (n4 - n5))/(c3*l3^3) + (4*kw3*(c3*l3*n4 + d3*(n4 - n5))*(n4 - n5))/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0, 
      (g*(m2 + m3)*(d2^2 + c2*d2*l2 + n2*n3))/(c2*l2) - 
       (g*(m2 + m3)*(c2*l2*n3 + d2*(-n2 + n3))^2)/(c2*l2^3) + 
       (4*kw2*(c2*l2*n3 + d2*(-n2 + n3))^2)/(c2^2*l2^2 + (n2 - n3)^2) - 
       (g*m3*(c3*l3*n4 + d3*(n4 - n5))^2)/(c3*l3^3) + 
       (4*kw3*(c3*l3*n4 + d3*(n4 - n5))^2)/(c3^2*l3^2 + (n4 - n5)^2) + 
       (g*m3*(d3^2 + c3*d3*l3 + n4*n5))/(c3*l3), 0, 
      (d3*g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) + c3^3*g*l3^3*m3*n4*
         (n4 - n5) + c3*l3*(-4*d3*kw3*l3^2 + g*m3*n4*(n4 - n5))*(n4 - n5)^2 + 
        c3^2*(d3*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 4*kw3*l3^4*n4*(-n4 + n5)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (g*m3*(d3*d4 - n4*n5))/(c3*l3) + (g*m3*(c3*l3*n4 + d3*(n4 - n5))*
         (c3*l3*n5 + d4*(-n4 + n5)))/(c3*l3^3) - 
       (4*kw3*(c3*l3*n4 + d3*(n4 - n5))*(c3*l3*n5 + d4*(-n4 + n5)))/
        (c3^2*l3^2 + (n4 - n5)^2)}, {0, 0, 0, 0, 0, 0, -((g*m3)/(c3*l3)), 0, 
      0, 0, (d3*g*m3)/(c3*l3), 0, (g*m3)/(c3*l3), 0, 0, 0, (d4*g*m3)/(c3*l3), 
      0}, {0, 0, 0, 0, 0, 0, 0, (c3^2*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 
        g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) - 4*c3*kw3*l3^3*(n4 - n5)^2)/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (d3*g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) + c3^3*g*l3^3*m3*n4*
         (n4 - n5) + c3*l3*(-4*d3*kw3*l3^2 + g*m3*n4*(n4 - n5))*(n4 - n5)^2 + 
        c3^2*(d3*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 4*kw3*l3^4*n4*(-n4 + n5)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 
      (c3^2*g*l3^2*m3*(l3^2 - (n4 - n5)^2) + g*m3*(l3^2*(n4 - n5)^2 - 
          (n4 - n5)^4) + 4*c3*kw3*l3^3*(n4 - n5)^2)/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (d4*g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) + c3^3*g*l3^3*m3*n5*
         (-n4 + n5) + c3^2*(d4*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 
          4*kw3*l3^4*(n4 - n5)*n5) - c3*l3*(n4 - n5)^2*(4*d4*kw3*l3^2 + 
          g*m3*(n4 - n5)*n5))/(c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2))}, 
     {0, 0, 0, 0, 0, 0, 0, 0, ((-1 + c3^2)*g*m3)/(c3*l3) - 
       (4*c3^2*kw3*l3^2)/(c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0, 0, 0, 
      (g*(m3 - c3^2*m3))/(c3*l3) + (4*c3^2*kw3*l3^2)/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (-4*c3*kw3*l3^3*(n4 - n5)^2*sl^2 + c3^2*g*l3^2*m3*((n4 - n5)^2*sl^2 - 
          l3^2*(n4*n5 + sl^2)) + g*m3*(n4 - n5)^2*((n4 - n5)^2*sl^2 - 
          l3^2*(n4*n5 + sl^2)))/(c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      0, 0, (4*c3*kw3*l3^3*(n4 - n5)^2*sl^2 + c3^2*g*l3^2*m3*
         (-((n4 - n5)^2*sl^2) + l3^2*(n4*n5 + sl^2)) + 
        g*m3*(-((n4 - n5)^4*sl^2) + l3^2*(n4 - n5)^2*(n4*n5 + sl^2)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0}, 
     {0, 0, 0, 0, 0, 0, -((d4*g*m3)/(c3*l3)), 0, 0, 0, 
      (d3*d4*g*m3 + ((-1 + c3^2)*g*m3 - (4*c3^3*kw3*l3^3)/
           (c3^2*l3^2 + (n4 - n5)^2))*sl^2)/(c3*l3), 0, (d4*g*m3)/(c3*l3), 0, 
      0, 0, (d4^2*g*m3 + c3*d4*g*l3*m3 + (g*(m3 - c3^2*m3) + 
          (4*c3^3*kw3*l3^3)/(c3^2*l3^2 + (n4 - n5)^2))*sl^2)/(c3*l3), 0}, 
     {0, 0, 0, 0, 0, 0, 0, (d4*g*m3*(l3^2*(n4 - n5)^2 - (n4 - n5)^4) + 
        c3^3*g*l3^3*m3*(n4 - n5)*n5 + c3*l3*(n4 - n5)^2*
         (4*d4*kw3*l3^2 + g*m3*(n4 - n5)*n5) + 
        c3^2*(d4*g*l3^2*m3*(l3^2 - (n4 - n5)^2) + 4*kw3*l3^4*n5*(-n4 + n5)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (g*m3*(d3*d4 - n4*n5))/(c3*l3) + (g*m3*(c3*l3*n4 + d3*(n4 - n5))*
         (c3*l3*n5 + d4*(-n4 + n5)))/(c3*l3^3) - 
       (4*kw3*(c3*l3*n4 + d3*(n4 - n5))*(c3*l3*n5 + d4*(-n4 + n5)))/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 
      (d4*g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) + c3^3*g*l3^3*m3*n5*
         (-n4 + n5) + c3^2*(d4*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 
          4*kw3*l3^4*(n4 - n5)*n5) - c3*l3*(n4 - n5)^2*(4*d4*kw3*l3^2 + 
          g*m3*(n4 - n5)*n5))/(c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      d4*g*m3 + (d4^2*g*m3)/(c3*l3) + (g*m3*(n4 - n5)*n5)/(2*c3*l3) + 
       (g*m3*n5^2)/(c3*l3) - (g*m3*n5*(-n4 + n5))/(2*c3*l3) - 
       (g*m3*(c3*l3*n5 + d4*(-n4 + n5))^2)/(c3*l3^3) + 
       (4*kw3*(c3*l3*n5 + d4*(-n4 + n5))^2)/(c3^2*l3^2 + (n4 - n5)^2)}}
 
d1 /: d1::usage = "d1 is the the height of the wire attachment points below \
the COM of mass U for the wires leading down to mass I."
 
d0 /: d0::usage = "d0 is the the height of the wire attachment points above \
the COM of mass U for the wires leading down from the blades on the \
structure."
 
d2 /: d2::usage = "d2 is the height of the wire attachment points above the \
COM of mass I for the wires leading down from the mass U."
 
si /: si::usage = 
     "si is x-direction separation of wires from second top mass to optic."
 
l3 /: l3::usage = "l3 is part of the specification of the model and \
represents the wire (ribbon) length from middle mass to optic. It is \
interpreted as either a stretched length or an unstretched length depending \
on the value of the switch constant unstretched."
 
d3 /: d3::usage = "d3 is the height of the wire attachment points above the \
COM of mass I for the wires leading down from the mass U."
 
cqxm = {{0, ((-(g*(m1 + m2 + m3)) + (2*c1*kw1*l1^3)/(c1^2*l1^2 + 
           (n0 - n1)^2))*(-n0 + n1))/(2*l1^2), 
      ((-1 + c1^2)*g*(m1 + m2 + m3))/(2*c1*l1) - (c1^2*kw1*l1^2)/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, ((-2*g*l1*(m1 + m2 + m3)*n1)/c1 + 
        2*g*(m1 + m2 + m3)*(c1*l1*n1 + d0*(-n0 + n1)) - 
        (4*c1*kw1*l1^3*(c1*l1*n1 + d0*(-n0 + n1)))/(c1^2*l1^2 + (n0 - n1)^2))/
       (4*l1^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((-(g*(m1 + m2 + m3)) + (2*c1*kw1*l1^3)/(c1^2*l1^2 + (n0 - n1)^2))*
        (n0 - n1))/(2*l1^2), ((-1 + c1^2)*g*(m1 + m2 + m3))/(2*c1*l1) - 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 
      ((2*g*l1*(m1 + m2 + m3)*n1)/c1 + 2*g*(m1 + m2 + m3)*
         (d0*(n0 - n1) - c1*l1*n1) + (4*c1*kw1*l1^3*(c1*l1*n1 + 
           d0*(-n0 + n1)))/(c1^2*l1^2 + (n0 - n1)^2))/(4*l1^2), 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3))/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3))/(c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(-n2 + n3)*
        si)/(4*l2^2), (((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
          (c2^2*l2^2 + (n2 - n3)^2))*si)/(4*c2*l2), 
      (-2*g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3)) + 
        (8*c2*kw2*l2^3*(c2*l2*n2 + d1*(n2 - n3)))/(c2^2*l2^2 + (n2 - n3)^2) + 
        (2*g*l2*(m2 + m3)*n3)/c2)/(8*l2^2), 0, 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3))/(4*l2^2), ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) - 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3)*si)/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3)*si)/(c2*l2) + 
       (c2^2*kw2*l2^2*si)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-2*g*l2*(m2 + m3)*n3)/c2 + 2*g*(m2 + m3)*(c2*l2*n3 + d2*(-n2 + n3)) - 
        (8*c2*kw2*l2^3*(c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2))/
       (8*l2^2), 0, 0, 0, 0, 0, 0}, 
     {0, ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3))/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3))/(c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3)*si)/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3)*si)/(c2*l2) + 
       (c2^2*kw2*l2^2*si)/(c2^2*l2^2 + (n2 - n3)^2), 
      (-2*g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3)) + 
        (8*c2*kw2*l2^3*(c2*l2*n2 + d1*(n2 - n3)))/(c2^2*l2^2 + (n2 - n3)^2) + 
        (2*g*l2*(m2 + m3)*n3)/c2)/(8*l2^2), 0, 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3))/(4*l2^2), ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) - 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(-n2 + n3)*
        si)/(4*l2^2), (((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
          (c2^2*l2^2 + (n2 - n3)^2))*si)/(4*c2*l2), 
      ((-2*g*l2*(m2 + m3)*n3)/c2 + 2*g*(m2 + m3)*(c2*l2*n3 + d2*(-n2 + n3)) - 
        (8*c2*kw2*l2^3*(c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2))/
       (8*l2^2), 0, 0, 0, 0, 0, 0}, 
     {0, ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (n2 - n3))/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3))/(c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(n2 - n3)*
        si)/(4*l2^2), (((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
          (c2^2*l2^2 + (n2 - n3)^2))*si)/(4*c2*l2), 
      (2*g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3)) - 
        (8*c2*kw2*l2^3*(c2*l2*n2 + d1*(n2 - n3)))/(c2^2*l2^2 + (n2 - n3)^2) - 
        (2*g*l2*(m2 + m3)*n3)/c2)/(8*l2^2), 0, 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (n2 - n3))/(4*l2^2), ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) - 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(n2 - n3)*
        si)/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3)*si)/(c2*l2) + 
       (c2^2*kw2*l2^2*si)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((2*g*l2*(m2 + m3)*n3)/c2 + 2*g*(m2 + m3)*(d2*(n2 - n3) - c2*l2*n3) + 
        (8*c2*kw2*l2^3*(c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2))/
       (8*l2^2), 0, 0, 0, 0, 0, 0}, 
     {0, ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (n2 - n3))/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3))/(c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(n2 - n3)*
        si)/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3)*si)/(c2*l2) + 
       (c2^2*kw2*l2^2*si)/(c2^2*l2^2 + (n2 - n3)^2), 
      (2*g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3)) - 
        (8*c2*kw2*l2^3*(c2*l2*n2 + d1*(n2 - n3)))/(c2^2*l2^2 + (n2 - n3)^2) - 
        (2*g*l2*(m2 + m3)*n3)/c2)/(8*l2^2), 0, 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (n2 - n3))/(4*l2^2), ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) - 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(n2 - n3)*
        si)/(4*l2^2), (((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
          (c2^2*l2^2 + (n2 - n3)^2))*si)/(4*c2*l2), 
      ((2*g*l2*(m2 + m3)*n3)/c2 + 2*g*(m2 + m3)*(d2*(n2 - n3) - c2*l2*n3) + 
        (8*c2*kw2*l2^3*(c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2))/
       (8*l2^2), 0, 0, 0, 0, 0, 0}}
 
cxsm = {{-((g*(m1 + m2 + m3))/(c1*l1)), 0, 0, 0, (dtop*g*(m1 + m2 + m3))/
       (c1*l1), 0}, {0, -((g*(m1 + m2 + m3))/(c1*l1)) + 
       (g*(m1 + m2 + m3)*(n0 - n1)^2)/(c1*l1^3) - (2*kw1*(n0 - n1)^2)/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 
      -((dtop*g*(m1 + m2 + m3))/(c1*l1)) + 
       (g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/(c1*l1^3) - 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/
        (c1^2*l1^2 + (n0 - n1)^2)}, 
     {0, 0, ((-1 + c1^2)*g*(m1 + m2 + m3))/(c1*l1) - (2*c1^2*kw1*l1^2)/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0}, 
     {0, 0, 0, -((g*(m1 + m2 + m3)*n0*n1)/(c1*l1)), 0, 0}, 
     {-((d0*g*(m1 + m2 + m3))/(c1*l1)), 0, 0, 0, (d0*dtop*g*(m1 + m2 + m3))/
       (c1*l1), 0}, {0, (d0*g*(m1 + m2 + m3))/(c1*l1) + 
       (g*(m1 + m2 + m3)*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3) - 
       (2*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 
      (g*(m1 + m2 + m3)*(d0*dtop - n0*n1))/(c1*l1) + 
       (g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))*
         (c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3) - 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1^2*l1^2 + (n0 - n1)^2)}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}}
 
allvars = {x1, y1, z1, yaw1, pitch1, roll1, x2, y2, z2, yaw2, pitch2, roll2, 
     x3, y3, z3, yaw3, pitch3, roll3}
 
allvars /: allvars::usage = "allvars is part of the specification of the \
model. It should be a list of the position and angle variables for the \
system. It shouldn't include velocities, or the coordinates of the support \
structure."
 
allfloats = {qul, qur, qlf, qlb, qrf, qrb}
 
allfloats /: allfloats::usage = "allfloats is part of the specification of \
the model. It should be a list of the positions and angles of connections \
where one elastic element is connected directly to another with no mass \
element between."
 
allparams = {x00, y00, z00, yaw00, pitch00, roll00}
 
allparams /: allparams::usage = "allparams is part of the specification of \
the model. It should be a list of the positions and angles describing the \
state of the support structure, plus any other coordinates that are constant \
for the purposes of the normal mode calculation but through which one might \
want to inject a displacement input."
 
velocities = {vx1, vy1, vz1, vyaw1, vpitch1, vroll1, vx2, vy2, vz2, vyaw2, 
     vpitch2, vroll2, vx3, vy3, vz3, vyaw3, vpitch3, vroll3}
 
velocities /: velocities::usage = "velocities is a list of symbols (e.g., \
vx1) for velocities, corresponding to the variables in allvars (cf., x1), \
initialized by makevelocities[]. It was formerly used by tovelocities but is \
now deprecated."
 
stdcoeff = {g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, 
     I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, 
     d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, 
     kw2, kw3, Y1, Y2, Y3, M11, M21, M31}
 
Y1 /: Y1::usage = 
     "Y1 is Young's modulus of wires from blades on structure to top mass."
 
Y2 /: Y2::usage = 
     "Y2 is Young's modulus of wires from blades on top mass to middle mass."
 
Y3 /: Y3::usage = 
     "Y3 is Young's modulus of wires from blades on middle mass to optic."
 
M11 /: M11::usage = "M11 is the moment of area of wires from blades on \
structure to top mass in direction \"1\"."
 
M21 /: M21::usage = "M21 is the moment of area of wires from blades on top \
mass to optic in direction \"1\""
 
flexsubs = {flex1 -> c1^(3/2)*Sqrt[(M11*nw1*Y1)/(g*(m1 + m2 + m3))], 
     flex2 -> c2^(3/2)*Sqrt[(M21*nw2*Y2)/(g*(m2 + m3))], 
     flex3 -> c3^(3/2)*Sqrt[(M31*nw3*Y3)/(g*m3)], m13 -> m1 + m2 + m3, 
     m23 -> m2 + m3, tl1 -> d0 + dtop + c1*l1, tl2 -> d1 + d2 + c2*l2, 
     tl3 -> d3 + d4 + c3*l3, c1 -> Sqrt[l1^2 - (-n0 + n1)^2]/l1, 
     c2 -> Sqrt[l2^2 - (-n2 + n3)^2]/l2, c3 -> Sqrt[l3^2 - (-n4 + n5)^2]/l3, 
     si1 -> (-n0 + n1)/l1, si2 -> (-n2 + n3)/l2, si3 -> (-n4 + n5)/l3, 
     nw1 -> 2, nw2 -> 4, nw3 -> 4}
 
nw1 /: nw1::usage = 
     "nw1 is number of wires from blades on structure to top mass (total)."
 
nw2 /: nw2::usage = 
     "nw2 is number of wires from blades on top mass to middle mass (total)."
 
nw3 /: nw3::usage = 
     "nw3 is number of wires from blades on middle mass to optic (total)."
 
tl1 /: tl1::usage = "tl1 is the vertical distance spanned by the upper wires."
 
tl2 /: tl2::usage = "tl2 is the vertical distance spanned by the lower wires."
sm = {{(g*(m1 + m2 + m3))/(c1*l1), 0, 0, 0, 
      -((dtop*g*(m1 + m2 + m3))/(c1*l1)), 0}, 
     {0, (g*(m1 + m2 + m3))/(c1*l1) - (g*(m1 + m2 + m3)*(n0 - n1)^2)/
        (c1*l1^3) + (2*kw1*(n0 - n1)^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 
      (dtop*g*(m1 + m2 + m3))/(c1*l1) - 
       (g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/(c1*l1^3) + 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/
        (c1^2*l1^2 + (n0 - n1)^2)}, 
     {0, 0, -(((-1 + c1^2)*g*(m1 + m2 + m3))/(c1*l1)) + 
       (2*c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0}, 
     {0, 0, 0, (g*(m1 + m2 + m3)*n0*n1)/(c1*l1), 0, 0}, 
     {-((dtop*g*(m1 + m2 + m3))/(c1*l1)), 0, 0, 0, 
      (dtop*g*(dtop + c1*l1)*(m1 + m2 + m3))/(c1*l1), 0}, 
     {0, (dtop*g*(m1 + m2 + m3))/(c1*l1) - 
       (g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/(c1*l1^3) + 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 
      -((g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))^2)/(c1*l1^3)) + 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))^2)/(c1^2*l1^2 + (n0 - n1)^2) + 
       (g*(m1 + m2 + m3)*(dtop^2 + c1*dtop*l1 + n0*n1))/(c1*l1)}}
 
g /: g::usage = "g is local gravity."
 
l1 /: l1::usage = "l1 is part of the specification of the model and \
represents the wire length from the blades on the structure to the top mass. \
It is interpreted as either a stretched length or an unstretched length \
depending on the value of the switch constant unstretched."
 
m1 /: m1::usage = "m1 is mass of top mass."
 
m2 /: m2::usage = "m2 is mass of middle mass."
 
m3 /: m3::usage = "m3 is mass of optic."
 
dtop /: dtop::usage = 
     "dtop is the the height of the wire attachment points below the top \
blades."
 
n0 /: n0::usage = "n0 is the y-direction separation of the wire attachment \
points on the upper blade springs for the wires leading down to the top \
mass."
 
n1 /: n1::usage = "n1 is the y-direction separation of the wire attachment \
points on the top mass for the wires leading down from the upper blade \
springs (on the structure)."
 
kw1 /: kw1::usage = "kw1 is net longitudinal elasticity of wires from blades \
on structure to top mass."
 
qm = {{kbuz - ((-1 + c1^2)*g*(m1 + m2 + m3))/(2*c1*l1) + 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 0, 0}, 
     {0, kbuz - ((-1 + c1^2)*g*(m1 + m2 + m3))/(2*c1*l1) + 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 0}, 
     {0, 0, kblz - ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0}, 
     {0, 0, 0, kblz - ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 0, 0}, 
     {0, 0, 0, 0, kblz - ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 0}, 
     {0, 0, 0, 0, 0, kblz - ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2)}}
 
kbuz /: kbuz::usage = 
     "kbuz is the net vertical elasticity of the upper blades (on \
structure)."
 
kblz /: kblz::usage = 
     "kblz is the net vertical elasticity of the lower blades (on top mass)."
 
l2 /: l2::usage = "l2 is part of the specification of the model and \
represents the wire length from the blades on the top mass to middle mass. It \
is interpreted as either a stretched length or an unstretched length \
depending on the value of the switch constant unstretched."
 
kw2 /: kw2::usage = "kw2 is net longitudinal elasticity of wires from blades \
on top mass to optic."
 
n2 /: n2::usage = "n2 is the y-direction separation of the wire attachment \
points on the lower blade springs for the wires leading down to mass I."
 
n3 /: n3::usage = "n3 is the y-direction separation of the wire attachment \
points on mass I for the wires leading down from the lower blade springs."
 
cqsm = {{0, ((g*(m1 + m2 + m3) - (2*c1*kw1*l1^3)/(c1^2*l1^2 + (n0 - n1)^2))*
        (-n0 + n1))/(2*l1^2), -1/2*((-1 + c1^2)*g*(m1 + m2 + m3))/(c1*l1) + 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 
      (-2*g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1)) + 
        (4*c1*kw1*l1^3*(c1*l1*n0 + dtop*(n0 - n1)))/(c1^2*l1^2 + 
          (n0 - n1)^2) + (2*g*l1*(m1 + m2 + m3)*n1)/c1)/(4*l1^2)}, 
     {0, ((g*(m1 + m2 + m3) - (2*c1*kw1*l1^3)/(c1^2*l1^2 + (n0 - n1)^2))*
        (n0 - n1))/(2*l1^2), -1/2*((-1 + c1^2)*g*(m1 + m2 + m3))/(c1*l1) + 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 
      (2*g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1)) - 
        (4*c1*kw1*l1^3*(c1*l1*n0 + dtop*(n0 - n1)))/(c1^2*l1^2 + 
          (n0 - n1)^2) - (2*g*l1*(m1 + m2 + m3)*n1)/c1)/(4*l1^2)}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}}
 
km = {{m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1z, I1yz, I1zx, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1yz, I1y, I1xy, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1zx, I1xy, I1x, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, m2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, m2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, m2, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2z, I2yz, I2zx, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2yz, I2y, I2xy, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2zx, I2xy, I2x, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3z, I3yz, I3zx}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3yz, I3y, I3xy}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3zx, I3xy, I3x}}
 
I1z /: I1z::usage = "I1z is z-axis MOI of top mass."
 
I1y /: I1y::usage = "I1y is y-axis MOI of top mass."
 
I1x /: I1x::usage = "I1x is x-axis MOI of top mass."
 
I2z /: I2z::usage = "I2z is z-axis MOI of middle mass."
 
I2y /: I2y::usage = "I2y is y-axis MOI of middle mass."
 
I2x /: I2x::usage = "I2x is x-axis MOI of middle mass."
 
I3z /: I3z::usage = "I3z is z-axis MOI of optic."
 
I3y /: I3y::usage = "I3y is y-axis MOI of optic."
 
I3x /: I3x::usage = "I3x is x-axis MOI of optic."
 
xm = {{(g*(m2 + m3))/(c2*l2) + (g*(m1 + m2 + m3))/(c1*l1), 0, 0, 0, 
      -((d1*g*(m2 + m3))/(c2*l2)) + (d0*g*(m1 + m2 + m3))/(c1*l1), 0, 
      -((g*(m2 + m3))/(c2*l2)), 0, 0, 0, -((d2*g*(m2 + m3))/(c2*l2)), 0, 0, 
      0, 0, 0, 0, 0}, {0, (g*(m2 + m3))/(c2*l2) + (g*(m1 + m2 + m3))/
        (c1*l1) - (g*(m1 + m2 + m3)*(n0 - n1)^2)/(c1*l1^3) + 
       (2*kw1*(n0 - n1)^2)/(c1^2*l1^2 + (n0 - n1)^2) - 
       (g*(m2 + m3)*(n2 - n3)^2)/(c2*l2^3) + (4*kw2*(n2 - n3)^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, (d1*g*(m2 + m3))/(c2*l2) - 
       (d0*g*(m1 + m2 + m3))/(c1*l1) - (g*(m1 + m2 + m3)*(n0 - n1)*
         (c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3) + 
       (2*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1^2*l1^2 + (n0 - n1)^2) - (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*
         (n2 - n3))/(c2*l2^3) + (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, -((g*(m2 + m3))/(c2*l2)) + 
       (g*(m2 + m3)*(n2 - n3)^2)/(c2*l2^3) - (4*kw2*(n2 - n3)^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, (d2*g*(m2 + m3))/(c2*l2) + 
       (g*(m2 + m3)*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/(c2*l2^3) - 
       (4*kw2*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 0, 0}, 
     {0, 0, -(((-1 + c2^2)*g*(m2 + m3))/(c2*l2)) + (g*(m1 + m2 + m3))/
        (c1*l1) - (c1*g*(m1 + m2 + m3))/l1 + (2*c1^2*kw1*l1^2)/
        (c1^2*l1^2 + (n0 - n1)^2) + (4*c2^2*kw2*l2^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 0, 
      ((-1 + c2^2)*g*(m2 + m3))/(c2*l2) - (4*c2^2*kw2*l2^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, (g*(m1 + m2 + m3)*n0*n1)/(c1*l1) - 
       (g*(m2 + m3)*(n2 - n3)^2*si^2)/(c2*l2^3) + (4*kw2*(n2 - n3)^2*si^2)/
        (c2^2*l2^2 + (n2 - n3)^2) + (g*(m2 + m3)*(n2*n3 + si^2))/(c2*l2), 0, 
      0, 0, 0, 0, (g*(m2 + m3)*(n2 - n3)^2*si^2)/(c2*l2^3) - 
       (4*kw2*(n2 - n3)^2*si^2)/(c2^2*l2^2 + (n2 - n3)^2) - 
       (g*(m2 + m3)*(n2*n3 + si^2))/(c2*l2), 0, 0, 0, 0, 0, 0, 0, 0}, 
     {-((d1*g*(m2 + m3))/(c2*l2)) + (d0*g*(m1 + m2 + m3))/(c1*l1), 0, 0, 0, 
      (d0*g*(d0 + c1*l1)*(m1 + m2 + m3))/(c1*l1) - (c2*g*(m2 + m3)*si^2)/l2 + 
       (4*c2^2*kw2*l2^2*si^2)/(c2^2*l2^2 + (n2 - n3)^2) + 
       (g*(m2 + m3)*(d1^2 + c2*d1*l2 + si^2))/(c2*l2), 0, 
      (d1*g*(m2 + m3))/(c2*l2), 0, 0, 0, 
      (d1*d2*g*(m2 + m3) + ((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
           (c2^2*l2^2 + (n2 - n3)^2))*si^2)/(c2*l2), 0, 0, 0, 0, 0, 0, 0}, 
     {0, (d1*g*(m2 + m3))/(c2*l2) - (d0*g*(m1 + m2 + m3))/(c1*l1) - 
       (g*(m1 + m2 + m3)*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3) + 
       (2*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1^2*l1^2 + (n0 - n1)^2) - (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*
         (n2 - n3))/(c2*l2^3) + (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 
      (g*(m1 + m2 + m3)*(d0^2 + c1*d0*l1 + n0*n1))/(c1*l1) - 
       (g*(m1 + m2 + m3)*(c1*l1*n1 + d0*(-n0 + n1))^2)/(c1*l1^3) + 
       (2*kw1*(c1*l1*n1 + d0*(-n0 + n1))^2)/(c1^2*l1^2 + (n0 - n1)^2) - 
       (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))^2)/(c2*l2^3) + 
       (4*kw2*(c2*l2*n2 + d1*(n2 - n3))^2)/(c2^2*l2^2 + (n2 - n3)^2) + 
       (g*(m2 + m3)*(d1^2 + c2*d1*l2 + n2*n3))/(c2*l2), 0, 
      -((d1*g*(m2 + m3))/(c2*l2)) + (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*
         (n2 - n3))/(c2*l2^3) - (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 
      (g*(m2 + m3)*(d1*d2 - n2*n3))/(c2*l2) + 
       (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2*l2^3) - (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*
         (c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 
      0, 0}, {-((g*(m2 + m3))/(c2*l2)), 0, 0, 0, (d1*g*(m2 + m3))/(c2*l2), 0, 
      (g*m3)/(c3*l3) + (g*(m2 + m3))/(c2*l2), 0, 0, 0, 
      -((d3*g*m3)/(c3*l3)) + (d2*g*(m2 + m3))/(c2*l2), 0, -((g*m3)/(c3*l3)), 
      0, 0, 0, -((d4*g*m3)/(c3*l3)), 0}, {0, -((g*(m2 + m3))/(c2*l2)) + 
       (g*(m2 + m3)*(n2 - n3)^2)/(c2*l2^3) - (4*kw2*(n2 - n3)^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, -((d1*g*(m2 + m3))/(c2*l2)) + 
       (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/(c2*l2^3) - 
       (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/(c2^2*l2^2 + (n2 - n3)^2), 
      0, (g*m3)/(c3*l3) + (g*(m2 + m3))/(c2*l2) - (g*(m2 + m3)*(n2 - n3)^2)/
        (c2*l2^3) + (4*kw2*(n2 - n3)^2)/(c2^2*l2^2 + (n2 - n3)^2) - 
       (g*m3*(n4 - n5)^2)/(c3*l3^3) + (4*kw3*(n4 - n5)^2)/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0, (d3*g*m3)/(c3*l3) - 
       (d2*g*(m2 + m3))/(c2*l2) - (g*(m2 + m3)*(n2 - n3)*
         (c2*l2*n3 + d2*(-n2 + n3)))/(c2*l2^3) + 
       (4*kw2*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2^2*l2^2 + (n2 - n3)^2) - (g*m3*(c3*l3*n4 + d3*(n4 - n5))*
         (n4 - n5))/(c3*l3^3) + (4*kw3*(c3*l3*n4 + d3*(n4 - n5))*(n4 - n5))/
        (c3^2*l3^2 + (n4 - n5)^2), 0, (c3^2*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 
        g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) - 4*c3*kw3*l3^3*(n4 - n5)^2)/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (d4*g*m3*(l3^2*(n4 - n5)^2 - (n4 - n5)^4) + c3^3*g*l3^3*m3*(n4 - n5)*
         n5 + c3*l3*(n4 - n5)^2*(4*d4*kw3*l3^2 + g*m3*(n4 - n5)*n5) + 
        c3^2*(d4*g*l3^2*m3*(l3^2 - (n4 - n5)^2) + 4*kw3*l3^4*n5*(-n4 + n5)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2))}, 
     {0, 0, ((-1 + c2^2)*g*(m2 + m3))/(c2*l2) - (4*c2^2*kw2*l2^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 0, (g*(m2 + m3))/(c2*l2) - 
       (c2*g*(m2 + m3))/l2 + (g*(m3 - c3^2*m3))/(c3*l3) + 
       (4*c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2) + (4*c3^2*kw3*l3^2)/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0, 0, 0, 
      ((-1 + c3^2)*g*m3)/(c3*l3) - (4*c3^2*kw3*l3^2)/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0}, 
     {0, 0, 0, (g*(m2 + m3)*(n2 - n3)^2*si^2)/(c2*l2^3) - 
       (4*kw2*(n2 - n3)^2*si^2)/(c2^2*l2^2 + (n2 - n3)^2) - 
       (g*(m2 + m3)*(n2*n3 + si^2))/(c2*l2), 0, 0, 0, 0, 0, 
      -((g*(m2 + m3)*(n2 - n3)^2*si^2)/(c2*l2^3)) + (4*kw2*(n2 - n3)^2*si^2)/
        (c2^2*l2^2 + (n2 - n3)^2) + (g*(m2 + m3)*(n2*n3 + si^2))/(c2*l2) - 
       (g*m3*(n4 - n5)^2*sl^2)/(c3*l3^3) + (4*kw3*(n4 - n5)^2*sl^2)/
        (c3^2*l3^2 + (n4 - n5)^2) + (g*m3*(n4*n5 + sl^2))/(c3*l3), 0, 0, 0, 
      0, 0, (-4*c3*kw3*l3^3*(n4 - n5)^2*sl^2 + c3^2*g*l3^2*m3*
         ((n4 - n5)^2*sl^2 - l3^2*(n4*n5 + sl^2)) + g*m3*(n4 - n5)^2*
         ((n4 - n5)^2*sl^2 - l3^2*(n4*n5 + sl^2)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0}, 
     {-((d2*g*(m2 + m3))/(c2*l2)), 0, 0, 0, 
      (d1*d2*g*(m2 + m3) + ((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
           (c2^2*l2^2 + (n2 - n3)^2))*si^2)/(c2*l2), 0, 
      -((d3*g*m3)/(c3*l3)) + (d2*g*(m2 + m3))/(c2*l2), 0, 0, 0, 
      -((c2*g*(m2 + m3)*si^2)/l2) + (4*c2^2*kw2*l2^2*si^2)/
        (c2^2*l2^2 + (n2 - n3)^2) + (g*(m2 + m3)*(d2^2 + c2*d2*l2 + si^2))/
        (c2*l2) - (c3*g*m3*sl^2)/l3 + (4*c3^2*kw3*l3^2*sl^2)/
        (c3^2*l3^2 + (n4 - n5)^2) + (g*m3*(d3^2 + c3*d3*l3 + sl^2))/(c3*l3), 
      0, (d3*g*m3)/(c3*l3), 0, 0, 0, 
      (d3*d4*g*m3 + ((-1 + c3^2)*g*m3 - (4*c3^3*kw3*l3^3)/
           (c3^2*l3^2 + (n4 - n5)^2))*sl^2)/(c3*l3), 0}, 
     {0, (d2*g*(m2 + m3))/(c2*l2) + (g*(m2 + m3)*(n2 - n3)*
         (c2*l2*n3 + d2*(-n2 + n3)))/(c2*l2^3) - 
       (4*kw2*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 
      (g*(m2 + m3)*(d1*d2 - n2*n3))/(c2*l2) + 
       (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2*l2^3) - (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*
         (c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2), 0, 
      (d3*g*m3)/(c3*l3) - (d2*g*(m2 + m3))/(c2*l2) - 
       (g*(m2 + m3)*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/(c2*l2^3) + 
       (4*kw2*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2^2*l2^2 + (n2 - n3)^2) - (g*m3*(c3*l3*n4 + d3*(n4 - n5))*
         (n4 - n5))/(c3*l3^3) + (4*kw3*(c3*l3*n4 + d3*(n4 - n5))*(n4 - n5))/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0, 
      (g*(m2 + m3)*(d2^2 + c2*d2*l2 + n2*n3))/(c2*l2) - 
       (g*(m2 + m3)*(c2*l2*n3 + d2*(-n2 + n3))^2)/(c2*l2^3) + 
       (4*kw2*(c2*l2*n3 + d2*(-n2 + n3))^2)/(c2^2*l2^2 + (n2 - n3)^2) - 
       (g*m3*(c3*l3*n4 + d3*(n4 - n5))^2)/(c3*l3^3) + 
       (4*kw3*(c3*l3*n4 + d3*(n4 - n5))^2)/(c3^2*l3^2 + (n4 - n5)^2) + 
       (g*m3*(d3^2 + c3*d3*l3 + n4*n5))/(c3*l3), 0, 
      (d3*g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) + c3^3*g*l3^3*m3*n4*
         (n4 - n5) + c3*l3*(-4*d3*kw3*l3^2 + g*m3*n4*(n4 - n5))*(n4 - n5)^2 + 
        c3^2*(d3*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 4*kw3*l3^4*n4*(-n4 + n5)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (g*m3*(d3*d4 - n4*n5))/(c3*l3) + (g*m3*(c3*l3*n4 + d3*(n4 - n5))*
         (c3*l3*n5 + d4*(-n4 + n5)))/(c3*l3^3) - 
       (4*kw3*(c3*l3*n4 + d3*(n4 - n5))*(c3*l3*n5 + d4*(-n4 + n5)))/
        (c3^2*l3^2 + (n4 - n5)^2)}, {0, 0, 0, 0, 0, 0, -((g*m3)/(c3*l3)), 0, 
      0, 0, (d3*g*m3)/(c3*l3), 0, (g*m3)/(c3*l3), 0, 0, 0, (d4*g*m3)/(c3*l3), 
      0}, {0, 0, 0, 0, 0, 0, 0, (c3^2*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 
        g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) - 4*c3*kw3*l3^3*(n4 - n5)^2)/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (d3*g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) + c3^3*g*l3^3*m3*n4*
         (n4 - n5) + c3*l3*(-4*d3*kw3*l3^2 + g*m3*n4*(n4 - n5))*(n4 - n5)^2 + 
        c3^2*(d3*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 4*kw3*l3^4*n4*(-n4 + n5)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 
      (c3^2*g*l3^2*m3*(l3^2 - (n4 - n5)^2) + g*m3*(l3^2*(n4 - n5)^2 - 
          (n4 - n5)^4) + 4*c3*kw3*l3^3*(n4 - n5)^2)/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (d4*g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) + c3^3*g*l3^3*m3*n5*
         (-n4 + n5) + c3^2*(d4*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 
          4*kw3*l3^4*(n4 - n5)*n5) - c3*l3*(n4 - n5)^2*(4*d4*kw3*l3^2 + 
          g*m3*(n4 - n5)*n5))/(c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2))}, 
     {0, 0, 0, 0, 0, 0, 0, 0, ((-1 + c3^2)*g*m3)/(c3*l3) - 
       (4*c3^2*kw3*l3^2)/(c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0, 0, 0, 
      (g*(m3 - c3^2*m3))/(c3*l3) + (4*c3^2*kw3*l3^2)/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (-4*c3*kw3*l3^3*(n4 - n5)^2*sl^2 + c3^2*g*l3^2*m3*((n4 - n5)^2*sl^2 - 
          l3^2*(n4*n5 + sl^2)) + g*m3*(n4 - n5)^2*((n4 - n5)^2*sl^2 - 
          l3^2*(n4*n5 + sl^2)))/(c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      0, 0, (4*c3*kw3*l3^3*(n4 - n5)^2*sl^2 + c3^2*g*l3^2*m3*
         (-((n4 - n5)^2*sl^2) + l3^2*(n4*n5 + sl^2)) + 
        g*m3*(-((n4 - n5)^4*sl^2) + l3^2*(n4 - n5)^2*(n4*n5 + sl^2)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0}, 
     {0, 0, 0, 0, 0, 0, -((d4*g*m3)/(c3*l3)), 0, 0, 0, 
      (d3*d4*g*m3 + ((-1 + c3^2)*g*m3 - (4*c3^3*kw3*l3^3)/
           (c3^2*l3^2 + (n4 - n5)^2))*sl^2)/(c3*l3), 0, (d4*g*m3)/(c3*l3), 0, 
      0, 0, (d4^2*g*m3 + c3*d4*g*l3*m3 + (g*(m3 - c3^2*m3) + 
          (4*c3^3*kw3*l3^3)/(c3^2*l3^2 + (n4 - n5)^2))*sl^2)/(c3*l3), 0}, 
     {0, 0, 0, 0, 0, 0, 0, (d4*g*m3*(l3^2*(n4 - n5)^2 - (n4 - n5)^4) + 
        c3^3*g*l3^3*m3*(n4 - n5)*n5 + c3*l3*(n4 - n5)^2*
         (4*d4*kw3*l3^2 + g*m3*(n4 - n5)*n5) + 
        c3^2*(d4*g*l3^2*m3*(l3^2 - (n4 - n5)^2) + 4*kw3*l3^4*n5*(-n4 + n5)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (g*m3*(d3*d4 - n4*n5))/(c3*l3) + (g*m3*(c3*l3*n4 + d3*(n4 - n5))*
         (c3*l3*n5 + d4*(-n4 + n5)))/(c3*l3^3) - 
       (4*kw3*(c3*l3*n4 + d3*(n4 - n5))*(c3*l3*n5 + d4*(-n4 + n5)))/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 
      (d4*g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) + c3^3*g*l3^3*m3*n5*
         (-n4 + n5) + c3^2*(d4*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 
          4*kw3*l3^4*(n4 - n5)*n5) - c3*l3*(n4 - n5)^2*(4*d4*kw3*l3^2 + 
          g*m3*(n4 - n5)*n5))/(c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      d4*g*m3 + (d4^2*g*m3)/(c3*l3) + (g*m3*(n4 - n5)*n5)/(2*c3*l3) + 
       (g*m3*n5^2)/(c3*l3) - (g*m3*n5*(-n4 + n5))/(2*c3*l3) - 
       (g*m3*(c3*l3*n5 + d4*(-n4 + n5))^2)/(c3*l3^3) + 
       (4*kw3*(c3*l3*n5 + d4*(-n4 + n5))^2)/(c3^2*l3^2 + (n4 - n5)^2)}}
 
d1 /: d1::usage = "d1 is the the height of the wire attachment points below \
the COM of mass U for the wires leading down to mass I."
 
d0 /: d0::usage = "d0 is the the height of the wire attachment points above \
the COM of mass U for the wires leading down from the blades on the \
structure."
 
d2 /: d2::usage = "d2 is the height of the wire attachment points above the \
COM of mass I for the wires leading down from the mass U."
 
si /: si::usage = 
     "si is x-direction separation of wires from second top mass to optic."
 
l3 /: l3::usage = "l3 is part of the specification of the model and \
represents the wire (ribbon) length from middle mass to optic. It is \
interpreted as either a stretched length or an unstretched length depending \
on the value of the switch constant unstretched."
 
d3 /: d3::usage = "d3 is the height of the wire attachment points above the \
COM of mass I for the wires leading down from the mass U."
 
cqxm = {{0, ((-(g*(m1 + m2 + m3)) + (2*c1*kw1*l1^3)/(c1^2*l1^2 + 
           (n0 - n1)^2))*(-n0 + n1))/(2*l1^2), 
      ((-1 + c1^2)*g*(m1 + m2 + m3))/(2*c1*l1) - (c1^2*kw1*l1^2)/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, ((-2*g*l1*(m1 + m2 + m3)*n1)/c1 + 
        2*g*(m1 + m2 + m3)*(c1*l1*n1 + d0*(-n0 + n1)) - 
        (4*c1*kw1*l1^3*(c1*l1*n1 + d0*(-n0 + n1)))/(c1^2*l1^2 + (n0 - n1)^2))/
       (4*l1^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((-(g*(m1 + m2 + m3)) + (2*c1*kw1*l1^3)/(c1^2*l1^2 + (n0 - n1)^2))*
        (n0 - n1))/(2*l1^2), ((-1 + c1^2)*g*(m1 + m2 + m3))/(2*c1*l1) - 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 
      ((2*g*l1*(m1 + m2 + m3)*n1)/c1 + 2*g*(m1 + m2 + m3)*
         (d0*(n0 - n1) - c1*l1*n1) + (4*c1*kw1*l1^3*(c1*l1*n1 + 
           d0*(-n0 + n1)))/(c1^2*l1^2 + (n0 - n1)^2))/(4*l1^2), 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3))/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3))/(c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(-n2 + n3)*
        si)/(4*l2^2), (((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
          (c2^2*l2^2 + (n2 - n3)^2))*si)/(4*c2*l2), 
      (-2*g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3)) + 
        (8*c2*kw2*l2^3*(c2*l2*n2 + d1*(n2 - n3)))/(c2^2*l2^2 + (n2 - n3)^2) + 
        (2*g*l2*(m2 + m3)*n3)/c2)/(8*l2^2), 0, 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3))/(4*l2^2), ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) - 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3)*si)/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3)*si)/(c2*l2) + 
       (c2^2*kw2*l2^2*si)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-2*g*l2*(m2 + m3)*n3)/c2 + 2*g*(m2 + m3)*(c2*l2*n3 + d2*(-n2 + n3)) - 
        (8*c2*kw2*l2^3*(c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2))/
       (8*l2^2), 0, 0, 0, 0, 0, 0}, 
     {0, ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3))/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3))/(c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3)*si)/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3)*si)/(c2*l2) + 
       (c2^2*kw2*l2^2*si)/(c2^2*l2^2 + (n2 - n3)^2), 
      (-2*g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3)) + 
        (8*c2*kw2*l2^3*(c2*l2*n2 + d1*(n2 - n3)))/(c2^2*l2^2 + (n2 - n3)^2) + 
        (2*g*l2*(m2 + m3)*n3)/c2)/(8*l2^2), 0, 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3))/(4*l2^2), ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) - 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(-n2 + n3)*
        si)/(4*l2^2), (((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
          (c2^2*l2^2 + (n2 - n3)^2))*si)/(4*c2*l2), 
      ((-2*g*l2*(m2 + m3)*n3)/c2 + 2*g*(m2 + m3)*(c2*l2*n3 + d2*(-n2 + n3)) - 
        (8*c2*kw2*l2^3*(c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2))/
       (8*l2^2), 0, 0, 0, 0, 0, 0}, 
     {0, ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (n2 - n3))/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3))/(c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(n2 - n3)*
        si)/(4*l2^2), (((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
          (c2^2*l2^2 + (n2 - n3)^2))*si)/(4*c2*l2), 
      (2*g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3)) - 
        (8*c2*kw2*l2^3*(c2*l2*n2 + d1*(n2 - n3)))/(c2^2*l2^2 + (n2 - n3)^2) - 
        (2*g*l2*(m2 + m3)*n3)/c2)/(8*l2^2), 0, 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (n2 - n3))/(4*l2^2), ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) - 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(n2 - n3)*
        si)/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3)*si)/(c2*l2) + 
       (c2^2*kw2*l2^2*si)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((2*g*l2*(m2 + m3)*n3)/c2 + 2*g*(m2 + m3)*(d2*(n2 - n3) - c2*l2*n3) + 
        (8*c2*kw2*l2^3*(c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2))/
       (8*l2^2), 0, 0, 0, 0, 0, 0}, 
     {0, ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (n2 - n3))/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3))/(c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(n2 - n3)*
        si)/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3)*si)/(c2*l2) + 
       (c2^2*kw2*l2^2*si)/(c2^2*l2^2 + (n2 - n3)^2), 
      (2*g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3)) - 
        (8*c2*kw2*l2^3*(c2*l2*n2 + d1*(n2 - n3)))/(c2^2*l2^2 + (n2 - n3)^2) - 
        (2*g*l2*(m2 + m3)*n3)/c2)/(8*l2^2), 0, 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (n2 - n3))/(4*l2^2), ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) - 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(n2 - n3)*
        si)/(4*l2^2), (((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
          (c2^2*l2^2 + (n2 - n3)^2))*si)/(4*c2*l2), 
      ((2*g*l2*(m2 + m3)*n3)/c2 + 2*g*(m2 + m3)*(d2*(n2 - n3) - c2*l2*n3) + 
        (8*c2*kw2*l2^3*(c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2))/
       (8*l2^2), 0, 0, 0, 0, 0, 0}}
 
cxsm = {{-((g*(m1 + m2 + m3))/(c1*l1)), 0, 0, 0, (dtop*g*(m1 + m2 + m3))/
       (c1*l1), 0}, {0, -((g*(m1 + m2 + m3))/(c1*l1)) + 
       (g*(m1 + m2 + m3)*(n0 - n1)^2)/(c1*l1^3) - (2*kw1*(n0 - n1)^2)/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 
      -((dtop*g*(m1 + m2 + m3))/(c1*l1)) + 
       (g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/(c1*l1^3) - 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/
        (c1^2*l1^2 + (n0 - n1)^2)}, 
     {0, 0, ((-1 + c1^2)*g*(m1 + m2 + m3))/(c1*l1) - (2*c1^2*kw1*l1^2)/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0}, 
     {0, 0, 0, -((g*(m1 + m2 + m3)*n0*n1)/(c1*l1)), 0, 0}, 
     {-((d0*g*(m1 + m2 + m3))/(c1*l1)), 0, 0, 0, (d0*dtop*g*(m1 + m2 + m3))/
       (c1*l1), 0}, {0, (d0*g*(m1 + m2 + m3))/(c1*l1) + 
       (g*(m1 + m2 + m3)*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3) - 
       (2*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 
      (g*(m1 + m2 + m3)*(d0*dtop - n0*n1))/(c1*l1) + 
       (g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))*
         (c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3) - 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1^2*l1^2 + (n0 - n1)^2)}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}}
 
allvars = {x1, y1, z1, yaw1, pitch1, roll1, x2, y2, z2, yaw2, pitch2, roll2, 
     x3, y3, z3, yaw3, pitch3, roll3}
 
allvars /: allvars::usage = "allvars is part of the specification of the \
model. It should be a list of the position and angle variables for the \
system. It shouldn't include velocities, or the coordinates of the support \
structure."
 
allfloats = {qul, qur, qlf, qlb, qrf, qrb}
 
allfloats /: allfloats::usage = "allfloats is part of the specification of \
the model. It should be a list of the positions and angles of connections \
where one elastic element is connected directly to another with no mass \
element between."
 
allparams = {x00, y00, z00, yaw00, pitch00, roll00}
 
allparams /: allparams::usage = "allparams is part of the specification of \
the model. It should be a list of the positions and angles describing the \
state of the support structure, plus any other coordinates that are constant \
for the purposes of the normal mode calculation but through which one might \
want to inject a displacement input."
 
velocities = {vx1, vy1, vz1, vyaw1, vpitch1, vroll1, vx2, vy2, vz2, vyaw2, 
     vpitch2, vroll2, vx3, vy3, vz3, vyaw3, vpitch3, vroll3}
 
velocities /: velocities::usage = "velocities is a list of symbols (e.g., \
vx1) for velocities, corresponding to the variables in allvars (cf., x1), \
initialized by makevelocities[]. It was formerly used by tovelocities but is \
now deprecated."
 
flexsubs = {flex1 -> c1^(3/2)*Sqrt[(M11*nw1*Y1)/(g*(m1 + m2 + m3))], 
     flex2 -> c2^(3/2)*Sqrt[(M21*nw2*Y2)/(g*(m2 + m3))], 
     flex3 -> c3^(3/2)*Sqrt[(M31*nw3*Y3)/(g*m3)], m13 -> m1 + m2 + m3, 
     m23 -> m2 + m3, tl1 -> d0 + dtop + c1*l1, tl2 -> d1 + d2 + c2*l2, 
     tl3 -> d3 + d4 + c3*l3, c1 -> Sqrt[l1^2 - (-n0 + n1)^2]/l1, 
     c2 -> Sqrt[l2^2 - (-n2 + n3)^2]/l2, c3 -> Sqrt[l3^2 - (-n4 + n5)^2]/l3, 
     si1 -> (-n0 + n1)/l1, si2 -> (-n2 + n3)/l2, si3 -> (-n4 + n5)/l3, 
     nw1 -> 2, nw2 -> 4, nw3 -> 4}
 
M11 /: M11::usage = "M11 is the moment of area of wires from blades on \
structure to top mass in direction \"1\"."
 
nw1 /: nw1::usage = 
     "nw1 is number of wires from blades on structure to top mass (total)."
 
Y1 /: Y1::usage = 
     "Y1 is Young's modulus of wires from blades on structure to top mass."
 
M21 /: M21::usage = "M21 is the moment of area of wires from blades on top \
mass to optic in direction \"1\""
 
nw2 /: nw2::usage = 
     "nw2 is number of wires from blades on top mass to middle mass (total)."
 
Y2 /: Y2::usage = 
     "Y2 is Young's modulus of wires from blades on top mass to middle mass."
 
nw3 /: nw3::usage = 
     "nw3 is number of wires from blades on middle mass to optic (total)."
 
Y3 /: Y3::usage = 
     "Y3 is Young's modulus of wires from blades on middle mass to optic."
 
tl1 /: tl1::usage = "tl1 is the vertical distance spanned by the upper wires."
 
tl2 /: tl2::usage = "tl2 is the vertical distance spanned by the lower wires."
sm = {{(g*(m1 + m2 + m3))/(c1*l1), 0, 0, 0, 
      -((dtop*g*(m1 + m2 + m3))/(c1*l1)), 0}, 
     {0, (g*(m1 + m2 + m3))/(c1*l1) - (g*(m1 + m2 + m3)*(n0 - n1)^2)/
        (c1*l1^3) + (2*kw1*(n0 - n1)^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 
      (dtop*g*(m1 + m2 + m3))/(c1*l1) - 
       (g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/(c1*l1^3) + 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/
        (c1^2*l1^2 + (n0 - n1)^2)}, 
     {0, 0, -(((-1 + c1^2)*g*(m1 + m2 + m3))/(c1*l1)) + 
       (2*c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0}, 
     {0, 0, 0, (g*(m1 + m2 + m3)*n0*n1)/(c1*l1), 0, 0}, 
     {-((dtop*g*(m1 + m2 + m3))/(c1*l1)), 0, 0, 0, 
      (dtop*g*(dtop + c1*l1)*(m1 + m2 + m3))/(c1*l1), 0}, 
     {0, (dtop*g*(m1 + m2 + m3))/(c1*l1) - 
       (g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/(c1*l1^3) + 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 
      -((g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))^2)/(c1*l1^3)) + 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))^2)/(c1^2*l1^2 + (n0 - n1)^2) + 
       (g*(m1 + m2 + m3)*(dtop^2 + c1*dtop*l1 + n0*n1))/(c1*l1)}}
 
g /: g::usage = "g is local gravity."
 
l1 /: l1::usage = "l1 is part of the specification of the model and \
represents the wire length from the blades on the structure to the top mass. \
It is interpreted as either a stretched length or an unstretched length \
depending on the value of the switch constant unstretched."
 
m1 /: m1::usage = "m1 is mass of top mass."
 
m2 /: m2::usage = "m2 is mass of middle mass."
 
m3 /: m3::usage = "m3 is mass of optic."
 
dtop /: dtop::usage = 
     "dtop is the the height of the wire attachment points below the top \
blades."
 
n0 /: n0::usage = "n0 is the y-direction separation of the wire attachment \
points on the upper blade springs for the wires leading down to the top \
mass."
 
n1 /: n1::usage = "n1 is the y-direction separation of the wire attachment \
points on the top mass for the wires leading down from the upper blade \
springs (on the structure)."
 
kw1 /: kw1::usage = "kw1 is net longitudinal elasticity of wires from blades \
on structure to top mass."
 
qm = {{kbuz - ((-1 + c1^2)*g*(m1 + m2 + m3))/(2*c1*l1) + 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 0, 0}, 
     {0, kbuz - ((-1 + c1^2)*g*(m1 + m2 + m3))/(2*c1*l1) + 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 0}, 
     {0, 0, kblz - ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0}, 
     {0, 0, 0, kblz - ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 0, 0}, 
     {0, 0, 0, 0, kblz - ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 0}, 
     {0, 0, 0, 0, 0, kblz - ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2)}}
 
kbuz /: kbuz::usage = 
     "kbuz is the net vertical elasticity of the upper blades (on \
structure)."
 
kblz /: kblz::usage = 
     "kblz is the net vertical elasticity of the lower blades (on top mass)."
 
l2 /: l2::usage = "l2 is part of the specification of the model and \
represents the wire length from the blades on the top mass to middle mass. It \
is interpreted as either a stretched length or an unstretched length \
depending on the value of the switch constant unstretched."
 
kw2 /: kw2::usage = "kw2 is net longitudinal elasticity of wires from blades \
on top mass to optic."
 
n2 /: n2::usage = "n2 is the y-direction separation of the wire attachment \
points on the lower blade springs for the wires leading down to mass I."
 
n3 /: n3::usage = "n3 is the y-direction separation of the wire attachment \
points on mass I for the wires leading down from the lower blade springs."
 
cqsm = {{0, ((g*(m1 + m2 + m3) - (2*c1*kw1*l1^3)/(c1^2*l1^2 + (n0 - n1)^2))*
        (-n0 + n1))/(2*l1^2), -1/2*((-1 + c1^2)*g*(m1 + m2 + m3))/(c1*l1) + 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 
      (-2*g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1)) + 
        (4*c1*kw1*l1^3*(c1*l1*n0 + dtop*(n0 - n1)))/(c1^2*l1^2 + 
          (n0 - n1)^2) + (2*g*l1*(m1 + m2 + m3)*n1)/c1)/(4*l1^2)}, 
     {0, ((g*(m1 + m2 + m3) - (2*c1*kw1*l1^3)/(c1^2*l1^2 + (n0 - n1)^2))*
        (n0 - n1))/(2*l1^2), -1/2*((-1 + c1^2)*g*(m1 + m2 + m3))/(c1*l1) + 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 
      (2*g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1)) - 
        (4*c1*kw1*l1^3*(c1*l1*n0 + dtop*(n0 - n1)))/(c1^2*l1^2 + 
          (n0 - n1)^2) - (2*g*l1*(m1 + m2 + m3)*n1)/c1)/(4*l1^2)}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}}
 
km = {{m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1z, I1yz, I1zx, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1yz, I1y, I1xy, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1zx, I1xy, I1x, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, m2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, m2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, m2, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2z, I2yz, I2zx, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2yz, I2y, I2xy, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2zx, I2xy, I2x, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3z, I3yz, I3zx}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3yz, I3y, I3xy}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3zx, I3xy, I3x}}
 
I1z /: I1z::usage = "I1z is z-axis MOI of top mass."
 
I1y /: I1y::usage = "I1y is y-axis MOI of top mass."
 
I1x /: I1x::usage = "I1x is x-axis MOI of top mass."
 
I2z /: I2z::usage = "I2z is z-axis MOI of middle mass."
 
I2y /: I2y::usage = "I2y is y-axis MOI of middle mass."
 
I2x /: I2x::usage = "I2x is x-axis MOI of middle mass."
 
I3z /: I3z::usage = "I3z is z-axis MOI of optic."
 
I3y /: I3y::usage = "I3y is y-axis MOI of optic."
 
I3x /: I3x::usage = "I3x is x-axis MOI of optic."
 
xm = {{(g*(m2 + m3))/(c2*l2) + (g*(m1 + m2 + m3))/(c1*l1), 0, 0, 0, 
      -((d1*g*(m2 + m3))/(c2*l2)) + (d0*g*(m1 + m2 + m3))/(c1*l1), 0, 
      -((g*(m2 + m3))/(c2*l2)), 0, 0, 0, -((d2*g*(m2 + m3))/(c2*l2)), 0, 0, 
      0, 0, 0, 0, 0}, {0, (g*(m2 + m3))/(c2*l2) + (g*(m1 + m2 + m3))/
        (c1*l1) - (g*(m1 + m2 + m3)*(n0 - n1)^2)/(c1*l1^3) + 
       (2*kw1*(n0 - n1)^2)/(c1^2*l1^2 + (n0 - n1)^2) - 
       (g*(m2 + m3)*(n2 - n3)^2)/(c2*l2^3) + (4*kw2*(n2 - n3)^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, (d1*g*(m2 + m3))/(c2*l2) - 
       (d0*g*(m1 + m2 + m3))/(c1*l1) - (g*(m1 + m2 + m3)*(n0 - n1)*
         (c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3) + 
       (2*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1^2*l1^2 + (n0 - n1)^2) - (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*
         (n2 - n3))/(c2*l2^3) + (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, -((g*(m2 + m3))/(c2*l2)) + 
       (g*(m2 + m3)*(n2 - n3)^2)/(c2*l2^3) - (4*kw2*(n2 - n3)^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, (d2*g*(m2 + m3))/(c2*l2) + 
       (g*(m2 + m3)*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/(c2*l2^3) - 
       (4*kw2*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 0, 0}, 
     {0, 0, -(((-1 + c2^2)*g*(m2 + m3))/(c2*l2)) + (g*(m1 + m2 + m3))/
        (c1*l1) - (c1*g*(m1 + m2 + m3))/l1 + (2*c1^2*kw1*l1^2)/
        (c1^2*l1^2 + (n0 - n1)^2) + (4*c2^2*kw2*l2^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 0, 
      ((-1 + c2^2)*g*(m2 + m3))/(c2*l2) - (4*c2^2*kw2*l2^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, (g*(m1 + m2 + m3)*n0*n1)/(c1*l1) - 
       (g*(m2 + m3)*(n2 - n3)^2*si^2)/(c2*l2^3) + (4*kw2*(n2 - n3)^2*si^2)/
        (c2^2*l2^2 + (n2 - n3)^2) + (g*(m2 + m3)*(n2*n3 + si^2))/(c2*l2), 0, 
      0, 0, 0, 0, (g*(m2 + m3)*(n2 - n3)^2*si^2)/(c2*l2^3) - 
       (4*kw2*(n2 - n3)^2*si^2)/(c2^2*l2^2 + (n2 - n3)^2) - 
       (g*(m2 + m3)*(n2*n3 + si^2))/(c2*l2), 0, 0, 0, 0, 0, 0, 0, 0}, 
     {-((d1*g*(m2 + m3))/(c2*l2)) + (d0*g*(m1 + m2 + m3))/(c1*l1), 0, 0, 0, 
      (d0*g*(d0 + c1*l1)*(m1 + m2 + m3))/(c1*l1) - (c2*g*(m2 + m3)*si^2)/l2 + 
       (4*c2^2*kw2*l2^2*si^2)/(c2^2*l2^2 + (n2 - n3)^2) + 
       (g*(m2 + m3)*(d1^2 + c2*d1*l2 + si^2))/(c2*l2), 0, 
      (d1*g*(m2 + m3))/(c2*l2), 0, 0, 0, 
      (d1*d2*g*(m2 + m3) + ((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
           (c2^2*l2^2 + (n2 - n3)^2))*si^2)/(c2*l2), 0, 0, 0, 0, 0, 0, 0}, 
     {0, (d1*g*(m2 + m3))/(c2*l2) - (d0*g*(m1 + m2 + m3))/(c1*l1) - 
       (g*(m1 + m2 + m3)*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3) + 
       (2*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1^2*l1^2 + (n0 - n1)^2) - (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*
         (n2 - n3))/(c2*l2^3) + (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 
      (g*(m1 + m2 + m3)*(d0^2 + c1*d0*l1 + n0*n1))/(c1*l1) - 
       (g*(m1 + m2 + m3)*(c1*l1*n1 + d0*(-n0 + n1))^2)/(c1*l1^3) + 
       (2*kw1*(c1*l1*n1 + d0*(-n0 + n1))^2)/(c1^2*l1^2 + (n0 - n1)^2) - 
       (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))^2)/(c2*l2^3) + 
       (4*kw2*(c2*l2*n2 + d1*(n2 - n3))^2)/(c2^2*l2^2 + (n2 - n3)^2) + 
       (g*(m2 + m3)*(d1^2 + c2*d1*l2 + n2*n3))/(c2*l2), 0, 
      -((d1*g*(m2 + m3))/(c2*l2)) + (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*
         (n2 - n3))/(c2*l2^3) - (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 
      (g*(m2 + m3)*(d1*d2 - n2*n3))/(c2*l2) + 
       (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2*l2^3) - (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*
         (c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 
      0, 0}, {-((g*(m2 + m3))/(c2*l2)), 0, 0, 0, (d1*g*(m2 + m3))/(c2*l2), 0, 
      (g*m3)/(c3*l3) + (g*(m2 + m3))/(c2*l2), 0, 0, 0, 
      -((d3*g*m3)/(c3*l3)) + (d2*g*(m2 + m3))/(c2*l2), 0, -((g*m3)/(c3*l3)), 
      0, 0, 0, -((d4*g*m3)/(c3*l3)), 0}, {0, -((g*(m2 + m3))/(c2*l2)) + 
       (g*(m2 + m3)*(n2 - n3)^2)/(c2*l2^3) - (4*kw2*(n2 - n3)^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, -((d1*g*(m2 + m3))/(c2*l2)) + 
       (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/(c2*l2^3) - 
       (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/(c2^2*l2^2 + (n2 - n3)^2), 
      0, (g*m3)/(c3*l3) + (g*(m2 + m3))/(c2*l2) - (g*(m2 + m3)*(n2 - n3)^2)/
        (c2*l2^3) + (4*kw2*(n2 - n3)^2)/(c2^2*l2^2 + (n2 - n3)^2) - 
       (g*m3*(n4 - n5)^2)/(c3*l3^3) + (4*kw3*(n4 - n5)^2)/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0, (d3*g*m3)/(c3*l3) - 
       (d2*g*(m2 + m3))/(c2*l2) - (g*(m2 + m3)*(n2 - n3)*
         (c2*l2*n3 + d2*(-n2 + n3)))/(c2*l2^3) + 
       (4*kw2*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2^2*l2^2 + (n2 - n3)^2) - (g*m3*(c3*l3*n4 + d3*(n4 - n5))*
         (n4 - n5))/(c3*l3^3) + (4*kw3*(c3*l3*n4 + d3*(n4 - n5))*(n4 - n5))/
        (c3^2*l3^2 + (n4 - n5)^2), 0, (c3^2*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 
        g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) - 4*c3*kw3*l3^3*(n4 - n5)^2)/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (d4*g*m3*(l3^2*(n4 - n5)^2 - (n4 - n5)^4) + c3^3*g*l3^3*m3*(n4 - n5)*
         n5 + c3*l3*(n4 - n5)^2*(4*d4*kw3*l3^2 + g*m3*(n4 - n5)*n5) + 
        c3^2*(d4*g*l3^2*m3*(l3^2 - (n4 - n5)^2) + 4*kw3*l3^4*n5*(-n4 + n5)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2))}, 
     {0, 0, ((-1 + c2^2)*g*(m2 + m3))/(c2*l2) - (4*c2^2*kw2*l2^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 0, (g*(m2 + m3))/(c2*l2) - 
       (c2*g*(m2 + m3))/l2 + (g*(m3 - c3^2*m3))/(c3*l3) + 
       (4*c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2) + (4*c3^2*kw3*l3^2)/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0, 0, 0, 
      ((-1 + c3^2)*g*m3)/(c3*l3) - (4*c3^2*kw3*l3^2)/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0}, 
     {0, 0, 0, (g*(m2 + m3)*(n2 - n3)^2*si^2)/(c2*l2^3) - 
       (4*kw2*(n2 - n3)^2*si^2)/(c2^2*l2^2 + (n2 - n3)^2) - 
       (g*(m2 + m3)*(n2*n3 + si^2))/(c2*l2), 0, 0, 0, 0, 0, 
      -((g*(m2 + m3)*(n2 - n3)^2*si^2)/(c2*l2^3)) + (4*kw2*(n2 - n3)^2*si^2)/
        (c2^2*l2^2 + (n2 - n3)^2) + (g*(m2 + m3)*(n2*n3 + si^2))/(c2*l2) - 
       (g*m3*(n4 - n5)^2*sl^2)/(c3*l3^3) + (4*kw3*(n4 - n5)^2*sl^2)/
        (c3^2*l3^2 + (n4 - n5)^2) + (g*m3*(n4*n5 + sl^2))/(c3*l3), 0, 0, 0, 
      0, 0, (-4*c3*kw3*l3^3*(n4 - n5)^2*sl^2 + c3^2*g*l3^2*m3*
         ((n4 - n5)^2*sl^2 - l3^2*(n4*n5 + sl^2)) + g*m3*(n4 - n5)^2*
         ((n4 - n5)^2*sl^2 - l3^2*(n4*n5 + sl^2)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0}, 
     {-((d2*g*(m2 + m3))/(c2*l2)), 0, 0, 0, 
      (d1*d2*g*(m2 + m3) + ((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
           (c2^2*l2^2 + (n2 - n3)^2))*si^2)/(c2*l2), 0, 
      -((d3*g*m3)/(c3*l3)) + (d2*g*(m2 + m3))/(c2*l2), 0, 0, 0, 
      -((c2*g*(m2 + m3)*si^2)/l2) + (4*c2^2*kw2*l2^2*si^2)/
        (c2^2*l2^2 + (n2 - n3)^2) + (g*(m2 + m3)*(d2^2 + c2*d2*l2 + si^2))/
        (c2*l2) - (c3*g*m3*sl^2)/l3 + (4*c3^2*kw3*l3^2*sl^2)/
        (c3^2*l3^2 + (n4 - n5)^2) + (g*m3*(d3^2 + c3*d3*l3 + sl^2))/(c3*l3), 
      0, (d3*g*m3)/(c3*l3), 0, 0, 0, 
      (d3*d4*g*m3 + ((-1 + c3^2)*g*m3 - (4*c3^3*kw3*l3^3)/
           (c3^2*l3^2 + (n4 - n5)^2))*sl^2)/(c3*l3), 0}, 
     {0, (d2*g*(m2 + m3))/(c2*l2) + (g*(m2 + m3)*(n2 - n3)*
         (c2*l2*n3 + d2*(-n2 + n3)))/(c2*l2^3) - 
       (4*kw2*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 
      (g*(m2 + m3)*(d1*d2 - n2*n3))/(c2*l2) + 
       (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2*l2^3) - (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*
         (c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2), 0, 
      (d3*g*m3)/(c3*l3) - (d2*g*(m2 + m3))/(c2*l2) - 
       (g*(m2 + m3)*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/(c2*l2^3) + 
       (4*kw2*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2^2*l2^2 + (n2 - n3)^2) - (g*m3*(c3*l3*n4 + d3*(n4 - n5))*
         (n4 - n5))/(c3*l3^3) + (4*kw3*(c3*l3*n4 + d3*(n4 - n5))*(n4 - n5))/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0, 
      (g*(m2 + m3)*(d2^2 + c2*d2*l2 + n2*n3))/(c2*l2) - 
       (g*(m2 + m3)*(c2*l2*n3 + d2*(-n2 + n3))^2)/(c2*l2^3) + 
       (4*kw2*(c2*l2*n3 + d2*(-n2 + n3))^2)/(c2^2*l2^2 + (n2 - n3)^2) - 
       (g*m3*(c3*l3*n4 + d3*(n4 - n5))^2)/(c3*l3^3) + 
       (4*kw3*(c3*l3*n4 + d3*(n4 - n5))^2)/(c3^2*l3^2 + (n4 - n5)^2) + 
       (g*m3*(d3^2 + c3*d3*l3 + n4*n5))/(c3*l3), 0, 
      (d3*g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) + c3^3*g*l3^3*m3*n4*
         (n4 - n5) + c3*l3*(-4*d3*kw3*l3^2 + g*m3*n4*(n4 - n5))*(n4 - n5)^2 + 
        c3^2*(d3*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 4*kw3*l3^4*n4*(-n4 + n5)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (g*m3*(d3*d4 - n4*n5))/(c3*l3) + (g*m3*(c3*l3*n4 + d3*(n4 - n5))*
         (c3*l3*n5 + d4*(-n4 + n5)))/(c3*l3^3) - 
       (4*kw3*(c3*l3*n4 + d3*(n4 - n5))*(c3*l3*n5 + d4*(-n4 + n5)))/
        (c3^2*l3^2 + (n4 - n5)^2)}, {0, 0, 0, 0, 0, 0, -((g*m3)/(c3*l3)), 0, 
      0, 0, (d3*g*m3)/(c3*l3), 0, (g*m3)/(c3*l3), 0, 0, 0, (d4*g*m3)/(c3*l3), 
      0}, {0, 0, 0, 0, 0, 0, 0, (c3^2*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 
        g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) - 4*c3*kw3*l3^3*(n4 - n5)^2)/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (d3*g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) + c3^3*g*l3^3*m3*n4*
         (n4 - n5) + c3*l3*(-4*d3*kw3*l3^2 + g*m3*n4*(n4 - n5))*(n4 - n5)^2 + 
        c3^2*(d3*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 4*kw3*l3^4*n4*(-n4 + n5)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 
      (c3^2*g*l3^2*m3*(l3^2 - (n4 - n5)^2) + g*m3*(l3^2*(n4 - n5)^2 - 
          (n4 - n5)^4) + 4*c3*kw3*l3^3*(n4 - n5)^2)/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (d4*g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) + c3^3*g*l3^3*m3*n5*
         (-n4 + n5) + c3^2*(d4*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 
          4*kw3*l3^4*(n4 - n5)*n5) - c3*l3*(n4 - n5)^2*(4*d4*kw3*l3^2 + 
          g*m3*(n4 - n5)*n5))/(c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2))}, 
     {0, 0, 0, 0, 0, 0, 0, 0, ((-1 + c3^2)*g*m3)/(c3*l3) - 
       (4*c3^2*kw3*l3^2)/(c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0, 0, 0, 
      (g*(m3 - c3^2*m3))/(c3*l3) + (4*c3^2*kw3*l3^2)/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (-4*c3*kw3*l3^3*(n4 - n5)^2*sl^2 + c3^2*g*l3^2*m3*((n4 - n5)^2*sl^2 - 
          l3^2*(n4*n5 + sl^2)) + g*m3*(n4 - n5)^2*((n4 - n5)^2*sl^2 - 
          l3^2*(n4*n5 + sl^2)))/(c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      0, 0, (4*c3*kw3*l3^3*(n4 - n5)^2*sl^2 + c3^2*g*l3^2*m3*
         (-((n4 - n5)^2*sl^2) + l3^2*(n4*n5 + sl^2)) + 
        g*m3*(-((n4 - n5)^4*sl^2) + l3^2*(n4 - n5)^2*(n4*n5 + sl^2)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0}, 
     {0, 0, 0, 0, 0, 0, -((d4*g*m3)/(c3*l3)), 0, 0, 0, 
      (d3*d4*g*m3 + ((-1 + c3^2)*g*m3 - (4*c3^3*kw3*l3^3)/
           (c3^2*l3^2 + (n4 - n5)^2))*sl^2)/(c3*l3), 0, (d4*g*m3)/(c3*l3), 0, 
      0, 0, (d4^2*g*m3 + c3*d4*g*l3*m3 + (g*(m3 - c3^2*m3) + 
          (4*c3^3*kw3*l3^3)/(c3^2*l3^2 + (n4 - n5)^2))*sl^2)/(c3*l3), 0}, 
     {0, 0, 0, 0, 0, 0, 0, (d4*g*m3*(l3^2*(n4 - n5)^2 - (n4 - n5)^4) + 
        c3^3*g*l3^3*m3*(n4 - n5)*n5 + c3*l3*(n4 - n5)^2*
         (4*d4*kw3*l3^2 + g*m3*(n4 - n5)*n5) + 
        c3^2*(d4*g*l3^2*m3*(l3^2 - (n4 - n5)^2) + 4*kw3*l3^4*n5*(-n4 + n5)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (g*m3*(d3*d4 - n4*n5))/(c3*l3) + (g*m3*(c3*l3*n4 + d3*(n4 - n5))*
         (c3*l3*n5 + d4*(-n4 + n5)))/(c3*l3^3) - 
       (4*kw3*(c3*l3*n4 + d3*(n4 - n5))*(c3*l3*n5 + d4*(-n4 + n5)))/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 
      (d4*g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) + c3^3*g*l3^3*m3*n5*
         (-n4 + n5) + c3^2*(d4*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 
          4*kw3*l3^4*(n4 - n5)*n5) - c3*l3*(n4 - n5)^2*(4*d4*kw3*l3^2 + 
          g*m3*(n4 - n5)*n5))/(c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      d4*g*m3 + (d4^2*g*m3)/(c3*l3) + (g*m3*(n4 - n5)*n5)/(2*c3*l3) + 
       (g*m3*n5^2)/(c3*l3) - (g*m3*n5*(-n4 + n5))/(2*c3*l3) - 
       (g*m3*(c3*l3*n5 + d4*(-n4 + n5))^2)/(c3*l3^3) + 
       (4*kw3*(c3*l3*n5 + d4*(-n4 + n5))^2)/(c3^2*l3^2 + (n4 - n5)^2)}}
 
d1 /: d1::usage = "d1 is the the height of the wire attachment points below \
the COM of mass U for the wires leading down to mass I."
 
d0 /: d0::usage = "d0 is the the height of the wire attachment points above \
the COM of mass U for the wires leading down from the blades on the \
structure."
 
d2 /: d2::usage = "d2 is the height of the wire attachment points above the \
COM of mass I for the wires leading down from the mass U."
 
si /: si::usage = 
     "si is x-direction separation of wires from second top mass to optic."
 
l3 /: l3::usage = "l3 is part of the specification of the model and \
represents the wire (ribbon) length from middle mass to optic. It is \
interpreted as either a stretched length or an unstretched length depending \
on the value of the switch constant unstretched."
 
d3 /: d3::usage = "d3 is the height of the wire attachment points above the \
COM of mass I for the wires leading down from the mass U."
 
cqxm = {{0, ((-(g*(m1 + m2 + m3)) + (2*c1*kw1*l1^3)/(c1^2*l1^2 + 
           (n0 - n1)^2))*(-n0 + n1))/(2*l1^2), 
      ((-1 + c1^2)*g*(m1 + m2 + m3))/(2*c1*l1) - (c1^2*kw1*l1^2)/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, ((-2*g*l1*(m1 + m2 + m3)*n1)/c1 + 
        2*g*(m1 + m2 + m3)*(c1*l1*n1 + d0*(-n0 + n1)) - 
        (4*c1*kw1*l1^3*(c1*l1*n1 + d0*(-n0 + n1)))/(c1^2*l1^2 + (n0 - n1)^2))/
       (4*l1^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((-(g*(m1 + m2 + m3)) + (2*c1*kw1*l1^3)/(c1^2*l1^2 + (n0 - n1)^2))*
        (n0 - n1))/(2*l1^2), ((-1 + c1^2)*g*(m1 + m2 + m3))/(2*c1*l1) - 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 
      ((2*g*l1*(m1 + m2 + m3)*n1)/c1 + 2*g*(m1 + m2 + m3)*
         (d0*(n0 - n1) - c1*l1*n1) + (4*c1*kw1*l1^3*(c1*l1*n1 + 
           d0*(-n0 + n1)))/(c1^2*l1^2 + (n0 - n1)^2))/(4*l1^2), 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3))/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3))/(c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(-n2 + n3)*
        si)/(4*l2^2), (((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
          (c2^2*l2^2 + (n2 - n3)^2))*si)/(4*c2*l2), 
      (-2*g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3)) + 
        (8*c2*kw2*l2^3*(c2*l2*n2 + d1*(n2 - n3)))/(c2^2*l2^2 + (n2 - n3)^2) + 
        (2*g*l2*(m2 + m3)*n3)/c2)/(8*l2^2), 0, 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3))/(4*l2^2), ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) - 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3)*si)/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3)*si)/(c2*l2) + 
       (c2^2*kw2*l2^2*si)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-2*g*l2*(m2 + m3)*n3)/c2 + 2*g*(m2 + m3)*(c2*l2*n3 + d2*(-n2 + n3)) - 
        (8*c2*kw2*l2^3*(c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2))/
       (8*l2^2), 0, 0, 0, 0, 0, 0}, 
     {0, ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3))/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3))/(c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3)*si)/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3)*si)/(c2*l2) + 
       (c2^2*kw2*l2^2*si)/(c2^2*l2^2 + (n2 - n3)^2), 
      (-2*g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3)) + 
        (8*c2*kw2*l2^3*(c2*l2*n2 + d1*(n2 - n3)))/(c2^2*l2^2 + (n2 - n3)^2) + 
        (2*g*l2*(m2 + m3)*n3)/c2)/(8*l2^2), 0, 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3))/(4*l2^2), ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) - 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(-n2 + n3)*
        si)/(4*l2^2), (((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
          (c2^2*l2^2 + (n2 - n3)^2))*si)/(4*c2*l2), 
      ((-2*g*l2*(m2 + m3)*n3)/c2 + 2*g*(m2 + m3)*(c2*l2*n3 + d2*(-n2 + n3)) - 
        (8*c2*kw2*l2^3*(c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2))/
       (8*l2^2), 0, 0, 0, 0, 0, 0}, 
     {0, ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (n2 - n3))/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3))/(c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(n2 - n3)*
        si)/(4*l2^2), (((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
          (c2^2*l2^2 + (n2 - n3)^2))*si)/(4*c2*l2), 
      (2*g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3)) - 
        (8*c2*kw2*l2^3*(c2*l2*n2 + d1*(n2 - n3)))/(c2^2*l2^2 + (n2 - n3)^2) - 
        (2*g*l2*(m2 + m3)*n3)/c2)/(8*l2^2), 0, 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (n2 - n3))/(4*l2^2), ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) - 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(n2 - n3)*
        si)/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3)*si)/(c2*l2) + 
       (c2^2*kw2*l2^2*si)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((2*g*l2*(m2 + m3)*n3)/c2 + 2*g*(m2 + m3)*(d2*(n2 - n3) - c2*l2*n3) + 
        (8*c2*kw2*l2^3*(c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2))/
       (8*l2^2), 0, 0, 0, 0, 0, 0}, 
     {0, ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (n2 - n3))/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3))/(c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(n2 - n3)*
        si)/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3)*si)/(c2*l2) + 
       (c2^2*kw2*l2^2*si)/(c2^2*l2^2 + (n2 - n3)^2), 
      (2*g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3)) - 
        (8*c2*kw2*l2^3*(c2*l2*n2 + d1*(n2 - n3)))/(c2^2*l2^2 + (n2 - n3)^2) - 
        (2*g*l2*(m2 + m3)*n3)/c2)/(8*l2^2), 0, 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (n2 - n3))/(4*l2^2), ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) - 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(n2 - n3)*
        si)/(4*l2^2), (((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
          (c2^2*l2^2 + (n2 - n3)^2))*si)/(4*c2*l2), 
      ((2*g*l2*(m2 + m3)*n3)/c2 + 2*g*(m2 + m3)*(d2*(n2 - n3) - c2*l2*n3) + 
        (8*c2*kw2*l2^3*(c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2))/
       (8*l2^2), 0, 0, 0, 0, 0, 0}}
 
cxsm = {{-((g*(m1 + m2 + m3))/(c1*l1)), 0, 0, 0, (dtop*g*(m1 + m2 + m3))/
       (c1*l1), 0}, {0, -((g*(m1 + m2 + m3))/(c1*l1)) + 
       (g*(m1 + m2 + m3)*(n0 - n1)^2)/(c1*l1^3) - (2*kw1*(n0 - n1)^2)/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 
      -((dtop*g*(m1 + m2 + m3))/(c1*l1)) + 
       (g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/(c1*l1^3) - 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/
        (c1^2*l1^2 + (n0 - n1)^2)}, 
     {0, 0, ((-1 + c1^2)*g*(m1 + m2 + m3))/(c1*l1) - (2*c1^2*kw1*l1^2)/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0}, 
     {0, 0, 0, -((g*(m1 + m2 + m3)*n0*n1)/(c1*l1)), 0, 0}, 
     {-((d0*g*(m1 + m2 + m3))/(c1*l1)), 0, 0, 0, (d0*dtop*g*(m1 + m2 + m3))/
       (c1*l1), 0}, {0, (d0*g*(m1 + m2 + m3))/(c1*l1) + 
       (g*(m1 + m2 + m3)*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3) - 
       (2*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 
      (g*(m1 + m2 + m3)*(d0*dtop - n0*n1))/(c1*l1) + 
       (g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))*
         (c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3) - 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1^2*l1^2 + (n0 - n1)^2)}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}}
 
allvars = {x1, y1, z1, yaw1, pitch1, roll1, x2, y2, z2, yaw2, pitch2, roll2, 
     x3, y3, z3, yaw3, pitch3, roll3}
 
allvars /: allvars::usage = "allvars is part of the specification of the \
model. It should be a list of the position and angle variables for the \
system. It shouldn't include velocities, or the coordinates of the support \
structure."
 
allfloats = {qul, qur, qlf, qlb, qrf, qrb}
 
allfloats /: allfloats::usage = "allfloats is part of the specification of \
the model. It should be a list of the positions and angles of connections \
where one elastic element is connected directly to another with no mass \
element between."
 
allparams = {x00, y00, z00, yaw00, pitch00, roll00}
 
allparams /: allparams::usage = "allparams is part of the specification of \
the model. It should be a list of the positions and angles describing the \
state of the support structure, plus any other coordinates that are constant \
for the purposes of the normal mode calculation but through which one might \
want to inject a displacement input."
 
velocities = {vx1, vy1, vz1, vyaw1, vpitch1, vroll1, vx2, vy2, vz2, vyaw2, 
     vpitch2, vroll2, vx3, vy3, vz3, vyaw3, vpitch3, vroll3}
 
velocities /: velocities::usage = "velocities is a list of symbols (e.g., \
vx1) for velocities, corresponding to the variables in allvars (cf., x1), \
initialized by makevelocities[]. It was formerly used by tovelocities but is \
now deprecated."
 
stdcoeffs = {g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, 
     I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, 
     d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, 
     kw2, kw3, Y1, Y2, Y3, M11, M21, M31}
 
Y1 /: Y1::usage = 
     "Y1 is Young's modulus of wires from blades on structure to top mass."
 
Y2 /: Y2::usage = 
     "Y2 is Young's modulus of wires from blades on top mass to middle mass."
 
Y3 /: Y3::usage = 
     "Y3 is Young's modulus of wires from blades on middle mass to optic."
 
M11 /: M11::usage = "M11 is the moment of area of wires from blades on \
structure to top mass in direction \"1\"."
 
M21 /: M21::usage = "M21 is the moment of area of wires from blades on top \
mass to optic in direction \"1\""
 
flexsubs = {flex1 -> c1^(3/2)*Sqrt[(M11*nw1*Y1)/(g*(m1 + m2 + m3))], 
     flex2 -> c2^(3/2)*Sqrt[(M21*nw2*Y2)/(g*(m2 + m3))], 
     flex3 -> c3^(3/2)*Sqrt[(M31*nw3*Y3)/(g*m3)], m13 -> m1 + m2 + m3, 
     m23 -> m2 + m3, tl1 -> d0 + dtop + c1*l1, tl2 -> d1 + d2 + c2*l2, 
     tl3 -> d3 + d4 + c3*l3, c1 -> Sqrt[l1^2 - (-n0 + n1)^2]/l1, 
     c2 -> Sqrt[l2^2 - (-n2 + n3)^2]/l2, c3 -> Sqrt[l3^2 - (-n4 + n5)^2]/l3, 
     si1 -> (-n0 + n1)/l1, si2 -> (-n2 + n3)/l2, si3 -> (-n4 + n5)/l3, 
     nw1 -> 2, nw2 -> 4, nw3 -> 4}
 
nw1 /: nw1::usage = 
     "nw1 is number of wires from blades on structure to top mass (total)."
 
nw2 /: nw2::usage = 
     "nw2 is number of wires from blades on top mass to middle mass (total)."
 
nw3 /: nw3::usage = 
     "nw3 is number of wires from blades on middle mass to optic (total)."
 
tl1 /: tl1::usage = "tl1 is the vertical distance spanned by the upper wires."
 
tl2 /: tl2::usage = "tl2 is the vertical distance spanned by the lower wires."
sm = {{(g*(m1 + m2 + m3))/(c1*l1), 0, 0, 0, 
      -((dtop*g*(m1 + m2 + m3))/(c1*l1)), 0}, 
     {0, (g*(m1 + m2 + m3))/(c1*l1) - (g*(m1 + m2 + m3)*(n0 - n1)^2)/
        (c1*l1^3) + (2*kw1*(n0 - n1)^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 
      (dtop*g*(m1 + m2 + m3))/(c1*l1) - 
       (g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/(c1*l1^3) + 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/
        (c1^2*l1^2 + (n0 - n1)^2)}, 
     {0, 0, -(((-1 + c1^2)*g*(m1 + m2 + m3))/(c1*l1)) + 
       (2*c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0}, 
     {0, 0, 0, (g*(m1 + m2 + m3)*n0*n1)/(c1*l1), 0, 0}, 
     {-((dtop*g*(m1 + m2 + m3))/(c1*l1)), 0, 0, 0, 
      (dtop*g*(dtop + c1*l1)*(m1 + m2 + m3))/(c1*l1), 0}, 
     {0, (dtop*g*(m1 + m2 + m3))/(c1*l1) - 
       (g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/(c1*l1^3) + 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 
      -((g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))^2)/(c1*l1^3)) + 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))^2)/(c1^2*l1^2 + (n0 - n1)^2) + 
       (g*(m1 + m2 + m3)*(dtop^2 + c1*dtop*l1 + n0*n1))/(c1*l1)}}
 
g /: g::usage = "g is local gravity."
 
l1 /: l1::usage = "l1 is part of the specification of the model and \
represents the wire length from the blades on the structure to the top mass. \
It is interpreted as either a stretched length or an unstretched length \
depending on the value of the switch constant unstretched."
 
m1 /: m1::usage = "m1 is mass of top mass."
 
m2 /: m2::usage = "m2 is mass of middle mass."
 
m3 /: m3::usage = "m3 is mass of optic."
 
dtop /: dtop::usage = 
     "dtop is the the height of the wire attachment points below the top \
blades."
 
n0 /: n0::usage = "n0 is the y-direction separation of the wire attachment \
points on the upper blade springs for the wires leading down to the top \
mass."
 
n1 /: n1::usage = "n1 is the y-direction separation of the wire attachment \
points on the top mass for the wires leading down from the upper blade \
springs (on the structure)."
 
kw1 /: kw1::usage = "kw1 is net longitudinal elasticity of wires from blades \
on structure to top mass."
 
qm = {{kbuz - ((-1 + c1^2)*g*(m1 + m2 + m3))/(2*c1*l1) + 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 0, 0}, 
     {0, kbuz - ((-1 + c1^2)*g*(m1 + m2 + m3))/(2*c1*l1) + 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 0}, 
     {0, 0, kblz - ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0}, 
     {0, 0, 0, kblz - ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 0, 0}, 
     {0, 0, 0, 0, kblz - ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 0}, 
     {0, 0, 0, 0, 0, kblz - ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2)}}
 
kbuz /: kbuz::usage = 
     "kbuz is the net vertical elasticity of the upper blades (on \
structure)."
 
kblz /: kblz::usage = 
     "kblz is the net vertical elasticity of the lower blades (on top mass)."
 
l2 /: l2::usage = "l2 is part of the specification of the model and \
represents the wire length from the blades on the top mass to middle mass. It \
is interpreted as either a stretched length or an unstretched length \
depending on the value of the switch constant unstretched."
 
kw2 /: kw2::usage = "kw2 is net longitudinal elasticity of wires from blades \
on top mass to optic."
 
n2 /: n2::usage = "n2 is the y-direction separation of the wire attachment \
points on the lower blade springs for the wires leading down to mass I."
 
n3 /: n3::usage = "n3 is the y-direction separation of the wire attachment \
points on mass I for the wires leading down from the lower blade springs."
 
cqsm = {{0, ((g*(m1 + m2 + m3) - (2*c1*kw1*l1^3)/(c1^2*l1^2 + (n0 - n1)^2))*
        (-n0 + n1))/(2*l1^2), -1/2*((-1 + c1^2)*g*(m1 + m2 + m3))/(c1*l1) + 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 
      (-2*g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1)) + 
        (4*c1*kw1*l1^3*(c1*l1*n0 + dtop*(n0 - n1)))/(c1^2*l1^2 + 
          (n0 - n1)^2) + (2*g*l1*(m1 + m2 + m3)*n1)/c1)/(4*l1^2)}, 
     {0, ((g*(m1 + m2 + m3) - (2*c1*kw1*l1^3)/(c1^2*l1^2 + (n0 - n1)^2))*
        (n0 - n1))/(2*l1^2), -1/2*((-1 + c1^2)*g*(m1 + m2 + m3))/(c1*l1) + 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 
      (2*g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1)) - 
        (4*c1*kw1*l1^3*(c1*l1*n0 + dtop*(n0 - n1)))/(c1^2*l1^2 + 
          (n0 - n1)^2) - (2*g*l1*(m1 + m2 + m3)*n1)/c1)/(4*l1^2)}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}}
 
km = {{m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1z, I1yz, I1zx, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1yz, I1y, I1xy, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1zx, I1xy, I1x, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, m2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, m2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, m2, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2z, I2yz, I2zx, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2yz, I2y, I2xy, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2zx, I2xy, I2x, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3z, I3yz, I3zx}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3yz, I3y, I3xy}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3zx, I3xy, I3x}}
 
I1z /: I1z::usage = "I1z is z-axis MOI of top mass."
 
I1y /: I1y::usage = "I1y is y-axis MOI of top mass."
 
I1x /: I1x::usage = "I1x is x-axis MOI of top mass."
 
I2z /: I2z::usage = "I2z is z-axis MOI of middle mass."
 
I2y /: I2y::usage = "I2y is y-axis MOI of middle mass."
 
I2x /: I2x::usage = "I2x is x-axis MOI of middle mass."
 
I3z /: I3z::usage = "I3z is z-axis MOI of optic."
 
I3y /: I3y::usage = "I3y is y-axis MOI of optic."
 
I3x /: I3x::usage = "I3x is x-axis MOI of optic."
 
xm = {{(g*(m2 + m3))/(c2*l2) + (g*(m1 + m2 + m3))/(c1*l1), 0, 0, 0, 
      -((d1*g*(m2 + m3))/(c2*l2)) + (d0*g*(m1 + m2 + m3))/(c1*l1), 0, 
      -((g*(m2 + m3))/(c2*l2)), 0, 0, 0, -((d2*g*(m2 + m3))/(c2*l2)), 0, 0, 
      0, 0, 0, 0, 0}, {0, (g*(m2 + m3))/(c2*l2) + (g*(m1 + m2 + m3))/
        (c1*l1) - (g*(m1 + m2 + m3)*(n0 - n1)^2)/(c1*l1^3) + 
       (2*kw1*(n0 - n1)^2)/(c1^2*l1^2 + (n0 - n1)^2) - 
       (g*(m2 + m3)*(n2 - n3)^2)/(c2*l2^3) + (4*kw2*(n2 - n3)^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, (d1*g*(m2 + m3))/(c2*l2) - 
       (d0*g*(m1 + m2 + m3))/(c1*l1) - (g*(m1 + m2 + m3)*(n0 - n1)*
         (c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3) + 
       (2*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1^2*l1^2 + (n0 - n1)^2) - (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*
         (n2 - n3))/(c2*l2^3) + (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, -((g*(m2 + m3))/(c2*l2)) + 
       (g*(m2 + m3)*(n2 - n3)^2)/(c2*l2^3) - (4*kw2*(n2 - n3)^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, (d2*g*(m2 + m3))/(c2*l2) + 
       (g*(m2 + m3)*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/(c2*l2^3) - 
       (4*kw2*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 0, 0}, 
     {0, 0, -(((-1 + c2^2)*g*(m2 + m3))/(c2*l2)) + (g*(m1 + m2 + m3))/
        (c1*l1) - (c1*g*(m1 + m2 + m3))/l1 + (2*c1^2*kw1*l1^2)/
        (c1^2*l1^2 + (n0 - n1)^2) + (4*c2^2*kw2*l2^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 0, 
      ((-1 + c2^2)*g*(m2 + m3))/(c2*l2) - (4*c2^2*kw2*l2^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, (g*(m1 + m2 + m3)*n0*n1)/(c1*l1) - 
       (g*(m2 + m3)*(n2 - n3)^2*si^2)/(c2*l2^3) + (4*kw2*(n2 - n3)^2*si^2)/
        (c2^2*l2^2 + (n2 - n3)^2) + (g*(m2 + m3)*(n2*n3 + si^2))/(c2*l2), 0, 
      0, 0, 0, 0, (g*(m2 + m3)*(n2 - n3)^2*si^2)/(c2*l2^3) - 
       (4*kw2*(n2 - n3)^2*si^2)/(c2^2*l2^2 + (n2 - n3)^2) - 
       (g*(m2 + m3)*(n2*n3 + si^2))/(c2*l2), 0, 0, 0, 0, 0, 0, 0, 0}, 
     {-((d1*g*(m2 + m3))/(c2*l2)) + (d0*g*(m1 + m2 + m3))/(c1*l1), 0, 0, 0, 
      (d0*g*(d0 + c1*l1)*(m1 + m2 + m3))/(c1*l1) - (c2*g*(m2 + m3)*si^2)/l2 + 
       (4*c2^2*kw2*l2^2*si^2)/(c2^2*l2^2 + (n2 - n3)^2) + 
       (g*(m2 + m3)*(d1^2 + c2*d1*l2 + si^2))/(c2*l2), 0, 
      (d1*g*(m2 + m3))/(c2*l2), 0, 0, 0, 
      (d1*d2*g*(m2 + m3) + ((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
           (c2^2*l2^2 + (n2 - n3)^2))*si^2)/(c2*l2), 0, 0, 0, 0, 0, 0, 0}, 
     {0, (d1*g*(m2 + m3))/(c2*l2) - (d0*g*(m1 + m2 + m3))/(c1*l1) - 
       (g*(m1 + m2 + m3)*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3) + 
       (2*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1^2*l1^2 + (n0 - n1)^2) - (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*
         (n2 - n3))/(c2*l2^3) + (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 
      (g*(m1 + m2 + m3)*(d0^2 + c1*d0*l1 + n0*n1))/(c1*l1) - 
       (g*(m1 + m2 + m3)*(c1*l1*n1 + d0*(-n0 + n1))^2)/(c1*l1^3) + 
       (2*kw1*(c1*l1*n1 + d0*(-n0 + n1))^2)/(c1^2*l1^2 + (n0 - n1)^2) - 
       (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))^2)/(c2*l2^3) + 
       (4*kw2*(c2*l2*n2 + d1*(n2 - n3))^2)/(c2^2*l2^2 + (n2 - n3)^2) + 
       (g*(m2 + m3)*(d1^2 + c2*d1*l2 + n2*n3))/(c2*l2), 0, 
      -((d1*g*(m2 + m3))/(c2*l2)) + (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*
         (n2 - n3))/(c2*l2^3) - (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 
      (g*(m2 + m3)*(d1*d2 - n2*n3))/(c2*l2) + 
       (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2*l2^3) - (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*
         (c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 
      0, 0}, {-((g*(m2 + m3))/(c2*l2)), 0, 0, 0, (d1*g*(m2 + m3))/(c2*l2), 0, 
      (g*m3)/(c3*l3) + (g*(m2 + m3))/(c2*l2), 0, 0, 0, 
      -((d3*g*m3)/(c3*l3)) + (d2*g*(m2 + m3))/(c2*l2), 0, -((g*m3)/(c3*l3)), 
      0, 0, 0, -((d4*g*m3)/(c3*l3)), 0}, {0, -((g*(m2 + m3))/(c2*l2)) + 
       (g*(m2 + m3)*(n2 - n3)^2)/(c2*l2^3) - (4*kw2*(n2 - n3)^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, -((d1*g*(m2 + m3))/(c2*l2)) + 
       (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/(c2*l2^3) - 
       (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/(c2^2*l2^2 + (n2 - n3)^2), 
      0, (g*m3)/(c3*l3) + (g*(m2 + m3))/(c2*l2) - (g*(m2 + m3)*(n2 - n3)^2)/
        (c2*l2^3) + (4*kw2*(n2 - n3)^2)/(c2^2*l2^2 + (n2 - n3)^2) - 
       (g*m3*(n4 - n5)^2)/(c3*l3^3) + (4*kw3*(n4 - n5)^2)/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0, (d3*g*m3)/(c3*l3) - 
       (d2*g*(m2 + m3))/(c2*l2) - (g*(m2 + m3)*(n2 - n3)*
         (c2*l2*n3 + d2*(-n2 + n3)))/(c2*l2^3) + 
       (4*kw2*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2^2*l2^2 + (n2 - n3)^2) - (g*m3*(c3*l3*n4 + d3*(n4 - n5))*
         (n4 - n5))/(c3*l3^3) + (4*kw3*(c3*l3*n4 + d3*(n4 - n5))*(n4 - n5))/
        (c3^2*l3^2 + (n4 - n5)^2), 0, (c3^2*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 
        g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) - 4*c3*kw3*l3^3*(n4 - n5)^2)/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (d4*g*m3*(l3^2*(n4 - n5)^2 - (n4 - n5)^4) + c3^3*g*l3^3*m3*(n4 - n5)*
         n5 + c3*l3*(n4 - n5)^2*(4*d4*kw3*l3^2 + g*m3*(n4 - n5)*n5) + 
        c3^2*(d4*g*l3^2*m3*(l3^2 - (n4 - n5)^2) + 4*kw3*l3^4*n5*(-n4 + n5)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2))}, 
     {0, 0, ((-1 + c2^2)*g*(m2 + m3))/(c2*l2) - (4*c2^2*kw2*l2^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 0, (g*(m2 + m3))/(c2*l2) - 
       (c2*g*(m2 + m3))/l2 + (g*(m3 - c3^2*m3))/(c3*l3) + 
       (4*c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2) + (4*c3^2*kw3*l3^2)/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0, 0, 0, 
      ((-1 + c3^2)*g*m3)/(c3*l3) - (4*c3^2*kw3*l3^2)/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0}, 
     {0, 0, 0, (g*(m2 + m3)*(n2 - n3)^2*si^2)/(c2*l2^3) - 
       (4*kw2*(n2 - n3)^2*si^2)/(c2^2*l2^2 + (n2 - n3)^2) - 
       (g*(m2 + m3)*(n2*n3 + si^2))/(c2*l2), 0, 0, 0, 0, 0, 
      -((g*(m2 + m3)*(n2 - n3)^2*si^2)/(c2*l2^3)) + (4*kw2*(n2 - n3)^2*si^2)/
        (c2^2*l2^2 + (n2 - n3)^2) + (g*(m2 + m3)*(n2*n3 + si^2))/(c2*l2) - 
       (g*m3*(n4 - n5)^2*sl^2)/(c3*l3^3) + (4*kw3*(n4 - n5)^2*sl^2)/
        (c3^2*l3^2 + (n4 - n5)^2) + (g*m3*(n4*n5 + sl^2))/(c3*l3), 0, 0, 0, 
      0, 0, (-4*c3*kw3*l3^3*(n4 - n5)^2*sl^2 + c3^2*g*l3^2*m3*
         ((n4 - n5)^2*sl^2 - l3^2*(n4*n5 + sl^2)) + g*m3*(n4 - n5)^2*
         ((n4 - n5)^2*sl^2 - l3^2*(n4*n5 + sl^2)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0}, 
     {-((d2*g*(m2 + m3))/(c2*l2)), 0, 0, 0, 
      (d1*d2*g*(m2 + m3) + ((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
           (c2^2*l2^2 + (n2 - n3)^2))*si^2)/(c2*l2), 0, 
      -((d3*g*m3)/(c3*l3)) + (d2*g*(m2 + m3))/(c2*l2), 0, 0, 0, 
      -((c2*g*(m2 + m3)*si^2)/l2) + (4*c2^2*kw2*l2^2*si^2)/
        (c2^2*l2^2 + (n2 - n3)^2) + (g*(m2 + m3)*(d2^2 + c2*d2*l2 + si^2))/
        (c2*l2) - (c3*g*m3*sl^2)/l3 + (4*c3^2*kw3*l3^2*sl^2)/
        (c3^2*l3^2 + (n4 - n5)^2) + (g*m3*(d3^2 + c3*d3*l3 + sl^2))/(c3*l3), 
      0, (d3*g*m3)/(c3*l3), 0, 0, 0, 
      (d3*d4*g*m3 + ((-1 + c3^2)*g*m3 - (4*c3^3*kw3*l3^3)/
           (c3^2*l3^2 + (n4 - n5)^2))*sl^2)/(c3*l3), 0}, 
     {0, (d2*g*(m2 + m3))/(c2*l2) + (g*(m2 + m3)*(n2 - n3)*
         (c2*l2*n3 + d2*(-n2 + n3)))/(c2*l2^3) - 
       (4*kw2*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 
      (g*(m2 + m3)*(d1*d2 - n2*n3))/(c2*l2) + 
       (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2*l2^3) - (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*
         (c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2), 0, 
      (d3*g*m3)/(c3*l3) - (d2*g*(m2 + m3))/(c2*l2) - 
       (g*(m2 + m3)*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/(c2*l2^3) + 
       (4*kw2*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2^2*l2^2 + (n2 - n3)^2) - (g*m3*(c3*l3*n4 + d3*(n4 - n5))*
         (n4 - n5))/(c3*l3^3) + (4*kw3*(c3*l3*n4 + d3*(n4 - n5))*(n4 - n5))/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0, 
      (g*(m2 + m3)*(d2^2 + c2*d2*l2 + n2*n3))/(c2*l2) - 
       (g*(m2 + m3)*(c2*l2*n3 + d2*(-n2 + n3))^2)/(c2*l2^3) + 
       (4*kw2*(c2*l2*n3 + d2*(-n2 + n3))^2)/(c2^2*l2^2 + (n2 - n3)^2) - 
       (g*m3*(c3*l3*n4 + d3*(n4 - n5))^2)/(c3*l3^3) + 
       (4*kw3*(c3*l3*n4 + d3*(n4 - n5))^2)/(c3^2*l3^2 + (n4 - n5)^2) + 
       (g*m3*(d3^2 + c3*d3*l3 + n4*n5))/(c3*l3), 0, 
      (d3*g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) + c3^3*g*l3^3*m3*n4*
         (n4 - n5) + c3*l3*(-4*d3*kw3*l3^2 + g*m3*n4*(n4 - n5))*(n4 - n5)^2 + 
        c3^2*(d3*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 4*kw3*l3^4*n4*(-n4 + n5)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (g*m3*(d3*d4 - n4*n5))/(c3*l3) + (g*m3*(c3*l3*n4 + d3*(n4 - n5))*
         (c3*l3*n5 + d4*(-n4 + n5)))/(c3*l3^3) - 
       (4*kw3*(c3*l3*n4 + d3*(n4 - n5))*(c3*l3*n5 + d4*(-n4 + n5)))/
        (c3^2*l3^2 + (n4 - n5)^2)}, {0, 0, 0, 0, 0, 0, -((g*m3)/(c3*l3)), 0, 
      0, 0, (d3*g*m3)/(c3*l3), 0, (g*m3)/(c3*l3), 0, 0, 0, (d4*g*m3)/(c3*l3), 
      0}, {0, 0, 0, 0, 0, 0, 0, (c3^2*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 
        g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) - 4*c3*kw3*l3^3*(n4 - n5)^2)/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (d3*g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) + c3^3*g*l3^3*m3*n4*
         (n4 - n5) + c3*l3*(-4*d3*kw3*l3^2 + g*m3*n4*(n4 - n5))*(n4 - n5)^2 + 
        c3^2*(d3*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 4*kw3*l3^4*n4*(-n4 + n5)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 
      (c3^2*g*l3^2*m3*(l3^2 - (n4 - n5)^2) + g*m3*(l3^2*(n4 - n5)^2 - 
          (n4 - n5)^4) + 4*c3*kw3*l3^3*(n4 - n5)^2)/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (d4*g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) + c3^3*g*l3^3*m3*n5*
         (-n4 + n5) + c3^2*(d4*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 
          4*kw3*l3^4*(n4 - n5)*n5) - c3*l3*(n4 - n5)^2*(4*d4*kw3*l3^2 + 
          g*m3*(n4 - n5)*n5))/(c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2))}, 
     {0, 0, 0, 0, 0, 0, 0, 0, ((-1 + c3^2)*g*m3)/(c3*l3) - 
       (4*c3^2*kw3*l3^2)/(c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0, 0, 0, 
      (g*(m3 - c3^2*m3))/(c3*l3) + (4*c3^2*kw3*l3^2)/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (-4*c3*kw3*l3^3*(n4 - n5)^2*sl^2 + c3^2*g*l3^2*m3*((n4 - n5)^2*sl^2 - 
          l3^2*(n4*n5 + sl^2)) + g*m3*(n4 - n5)^2*((n4 - n5)^2*sl^2 - 
          l3^2*(n4*n5 + sl^2)))/(c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      0, 0, (4*c3*kw3*l3^3*(n4 - n5)^2*sl^2 + c3^2*g*l3^2*m3*
         (-((n4 - n5)^2*sl^2) + l3^2*(n4*n5 + sl^2)) + 
        g*m3*(-((n4 - n5)^4*sl^2) + l3^2*(n4 - n5)^2*(n4*n5 + sl^2)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0}, 
     {0, 0, 0, 0, 0, 0, -((d4*g*m3)/(c3*l3)), 0, 0, 0, 
      (d3*d4*g*m3 + ((-1 + c3^2)*g*m3 - (4*c3^3*kw3*l3^3)/
           (c3^2*l3^2 + (n4 - n5)^2))*sl^2)/(c3*l3), 0, (d4*g*m3)/(c3*l3), 0, 
      0, 0, (d4^2*g*m3 + c3*d4*g*l3*m3 + (g*(m3 - c3^2*m3) + 
          (4*c3^3*kw3*l3^3)/(c3^2*l3^2 + (n4 - n5)^2))*sl^2)/(c3*l3), 0}, 
     {0, 0, 0, 0, 0, 0, 0, (d4*g*m3*(l3^2*(n4 - n5)^2 - (n4 - n5)^4) + 
        c3^3*g*l3^3*m3*(n4 - n5)*n5 + c3*l3*(n4 - n5)^2*
         (4*d4*kw3*l3^2 + g*m3*(n4 - n5)*n5) + 
        c3^2*(d4*g*l3^2*m3*(l3^2 - (n4 - n5)^2) + 4*kw3*l3^4*n5*(-n4 + n5)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (g*m3*(d3*d4 - n4*n5))/(c3*l3) + (g*m3*(c3*l3*n4 + d3*(n4 - n5))*
         (c3*l3*n5 + d4*(-n4 + n5)))/(c3*l3^3) - 
       (4*kw3*(c3*l3*n4 + d3*(n4 - n5))*(c3*l3*n5 + d4*(-n4 + n5)))/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 
      (d4*g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) + c3^3*g*l3^3*m3*n5*
         (-n4 + n5) + c3^2*(d4*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 
          4*kw3*l3^4*(n4 - n5)*n5) - c3*l3*(n4 - n5)^2*(4*d4*kw3*l3^2 + 
          g*m3*(n4 - n5)*n5))/(c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      d4*g*m3 + (d4^2*g*m3)/(c3*l3) + (g*m3*(n4 - n5)*n5)/(2*c3*l3) + 
       (g*m3*n5^2)/(c3*l3) - (g*m3*n5*(-n4 + n5))/(2*c3*l3) - 
       (g*m3*(c3*l3*n5 + d4*(-n4 + n5))^2)/(c3*l3^3) + 
       (4*kw3*(c3*l3*n5 + d4*(-n4 + n5))^2)/(c3^2*l3^2 + (n4 - n5)^2)}}
 
d1 /: d1::usage = "d1 is the the height of the wire attachment points below \
the COM of mass U for the wires leading down to mass I."
 
d0 /: d0::usage = "d0 is the the height of the wire attachment points above \
the COM of mass U for the wires leading down from the blades on the \
structure."
 
d2 /: d2::usage = "d2 is the height of the wire attachment points above the \
COM of mass I for the wires leading down from the mass U."
 
si /: si::usage = 
     "si is x-direction separation of wires from second top mass to optic."
 
l3 /: l3::usage = "l3 is part of the specification of the model and \
represents the wire (ribbon) length from middle mass to optic. It is \
interpreted as either a stretched length or an unstretched length depending \
on the value of the switch constant unstretched."
 
d3 /: d3::usage = "d3 is the height of the wire attachment points above the \
COM of mass I for the wires leading down from the mass U."
 
cqxm = {{0, ((-(g*(m1 + m2 + m3)) + (2*c1*kw1*l1^3)/(c1^2*l1^2 + 
           (n0 - n1)^2))*(-n0 + n1))/(2*l1^2), 
      ((-1 + c1^2)*g*(m1 + m2 + m3))/(2*c1*l1) - (c1^2*kw1*l1^2)/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, ((-2*g*l1*(m1 + m2 + m3)*n1)/c1 + 
        2*g*(m1 + m2 + m3)*(c1*l1*n1 + d0*(-n0 + n1)) - 
        (4*c1*kw1*l1^3*(c1*l1*n1 + d0*(-n0 + n1)))/(c1^2*l1^2 + (n0 - n1)^2))/
       (4*l1^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((-(g*(m1 + m2 + m3)) + (2*c1*kw1*l1^3)/(c1^2*l1^2 + (n0 - n1)^2))*
        (n0 - n1))/(2*l1^2), ((-1 + c1^2)*g*(m1 + m2 + m3))/(2*c1*l1) - 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 
      ((2*g*l1*(m1 + m2 + m3)*n1)/c1 + 2*g*(m1 + m2 + m3)*
         (d0*(n0 - n1) - c1*l1*n1) + (4*c1*kw1*l1^3*(c1*l1*n1 + 
           d0*(-n0 + n1)))/(c1^2*l1^2 + (n0 - n1)^2))/(4*l1^2), 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3))/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3))/(c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(-n2 + n3)*
        si)/(4*l2^2), (((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
          (c2^2*l2^2 + (n2 - n3)^2))*si)/(4*c2*l2), 
      (-2*g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3)) + 
        (8*c2*kw2*l2^3*(c2*l2*n2 + d1*(n2 - n3)))/(c2^2*l2^2 + (n2 - n3)^2) + 
        (2*g*l2*(m2 + m3)*n3)/c2)/(8*l2^2), 0, 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3))/(4*l2^2), ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) - 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3)*si)/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3)*si)/(c2*l2) + 
       (c2^2*kw2*l2^2*si)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-2*g*l2*(m2 + m3)*n3)/c2 + 2*g*(m2 + m3)*(c2*l2*n3 + d2*(-n2 + n3)) - 
        (8*c2*kw2*l2^3*(c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2))/
       (8*l2^2), 0, 0, 0, 0, 0, 0}, 
     {0, ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3))/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3))/(c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3)*si)/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3)*si)/(c2*l2) + 
       (c2^2*kw2*l2^2*si)/(c2^2*l2^2 + (n2 - n3)^2), 
      (-2*g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3)) + 
        (8*c2*kw2*l2^3*(c2*l2*n2 + d1*(n2 - n3)))/(c2^2*l2^2 + (n2 - n3)^2) + 
        (2*g*l2*(m2 + m3)*n3)/c2)/(8*l2^2), 0, 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3))/(4*l2^2), ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) - 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(-n2 + n3)*
        si)/(4*l2^2), (((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
          (c2^2*l2^2 + (n2 - n3)^2))*si)/(4*c2*l2), 
      ((-2*g*l2*(m2 + m3)*n3)/c2 + 2*g*(m2 + m3)*(c2*l2*n3 + d2*(-n2 + n3)) - 
        (8*c2*kw2*l2^3*(c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2))/
       (8*l2^2), 0, 0, 0, 0, 0, 0}, 
     {0, ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (n2 - n3))/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3))/(c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(n2 - n3)*
        si)/(4*l2^2), (((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
          (c2^2*l2^2 + (n2 - n3)^2))*si)/(4*c2*l2), 
      (2*g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3)) - 
        (8*c2*kw2*l2^3*(c2*l2*n2 + d1*(n2 - n3)))/(c2^2*l2^2 + (n2 - n3)^2) - 
        (2*g*l2*(m2 + m3)*n3)/c2)/(8*l2^2), 0, 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (n2 - n3))/(4*l2^2), ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) - 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(n2 - n3)*
        si)/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3)*si)/(c2*l2) + 
       (c2^2*kw2*l2^2*si)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((2*g*l2*(m2 + m3)*n3)/c2 + 2*g*(m2 + m3)*(d2*(n2 - n3) - c2*l2*n3) + 
        (8*c2*kw2*l2^3*(c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2))/
       (8*l2^2), 0, 0, 0, 0, 0, 0}, 
     {0, ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (n2 - n3))/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3))/(c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(n2 - n3)*
        si)/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3)*si)/(c2*l2) + 
       (c2^2*kw2*l2^2*si)/(c2^2*l2^2 + (n2 - n3)^2), 
      (2*g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3)) - 
        (8*c2*kw2*l2^3*(c2*l2*n2 + d1*(n2 - n3)))/(c2^2*l2^2 + (n2 - n3)^2) - 
        (2*g*l2*(m2 + m3)*n3)/c2)/(8*l2^2), 0, 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (n2 - n3))/(4*l2^2), ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) - 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(n2 - n3)*
        si)/(4*l2^2), (((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
          (c2^2*l2^2 + (n2 - n3)^2))*si)/(4*c2*l2), 
      ((2*g*l2*(m2 + m3)*n3)/c2 + 2*g*(m2 + m3)*(d2*(n2 - n3) - c2*l2*n3) + 
        (8*c2*kw2*l2^3*(c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2))/
       (8*l2^2), 0, 0, 0, 0, 0, 0}}
 
cxsm = {{-((g*(m1 + m2 + m3))/(c1*l1)), 0, 0, 0, (dtop*g*(m1 + m2 + m3))/
       (c1*l1), 0}, {0, -((g*(m1 + m2 + m3))/(c1*l1)) + 
       (g*(m1 + m2 + m3)*(n0 - n1)^2)/(c1*l1^3) - (2*kw1*(n0 - n1)^2)/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 
      -((dtop*g*(m1 + m2 + m3))/(c1*l1)) + 
       (g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/(c1*l1^3) - 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/
        (c1^2*l1^2 + (n0 - n1)^2)}, 
     {0, 0, ((-1 + c1^2)*g*(m1 + m2 + m3))/(c1*l1) - (2*c1^2*kw1*l1^2)/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0}, 
     {0, 0, 0, -((g*(m1 + m2 + m3)*n0*n1)/(c1*l1)), 0, 0}, 
     {-((d0*g*(m1 + m2 + m3))/(c1*l1)), 0, 0, 0, (d0*dtop*g*(m1 + m2 + m3))/
       (c1*l1), 0}, {0, (d0*g*(m1 + m2 + m3))/(c1*l1) + 
       (g*(m1 + m2 + m3)*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3) - 
       (2*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 
      (g*(m1 + m2 + m3)*(d0*dtop - n0*n1))/(c1*l1) + 
       (g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))*
         (c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3) - 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1^2*l1^2 + (n0 - n1)^2)}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}}
 
allvars = {x1, y1, z1, yaw1, pitch1, roll1, x2, y2, z2, yaw2, pitch2, roll2, 
     x3, y3, z3, yaw3, pitch3, roll3}
 
allvars /: allvars::usage = "allvars is part of the specification of the \
model. It should be a list of the position and angle variables for the \
system. It shouldn't include velocities, or the coordinates of the support \
structure."
 
allfloats = {qul, qur, qlf, qlb, qrf, qrb}
 
allfloats /: allfloats::usage = "allfloats is part of the specification of \
the model. It should be a list of the positions and angles of connections \
where one elastic element is connected directly to another with no mass \
element between."
 
allparams = {x00, y00, z00, yaw00, pitch00, roll00}
 
allparams /: allparams::usage = "allparams is part of the specification of \
the model. It should be a list of the positions and angles describing the \
state of the support structure, plus any other coordinates that are constant \
for the purposes of the normal mode calculation but through which one might \
want to inject a displacement input."
 
velocities = {vx1, vy1, vz1, vyaw1, vpitch1, vroll1, vx2, vy2, vz2, vyaw2, 
     vpitch2, vroll2, vx3, vy3, vz3, vyaw3, vpitch3, vroll3}
 
velocities /: velocities::usage = "velocities is a list of symbols (e.g., \
vx1) for velocities, corresponding to the variables in allvars (cf., x1), \
initialized by makevelocities[]. It was formerly used by tovelocities but is \
now deprecated."
 
stdcoeffs = {g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, 
     I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, 
     d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kblz, l1, l2, l3, kw1, kw2, 
     kw3, Y1, Y2, Y3, M11, M21, M31}
 
Y1 /: Y1::usage = 
     "Y1 is Young's modulus of wires from blades on structure to top mass."
 
Y2 /: Y2::usage = 
     "Y2 is Young's modulus of wires from blades on top mass to middle mass."
 
Y3 /: Y3::usage = 
     "Y3 is Young's modulus of wires from blades on middle mass to optic."
 
M11 /: M11::usage = "M11 is the moment of area of wires from blades on \
structure to top mass in direction \"1\"."
 
M21 /: M21::usage = "M21 is the moment of area of wires from blades on top \
mass to optic in direction \"1\""
 
flexsubs = {flex1 -> c1^(3/2)*Sqrt[(M11*nw1*Y1)/(g*(m1 + m2 + m3))], 
     flex2 -> c2^(3/2)*Sqrt[(M21*nw2*Y2)/(g*(m2 + m3))], 
     flex3 -> c3^(3/2)*Sqrt[(M31*nw3*Y3)/(g*m3)], m13 -> m1 + m2 + m3, 
     m23 -> m2 + m3, tl1 -> d0 + dtop + c1*l1, tl2 -> d1 + d2 + c2*l2, 
     tl3 -> d3 + d4 + c3*l3, c1 -> Sqrt[l1^2 - (-n0 + n1)^2]/l1, 
     c2 -> Sqrt[l2^2 - (-n2 + n3)^2]/l2, c3 -> Sqrt[l3^2 - (-n4 + n5)^2]/l3, 
     si1 -> (-n0 + n1)/l1, si2 -> (-n2 + n3)/l2, si3 -> (-n4 + n5)/l3, 
     nw1 -> 2, nw2 -> 4, nw3 -> 4}
 
nw1 /: nw1::usage = 
     "nw1 is number of wires from blades on structure to top mass (total)."
 
nw2 /: nw2::usage = 
     "nw2 is number of wires from blades on top mass to middle mass (total)."
 
nw3 /: nw3::usage = 
     "nw3 is number of wires from blades on middle mass to optic (total)."
 
tl1 /: tl1::usage = "tl1 is the vertical distance spanned by the upper wires."
 
tl2 /: tl2::usage = "tl2 is the vertical distance spanned by the lower wires."
sm = {{(g*(m1 + m2 + m3))/(c1*l1), 0, 0, 0, 
      -((dtop*g*(m1 + m2 + m3))/(c1*l1)), 0}, 
     {0, (g*(m1 + m2 + m3))/(c1*l1) - (g*(m1 + m2 + m3)*(n0 - n1)^2)/
        (c1*l1^3) + (2*kw1*(n0 - n1)^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 
      (dtop*g*(m1 + m2 + m3))/(c1*l1) - 
       (g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/(c1*l1^3) + 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/
        (c1^2*l1^2 + (n0 - n1)^2)}, 
     {0, 0, -(((-1 + c1^2)*g*(m1 + m2 + m3))/(c1*l1)) + 
       (2*c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0}, 
     {0, 0, 0, (g*(m1 + m2 + m3)*n0*n1)/(c1*l1), 0, 0}, 
     {-((dtop*g*(m1 + m2 + m3))/(c1*l1)), 0, 0, 0, 
      (dtop*g*(dtop + c1*l1)*(m1 + m2 + m3))/(c1*l1), 0}, 
     {0, (dtop*g*(m1 + m2 + m3))/(c1*l1) - 
       (g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/(c1*l1^3) + 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 
      -((g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))^2)/(c1*l1^3)) + 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))^2)/(c1^2*l1^2 + (n0 - n1)^2) + 
       (g*(m1 + m2 + m3)*(dtop^2 + c1*dtop*l1 + n0*n1))/(c1*l1)}}
 
g /: g::usage = "g is local gravity."
 
l1 /: l1::usage = "l1 is part of the specification of the model and \
represents the wire length from the blades on the structure to the top mass. \
It is interpreted as either a stretched length or an unstretched length \
depending on the value of the switch constant unstretched."
 
m1 /: m1::usage = "m1 is mass of top mass."
 
m2 /: m2::usage = "m2 is mass of middle mass."
 
m3 /: m3::usage = "m3 is mass of optic."
 
dtop /: dtop::usage = 
     "dtop is the the height of the wire attachment points below the top \
blades."
 
n0 /: n0::usage = "n0 is the y-direction separation of the wire attachment \
points on the upper blade springs for the wires leading down to the top \
mass."
 
n1 /: n1::usage = "n1 is the y-direction separation of the wire attachment \
points on the top mass for the wires leading down from the upper blade \
springs (on the structure)."
 
kw1 /: kw1::usage = "kw1 is net longitudinal elasticity of wires from blades \
on structure to top mass."
 
qm = {{kbuz - ((-1 + c1^2)*g*(m1 + m2 + m3))/(2*c1*l1) + 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 0, 0}, 
     {0, kbuz - ((-1 + c1^2)*g*(m1 + m2 + m3))/(2*c1*l1) + 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 0}, 
     {0, 0, kblz - ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0}, 
     {0, 0, 0, kblz - ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 0, 0}, 
     {0, 0, 0, 0, kblz - ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 0}, 
     {0, 0, 0, 0, 0, kblz - ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2)}}
 
kbuz /: kbuz::usage = 
     "kbuz is the net vertical elasticity of the upper blades (on \
structure)."
 
kblz /: kblz::usage = 
     "kblz is the net vertical elasticity of the lower blades (on top mass)."
 
l2 /: l2::usage = "l2 is part of the specification of the model and \
represents the wire length from the blades on the top mass to middle mass. It \
is interpreted as either a stretched length or an unstretched length \
depending on the value of the switch constant unstretched."
 
kw2 /: kw2::usage = "kw2 is net longitudinal elasticity of wires from blades \
on top mass to optic."
 
n2 /: n2::usage = "n2 is the y-direction separation of the wire attachment \
points on the lower blade springs for the wires leading down to mass I."
 
n3 /: n3::usage = "n3 is the y-direction separation of the wire attachment \
points on mass I for the wires leading down from the lower blade springs."
 
cqsm = {{0, ((g*(m1 + m2 + m3) - (2*c1*kw1*l1^3)/(c1^2*l1^2 + (n0 - n1)^2))*
        (-n0 + n1))/(2*l1^2), -1/2*((-1 + c1^2)*g*(m1 + m2 + m3))/(c1*l1) + 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 
      (-2*g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1)) + 
        (4*c1*kw1*l1^3*(c1*l1*n0 + dtop*(n0 - n1)))/(c1^2*l1^2 + 
          (n0 - n1)^2) + (2*g*l1*(m1 + m2 + m3)*n1)/c1)/(4*l1^2)}, 
     {0, ((g*(m1 + m2 + m3) - (2*c1*kw1*l1^3)/(c1^2*l1^2 + (n0 - n1)^2))*
        (n0 - n1))/(2*l1^2), -1/2*((-1 + c1^2)*g*(m1 + m2 + m3))/(c1*l1) + 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 
      (2*g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1)) - 
        (4*c1*kw1*l1^3*(c1*l1*n0 + dtop*(n0 - n1)))/(c1^2*l1^2 + 
          (n0 - n1)^2) - (2*g*l1*(m1 + m2 + m3)*n1)/c1)/(4*l1^2)}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}}
 
km = {{m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1z, I1yz, I1zx, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1yz, I1y, I1xy, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1zx, I1xy, I1x, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, m2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, m2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, m2, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2z, I2yz, I2zx, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2yz, I2y, I2xy, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2zx, I2xy, I2x, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3z, I3yz, I3zx}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3yz, I3y, I3xy}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3zx, I3xy, I3x}}
 
I1z /: I1z::usage = "I1z is z-axis MOI of top mass."
 
I1y /: I1y::usage = "I1y is y-axis MOI of top mass."
 
I1x /: I1x::usage = "I1x is x-axis MOI of top mass."
 
I2z /: I2z::usage = "I2z is z-axis MOI of middle mass."
 
I2y /: I2y::usage = "I2y is y-axis MOI of middle mass."
 
I2x /: I2x::usage = "I2x is x-axis MOI of middle mass."
 
I3z /: I3z::usage = "I3z is z-axis MOI of optic."
 
I3y /: I3y::usage = "I3y is y-axis MOI of optic."
 
I3x /: I3x::usage = "I3x is x-axis MOI of optic."
 
xm = {{(g*(m2 + m3))/(c2*l2) + (g*(m1 + m2 + m3))/(c1*l1), 0, 0, 0, 
      -((d1*g*(m2 + m3))/(c2*l2)) + (d0*g*(m1 + m2 + m3))/(c1*l1), 0, 
      -((g*(m2 + m3))/(c2*l2)), 0, 0, 0, -((d2*g*(m2 + m3))/(c2*l2)), 0, 0, 
      0, 0, 0, 0, 0}, {0, (g*(m2 + m3))/(c2*l2) + (g*(m1 + m2 + m3))/
        (c1*l1) - (g*(m1 + m2 + m3)*(n0 - n1)^2)/(c1*l1^3) + 
       (2*kw1*(n0 - n1)^2)/(c1^2*l1^2 + (n0 - n1)^2) - 
       (g*(m2 + m3)*(n2 - n3)^2)/(c2*l2^3) + (4*kw2*(n2 - n3)^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, (d1*g*(m2 + m3))/(c2*l2) - 
       (d0*g*(m1 + m2 + m3))/(c1*l1) - (g*(m1 + m2 + m3)*(n0 - n1)*
         (c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3) + 
       (2*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1^2*l1^2 + (n0 - n1)^2) - (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*
         (n2 - n3))/(c2*l2^3) + (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, -((g*(m2 + m3))/(c2*l2)) + 
       (g*(m2 + m3)*(n2 - n3)^2)/(c2*l2^3) - (4*kw2*(n2 - n3)^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, (d2*g*(m2 + m3))/(c2*l2) + 
       (g*(m2 + m3)*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/(c2*l2^3) - 
       (4*kw2*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 0, 0}, 
     {0, 0, -(((-1 + c2^2)*g*(m2 + m3))/(c2*l2)) + (g*(m1 + m2 + m3))/
        (c1*l1) - (c1*g*(m1 + m2 + m3))/l1 + (2*c1^2*kw1*l1^2)/
        (c1^2*l1^2 + (n0 - n1)^2) + (4*c2^2*kw2*l2^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 0, 
      ((-1 + c2^2)*g*(m2 + m3))/(c2*l2) - (4*c2^2*kw2*l2^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, (g*(m1 + m2 + m3)*n0*n1)/(c1*l1) - 
       (g*(m2 + m3)*(n2 - n3)^2*si^2)/(c2*l2^3) + (4*kw2*(n2 - n3)^2*si^2)/
        (c2^2*l2^2 + (n2 - n3)^2) + (g*(m2 + m3)*(n2*n3 + si^2))/(c2*l2), 0, 
      0, 0, 0, 0, (g*(m2 + m3)*(n2 - n3)^2*si^2)/(c2*l2^3) - 
       (4*kw2*(n2 - n3)^2*si^2)/(c2^2*l2^2 + (n2 - n3)^2) - 
       (g*(m2 + m3)*(n2*n3 + si^2))/(c2*l2), 0, 0, 0, 0, 0, 0, 0, 0}, 
     {-((d1*g*(m2 + m3))/(c2*l2)) + (d0*g*(m1 + m2 + m3))/(c1*l1), 0, 0, 0, 
      (d0*g*(d0 + c1*l1)*(m1 + m2 + m3))/(c1*l1) - (c2*g*(m2 + m3)*si^2)/l2 + 
       (4*c2^2*kw2*l2^2*si^2)/(c2^2*l2^2 + (n2 - n3)^2) + 
       (g*(m2 + m3)*(d1^2 + c2*d1*l2 + si^2))/(c2*l2), 0, 
      (d1*g*(m2 + m3))/(c2*l2), 0, 0, 0, 
      (d1*d2*g*(m2 + m3) + ((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
           (c2^2*l2^2 + (n2 - n3)^2))*si^2)/(c2*l2), 0, 0, 0, 0, 0, 0, 0}, 
     {0, (d1*g*(m2 + m3))/(c2*l2) - (d0*g*(m1 + m2 + m3))/(c1*l1) - 
       (g*(m1 + m2 + m3)*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3) + 
       (2*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1^2*l1^2 + (n0 - n1)^2) - (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*
         (n2 - n3))/(c2*l2^3) + (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 
      (g*(m1 + m2 + m3)*(d0^2 + c1*d0*l1 + n0*n1))/(c1*l1) - 
       (g*(m1 + m2 + m3)*(c1*l1*n1 + d0*(-n0 + n1))^2)/(c1*l1^3) + 
       (2*kw1*(c1*l1*n1 + d0*(-n0 + n1))^2)/(c1^2*l1^2 + (n0 - n1)^2) - 
       (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))^2)/(c2*l2^3) + 
       (4*kw2*(c2*l2*n2 + d1*(n2 - n3))^2)/(c2^2*l2^2 + (n2 - n3)^2) + 
       (g*(m2 + m3)*(d1^2 + c2*d1*l2 + n2*n3))/(c2*l2), 0, 
      -((d1*g*(m2 + m3))/(c2*l2)) + (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*
         (n2 - n3))/(c2*l2^3) - (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 
      (g*(m2 + m3)*(d1*d2 - n2*n3))/(c2*l2) + 
       (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2*l2^3) - (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*
         (c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 
      0, 0}, {-((g*(m2 + m3))/(c2*l2)), 0, 0, 0, (d1*g*(m2 + m3))/(c2*l2), 0, 
      (g*m3)/(c3*l3) + (g*(m2 + m3))/(c2*l2), 0, 0, 0, 
      -((d3*g*m3)/(c3*l3)) + (d2*g*(m2 + m3))/(c2*l2), 0, -((g*m3)/(c3*l3)), 
      0, 0, 0, -((d4*g*m3)/(c3*l3)), 0}, {0, -((g*(m2 + m3))/(c2*l2)) + 
       (g*(m2 + m3)*(n2 - n3)^2)/(c2*l2^3) - (4*kw2*(n2 - n3)^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, -((d1*g*(m2 + m3))/(c2*l2)) + 
       (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/(c2*l2^3) - 
       (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*(n2 - n3))/(c2^2*l2^2 + (n2 - n3)^2), 
      0, (g*m3)/(c3*l3) + (g*(m2 + m3))/(c2*l2) - (g*(m2 + m3)*(n2 - n3)^2)/
        (c2*l2^3) + (4*kw2*(n2 - n3)^2)/(c2^2*l2^2 + (n2 - n3)^2) - 
       (g*m3*(n4 - n5)^2)/(c3*l3^3) + (4*kw3*(n4 - n5)^2)/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0, (d3*g*m3)/(c3*l3) - 
       (d2*g*(m2 + m3))/(c2*l2) - (g*(m2 + m3)*(n2 - n3)*
         (c2*l2*n3 + d2*(-n2 + n3)))/(c2*l2^3) + 
       (4*kw2*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2^2*l2^2 + (n2 - n3)^2) - (g*m3*(c3*l3*n4 + d3*(n4 - n5))*
         (n4 - n5))/(c3*l3^3) + (4*kw3*(c3*l3*n4 + d3*(n4 - n5))*(n4 - n5))/
        (c3^2*l3^2 + (n4 - n5)^2), 0, (c3^2*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 
        g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) - 4*c3*kw3*l3^3*(n4 - n5)^2)/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (d4*g*m3*(l3^2*(n4 - n5)^2 - (n4 - n5)^4) + c3^3*g*l3^3*m3*(n4 - n5)*
         n5 + c3*l3*(n4 - n5)^2*(4*d4*kw3*l3^2 + g*m3*(n4 - n5)*n5) + 
        c3^2*(d4*g*l3^2*m3*(l3^2 - (n4 - n5)^2) + 4*kw3*l3^4*n5*(-n4 + n5)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2))}, 
     {0, 0, ((-1 + c2^2)*g*(m2 + m3))/(c2*l2) - (4*c2^2*kw2*l2^2)/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 0, 0, (g*(m2 + m3))/(c2*l2) - 
       (c2*g*(m2 + m3))/l2 + (g*(m3 - c3^2*m3))/(c3*l3) + 
       (4*c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2) + (4*c3^2*kw3*l3^2)/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0, 0, 0, 
      ((-1 + c3^2)*g*m3)/(c3*l3) - (4*c3^2*kw3*l3^2)/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0}, 
     {0, 0, 0, (g*(m2 + m3)*(n2 - n3)^2*si^2)/(c2*l2^3) - 
       (4*kw2*(n2 - n3)^2*si^2)/(c2^2*l2^2 + (n2 - n3)^2) - 
       (g*(m2 + m3)*(n2*n3 + si^2))/(c2*l2), 0, 0, 0, 0, 0, 
      -((g*(m2 + m3)*(n2 - n3)^2*si^2)/(c2*l2^3)) + (4*kw2*(n2 - n3)^2*si^2)/
        (c2^2*l2^2 + (n2 - n3)^2) + (g*(m2 + m3)*(n2*n3 + si^2))/(c2*l2) - 
       (g*m3*(n4 - n5)^2*sl^2)/(c3*l3^3) + (4*kw3*(n4 - n5)^2*sl^2)/
        (c3^2*l3^2 + (n4 - n5)^2) + (g*m3*(n4*n5 + sl^2))/(c3*l3), 0, 0, 0, 
      0, 0, (-4*c3*kw3*l3^3*(n4 - n5)^2*sl^2 + c3^2*g*l3^2*m3*
         ((n4 - n5)^2*sl^2 - l3^2*(n4*n5 + sl^2)) + g*m3*(n4 - n5)^2*
         ((n4 - n5)^2*sl^2 - l3^2*(n4*n5 + sl^2)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0}, 
     {-((d2*g*(m2 + m3))/(c2*l2)), 0, 0, 0, 
      (d1*d2*g*(m2 + m3) + ((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
           (c2^2*l2^2 + (n2 - n3)^2))*si^2)/(c2*l2), 0, 
      -((d3*g*m3)/(c3*l3)) + (d2*g*(m2 + m3))/(c2*l2), 0, 0, 0, 
      -((c2*g*(m2 + m3)*si^2)/l2) + (4*c2^2*kw2*l2^2*si^2)/
        (c2^2*l2^2 + (n2 - n3)^2) + (g*(m2 + m3)*(d2^2 + c2*d2*l2 + si^2))/
        (c2*l2) - (c3*g*m3*sl^2)/l3 + (4*c3^2*kw3*l3^2*sl^2)/
        (c3^2*l3^2 + (n4 - n5)^2) + (g*m3*(d3^2 + c3*d3*l3 + sl^2))/(c3*l3), 
      0, (d3*g*m3)/(c3*l3), 0, 0, 0, 
      (d3*d4*g*m3 + ((-1 + c3^2)*g*m3 - (4*c3^3*kw3*l3^3)/
           (c3^2*l3^2 + (n4 - n5)^2))*sl^2)/(c3*l3), 0}, 
     {0, (d2*g*(m2 + m3))/(c2*l2) + (g*(m2 + m3)*(n2 - n3)*
         (c2*l2*n3 + d2*(-n2 + n3)))/(c2*l2^3) - 
       (4*kw2*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2^2*l2^2 + (n2 - n3)^2), 0, 0, 0, 
      (g*(m2 + m3)*(d1*d2 - n2*n3))/(c2*l2) + 
       (g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3))*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2*l2^3) - (4*kw2*(c2*l2*n2 + d1*(n2 - n3))*
         (c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2), 0, 
      (d3*g*m3)/(c3*l3) - (d2*g*(m2 + m3))/(c2*l2) - 
       (g*(m2 + m3)*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/(c2*l2^3) + 
       (4*kw2*(n2 - n3)*(c2*l2*n3 + d2*(-n2 + n3)))/
        (c2^2*l2^2 + (n2 - n3)^2) - (g*m3*(c3*l3*n4 + d3*(n4 - n5))*
         (n4 - n5))/(c3*l3^3) + (4*kw3*(c3*l3*n4 + d3*(n4 - n5))*(n4 - n5))/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0, 
      (g*(m2 + m3)*(d2^2 + c2*d2*l2 + n2*n3))/(c2*l2) - 
       (g*(m2 + m3)*(c2*l2*n3 + d2*(-n2 + n3))^2)/(c2*l2^3) + 
       (4*kw2*(c2*l2*n3 + d2*(-n2 + n3))^2)/(c2^2*l2^2 + (n2 - n3)^2) - 
       (g*m3*(c3*l3*n4 + d3*(n4 - n5))^2)/(c3*l3^3) + 
       (4*kw3*(c3*l3*n4 + d3*(n4 - n5))^2)/(c3^2*l3^2 + (n4 - n5)^2) + 
       (g*m3*(d3^2 + c3*d3*l3 + n4*n5))/(c3*l3), 0, 
      (d3*g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) + c3^3*g*l3^3*m3*n4*
         (n4 - n5) + c3*l3*(-4*d3*kw3*l3^2 + g*m3*n4*(n4 - n5))*(n4 - n5)^2 + 
        c3^2*(d3*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 4*kw3*l3^4*n4*(-n4 + n5)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (g*m3*(d3*d4 - n4*n5))/(c3*l3) + (g*m3*(c3*l3*n4 + d3*(n4 - n5))*
         (c3*l3*n5 + d4*(-n4 + n5)))/(c3*l3^3) - 
       (4*kw3*(c3*l3*n4 + d3*(n4 - n5))*(c3*l3*n5 + d4*(-n4 + n5)))/
        (c3^2*l3^2 + (n4 - n5)^2)}, {0, 0, 0, 0, 0, 0, -((g*m3)/(c3*l3)), 0, 
      0, 0, (d3*g*m3)/(c3*l3), 0, (g*m3)/(c3*l3), 0, 0, 0, (d4*g*m3)/(c3*l3), 
      0}, {0, 0, 0, 0, 0, 0, 0, (c3^2*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 
        g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) - 4*c3*kw3*l3^3*(n4 - n5)^2)/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (d3*g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) + c3^3*g*l3^3*m3*n4*
         (n4 - n5) + c3*l3*(-4*d3*kw3*l3^2 + g*m3*n4*(n4 - n5))*(n4 - n5)^2 + 
        c3^2*(d3*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 4*kw3*l3^4*n4*(-n4 + n5)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 
      (c3^2*g*l3^2*m3*(l3^2 - (n4 - n5)^2) + g*m3*(l3^2*(n4 - n5)^2 - 
          (n4 - n5)^4) + 4*c3*kw3*l3^3*(n4 - n5)^2)/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (d4*g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) + c3^3*g*l3^3*m3*n5*
         (-n4 + n5) + c3^2*(d4*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 
          4*kw3*l3^4*(n4 - n5)*n5) - c3*l3*(n4 - n5)^2*(4*d4*kw3*l3^2 + 
          g*m3*(n4 - n5)*n5))/(c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2))}, 
     {0, 0, 0, 0, 0, 0, 0, 0, ((-1 + c3^2)*g*m3)/(c3*l3) - 
       (4*c3^2*kw3*l3^2)/(c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0, 0, 0, 
      (g*(m3 - c3^2*m3))/(c3*l3) + (4*c3^2*kw3*l3^2)/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (-4*c3*kw3*l3^3*(n4 - n5)^2*sl^2 + c3^2*g*l3^2*m3*((n4 - n5)^2*sl^2 - 
          l3^2*(n4*n5 + sl^2)) + g*m3*(n4 - n5)^2*((n4 - n5)^2*sl^2 - 
          l3^2*(n4*n5 + sl^2)))/(c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      0, 0, (4*c3*kw3*l3^3*(n4 - n5)^2*sl^2 + c3^2*g*l3^2*m3*
         (-((n4 - n5)^2*sl^2) + l3^2*(n4*n5 + sl^2)) + 
        g*m3*(-((n4 - n5)^4*sl^2) + l3^2*(n4 - n5)^2*(n4*n5 + sl^2)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0}, 
     {0, 0, 0, 0, 0, 0, -((d4*g*m3)/(c3*l3)), 0, 0, 0, 
      (d3*d4*g*m3 + ((-1 + c3^2)*g*m3 - (4*c3^3*kw3*l3^3)/
           (c3^2*l3^2 + (n4 - n5)^2))*sl^2)/(c3*l3), 0, (d4*g*m3)/(c3*l3), 0, 
      0, 0, (d4^2*g*m3 + c3*d4*g*l3*m3 + (g*(m3 - c3^2*m3) + 
          (4*c3^3*kw3*l3^3)/(c3^2*l3^2 + (n4 - n5)^2))*sl^2)/(c3*l3), 0}, 
     {0, 0, 0, 0, 0, 0, 0, (d4*g*m3*(l3^2*(n4 - n5)^2 - (n4 - n5)^4) + 
        c3^3*g*l3^3*m3*(n4 - n5)*n5 + c3*l3*(n4 - n5)^2*
         (4*d4*kw3*l3^2 + g*m3*(n4 - n5)*n5) + 
        c3^2*(d4*g*l3^2*m3*(l3^2 - (n4 - n5)^2) + 4*kw3*l3^4*n5*(-n4 + n5)))/
       (c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      (g*m3*(d3*d4 - n4*n5))/(c3*l3) + (g*m3*(c3*l3*n4 + d3*(n4 - n5))*
         (c3*l3*n5 + d4*(-n4 + n5)))/(c3*l3^3) - 
       (4*kw3*(c3*l3*n4 + d3*(n4 - n5))*(c3*l3*n5 + d4*(-n4 + n5)))/
        (c3^2*l3^2 + (n4 - n5)^2), 0, 
      (d4*g*m3*(-(l3^2*(n4 - n5)^2) + (n4 - n5)^4) + c3^3*g*l3^3*m3*n5*
         (-n4 + n5) + c3^2*(d4*g*l3^2*m3*(-l3^2 + (n4 - n5)^2) + 
          4*kw3*l3^4*(n4 - n5)*n5) - c3*l3*(n4 - n5)^2*(4*d4*kw3*l3^2 + 
          g*m3*(n4 - n5)*n5))/(c3*l3^3*(c3^2*l3^2 + (n4 - n5)^2)), 0, 0, 0, 
      d4*g*m3 + (d4^2*g*m3)/(c3*l3) + (g*m3*(n4 - n5)*n5)/(2*c3*l3) + 
       (g*m3*n5^2)/(c3*l3) - (g*m3*n5*(-n4 + n5))/(2*c3*l3) - 
       (g*m3*(c3*l3*n5 + d4*(-n4 + n5))^2)/(c3*l3^3) + 
       (4*kw3*(c3*l3*n5 + d4*(-n4 + n5))^2)/(c3^2*l3^2 + (n4 - n5)^2)}}
 
d1 /: d1::usage = "d1 is the the height of the wire attachment points below \
the COM of mass U for the wires leading down to mass I."
 
d0 /: d0::usage = "d0 is the the height of the wire attachment points above \
the COM of mass U for the wires leading down from the blades on the \
structure."
 
d2 /: d2::usage = "d2 is the height of the wire attachment points above the \
COM of mass I for the wires leading down from the mass U."
 
si /: si::usage = 
     "si is x-direction separation of wires from second top mass to optic."
 
l3 /: l3::usage = "l3 is part of the specification of the model and \
represents the wire (ribbon) length from middle mass to optic. It is \
interpreted as either a stretched length or an unstretched length depending \
on the value of the switch constant unstretched."
 
d3 /: d3::usage = "d3 is the height of the wire attachment points above the \
COM of mass I for the wires leading down from the mass U."
 
cqxm = {{0, ((-(g*(m1 + m2 + m3)) + (2*c1*kw1*l1^3)/(c1^2*l1^2 + 
           (n0 - n1)^2))*(-n0 + n1))/(2*l1^2), 
      ((-1 + c1^2)*g*(m1 + m2 + m3))/(2*c1*l1) - (c1^2*kw1*l1^2)/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, ((-2*g*l1*(m1 + m2 + m3)*n1)/c1 + 
        2*g*(m1 + m2 + m3)*(c1*l1*n1 + d0*(-n0 + n1)) - 
        (4*c1*kw1*l1^3*(c1*l1*n1 + d0*(-n0 + n1)))/(c1^2*l1^2 + (n0 - n1)^2))/
       (4*l1^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((-(g*(m1 + m2 + m3)) + (2*c1*kw1*l1^3)/(c1^2*l1^2 + (n0 - n1)^2))*
        (n0 - n1))/(2*l1^2), ((-1 + c1^2)*g*(m1 + m2 + m3))/(2*c1*l1) - 
       (c1^2*kw1*l1^2)/(c1^2*l1^2 + (n0 - n1)^2), 0, 0, 
      ((2*g*l1*(m1 + m2 + m3)*n1)/c1 + 2*g*(m1 + m2 + m3)*
         (d0*(n0 - n1) - c1*l1*n1) + (4*c1*kw1*l1^3*(c1*l1*n1 + 
           d0*(-n0 + n1)))/(c1^2*l1^2 + (n0 - n1)^2))/(4*l1^2), 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3))/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3))/(c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(-n2 + n3)*
        si)/(4*l2^2), (((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
          (c2^2*l2^2 + (n2 - n3)^2))*si)/(4*c2*l2), 
      (-2*g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3)) + 
        (8*c2*kw2*l2^3*(c2*l2*n2 + d1*(n2 - n3)))/(c2^2*l2^2 + (n2 - n3)^2) + 
        (2*g*l2*(m2 + m3)*n3)/c2)/(8*l2^2), 0, 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3))/(4*l2^2), ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) - 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3)*si)/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3)*si)/(c2*l2) + 
       (c2^2*kw2*l2^2*si)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-2*g*l2*(m2 + m3)*n3)/c2 + 2*g*(m2 + m3)*(c2*l2*n3 + d2*(-n2 + n3)) - 
        (8*c2*kw2*l2^3*(c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2))/
       (8*l2^2), 0, 0, 0, 0, 0, 0}, 
     {0, ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3))/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3))/(c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3)*si)/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3)*si)/(c2*l2) + 
       (c2^2*kw2*l2^2*si)/(c2^2*l2^2 + (n2 - n3)^2), 
      (-2*g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3)) + 
        (8*c2*kw2*l2^3*(c2*l2*n2 + d1*(n2 - n3)))/(c2^2*l2^2 + (n2 - n3)^2) + 
        (2*g*l2*(m2 + m3)*n3)/c2)/(8*l2^2), 0, 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (-n2 + n3))/(4*l2^2), ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) - 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(-n2 + n3)*
        si)/(4*l2^2), (((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
          (c2^2*l2^2 + (n2 - n3)^2))*si)/(4*c2*l2), 
      ((-2*g*l2*(m2 + m3)*n3)/c2 + 2*g*(m2 + m3)*(c2*l2*n3 + d2*(-n2 + n3)) - 
        (8*c2*kw2*l2^3*(c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2))/
       (8*l2^2), 0, 0, 0, 0, 0, 0}, 
     {0, ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (n2 - n3))/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3))/(c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(n2 - n3)*
        si)/(4*l2^2), (((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
          (c2^2*l2^2 + (n2 - n3)^2))*si)/(4*c2*l2), 
      (2*g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3)) - 
        (8*c2*kw2*l2^3*(c2*l2*n2 + d1*(n2 - n3)))/(c2^2*l2^2 + (n2 - n3)^2) - 
        (2*g*l2*(m2 + m3)*n3)/c2)/(8*l2^2), 0, 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (n2 - n3))/(4*l2^2), ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) - 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(n2 - n3)*
        si)/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3)*si)/(c2*l2) + 
       (c2^2*kw2*l2^2*si)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((2*g*l2*(m2 + m3)*n3)/c2 + 2*g*(m2 + m3)*(d2*(n2 - n3) - c2*l2*n3) + 
        (8*c2*kw2*l2^3*(c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2))/
       (8*l2^2), 0, 0, 0, 0, 0, 0}, 
     {0, ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (n2 - n3))/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3))/(c2*l2) + 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(n2 - n3)*
        si)/(4*l2^2), -1/4*((-1 + c2^2)*g*(m2 + m3)*si)/(c2*l2) + 
       (c2^2*kw2*l2^2*si)/(c2^2*l2^2 + (n2 - n3)^2), 
      (2*g*(m2 + m3)*(c2*l2*n2 + d1*(n2 - n3)) - 
        (8*c2*kw2*l2^3*(c2*l2*n2 + d1*(n2 - n3)))/(c2^2*l2^2 + (n2 - n3)^2) - 
        (2*g*l2*(m2 + m3)*n3)/c2)/(8*l2^2), 0, 
      ((-(g*(m2 + m3)) + (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*
        (n2 - n3))/(4*l2^2), ((-1 + c2^2)*g*(m2 + m3))/(4*c2*l2) - 
       (c2^2*kw2*l2^2)/(c2^2*l2^2 + (n2 - n3)^2), 
      ((g*(m2 + m3) - (4*c2*kw2*l2^3)/(c2^2*l2^2 + (n2 - n3)^2))*(n2 - n3)*
        si)/(4*l2^2), (((-1 + c2^2)*g*(m2 + m3) - (4*c2^3*kw2*l2^3)/
          (c2^2*l2^2 + (n2 - n3)^2))*si)/(4*c2*l2), 
      ((2*g*l2*(m2 + m3)*n3)/c2 + 2*g*(m2 + m3)*(d2*(n2 - n3) - c2*l2*n3) + 
        (8*c2*kw2*l2^3*(c2*l2*n3 + d2*(-n2 + n3)))/(c2^2*l2^2 + (n2 - n3)^2))/
       (8*l2^2), 0, 0, 0, 0, 0, 0}}
 
cxsm = {{-((g*(m1 + m2 + m3))/(c1*l1)), 0, 0, 0, (dtop*g*(m1 + m2 + m3))/
       (c1*l1), 0}, {0, -((g*(m1 + m2 + m3))/(c1*l1)) + 
       (g*(m1 + m2 + m3)*(n0 - n1)^2)/(c1*l1^3) - (2*kw1*(n0 - n1)^2)/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 
      -((dtop*g*(m1 + m2 + m3))/(c1*l1)) + 
       (g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/(c1*l1^3) - 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))*(n0 - n1))/
        (c1^2*l1^2 + (n0 - n1)^2)}, 
     {0, 0, ((-1 + c1^2)*g*(m1 + m2 + m3))/(c1*l1) - (2*c1^2*kw1*l1^2)/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0}, 
     {0, 0, 0, -((g*(m1 + m2 + m3)*n0*n1)/(c1*l1)), 0, 0}, 
     {-((d0*g*(m1 + m2 + m3))/(c1*l1)), 0, 0, 0, (d0*dtop*g*(m1 + m2 + m3))/
       (c1*l1), 0}, {0, (d0*g*(m1 + m2 + m3))/(c1*l1) + 
       (g*(m1 + m2 + m3)*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3) - 
       (2*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1^2*l1^2 + (n0 - n1)^2), 0, 0, 0, 
      (g*(m1 + m2 + m3)*(d0*dtop - n0*n1))/(c1*l1) + 
       (g*(m1 + m2 + m3)*(c1*l1*n0 + dtop*(n0 - n1))*
         (c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3) - 
       (2*kw1*(c1*l1*n0 + dtop*(n0 - n1))*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1^2*l1^2 + (n0 - n1)^2)}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}}
 
allvars = {x1, y1, z1, yaw1, pitch1, roll1, x2, y2, z2, yaw2, pitch2, roll2, 
     x3, y3, z3, yaw3, pitch3, roll3}
 
allvars /: allvars::usage = "allvars is part of the specification of the \
model. It should be a list of the position and angle variables for the \
system. It shouldn't include velocities, or the coordinates of the support \
structure."
 
allfloats = {qul, qur, qlf, qlb, qrf, qrb}
 
allfloats /: allfloats::usage = "allfloats is part of the specification of \
the model. It should be a list of the positions and angles of connections \
where one elastic element is connected directly to another with no mass \
element between."
 
allparams = {x00, y00, z00, yaw00, pitch00, roll00}
 
allparams /: allparams::usage = "allparams is part of the specification of \
the model. It should be a list of the positions and angles describing the \
state of the support structure, plus any other coordinates that are constant \
for the purposes of the normal mode calculation but through which one might \
want to inject a displacement input."
 
velocities = {vx1, vy1, vz1, vyaw1, vpitch1, vroll1, vx2, vy2, vz2, vyaw2, 
     vpitch2, vroll2, vx3, vy3, vz3, vyaw3, vpitch3, vroll3}
 
velocities /: velocities::usage = "velocities is a list of symbols (e.g., \
vx1) for velocities, corresponding to the variables in allvars (cf., x1), \
initialized by makevelocities[]. It was formerly used by tovelocities but is \
now deprecated."
 
stdcoeffs = {g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, 
     I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, 
     d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kblz, l1, l2, l3, kw1, kw2, 
     kw3, Y1, Y2, Y3, M11, M21, M31}
 
Y1 /: Y1::usage = 
     "Y1 is Young's modulus of wires from blades on structure to top mass."
 
Y2 /: Y2::usage = 
     "Y2 is Young's modulus of wires from blades on top mass to middle mass."
 
Y3 /: Y3::usage = 
     "Y3 is Young's modulus of wires from blades on middle mass to optic."
 
M11 /: M11::usage = "M11 is the moment of area of wires from blades on \
structure to top mass in direction \"1\"."
 
M21 /: M21::usage = "M21 is the moment of area of wires from blades on top \
mass to optic in direction \"1\""
 
flexsubs = {flex1 -> c1^(3/2)*Sqrt[(M11*nw1*Y1)/(g*(m1 + m2 + m3))], 
     flex2 -> c2^(3/2)*Sqrt[(M21*nw2*Y2)/(g*(m2 + m3))], 
     flex3 -> c3^(3/2)*Sqrt[(M31*nw3*Y3)/(g*m3)], m13 -> m1 + m2 + m3, 
     m23 -> m2 + m3, tl1 -> d0 + dtop + c1*l1, tl2 -> d1 + d2 + c2*l2, 
     tl3 -> d3 + d4 + c3*l3, c1 -> Sqrt[l1^2 - (-n0 + n1)^2]/l1, 
     c2 -> Sqrt[l2^2 - (-n2 + n3)^2]/l2, c3 -> Sqrt[l3^2 - (-n4 + n5)^2]/l3, 
     si1 -> (-n0 + n1)/l1, si2 -> (-n2 + n3)/l2, si3 -> (-n4 + n5)/l3, 
     nw1 -> 2, nw2 -> 4, nw3 -> 4}
 
nw1 /: nw1::usage = 
     "nw1 is number of wires from blades on structure to top mass (total)."
 
nw2 /: nw2::usage = 
     "nw2 is number of wires from blades on top mass to middle mass (total)."
 
nw3 /: nw3::usage = 
     "nw3 is number of wires from blades on middle mass to optic (total)."
 
tl1 /: tl1::usage = "tl1 is the vertical distance spanned by the upper wires."
 
tl2 /: tl2::usage = "tl2 is the vertical distance spanned by the lower wires."
