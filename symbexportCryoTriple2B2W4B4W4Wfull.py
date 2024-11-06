# Exported functions from Mathematical suspension model CryoTriple2B2W4B4W4W

import numpy as np
from math import pi,sqrt
import scipy.linalg
import control as ct

# The standard list of positional arguments (not counting Stage2=True), for reference
stdcoeffs = ["g","m1","m2","m3","I1x","I1y","I1z","I1xy","I1yz","I1zx","I2x","I2y","I2z","I2xy","I2yz","I2zx","I3x","I3y","I3z","I3xy","I3yz","I3zx","dtop","d0","d1","d2","d3","d4","n0","n1","n2","n3","n4","n5","si","sl","kbuz","kbiz","kblz","l1","l2","l3","kw1","kw2","kw3","Y1","Y2","Y3","M11","M21","M31"]

# The list of var-type coordinate names, for the masses.
allvars = ["x1","y1","z1","yaw1","pitch1","roll1","x2","y2","z2","yaw2","pitch2","roll2","x3","y3","z3","yaw3","pitch3","roll3"]
# The list of float-type coordinate names, for the blade tips.
allfloats = ["qul","qur","qlf","qlb","qrf","qrb"]
# The list of param-type coordinates, for the structure.
allparams = ["x00","y00","z00","yaw00","pitch00","roll00"]

# The standard input names (structure displacements and mass forces/torques).
inputs = ["x00","y00","z00","yaw00","pitch00","roll00","f_x1","f_y1","f_z1","f_yaw1","f_pitch1","f_roll1","f_x2","f_y2","f_z2","f_yaw2","f_pitch2","f_roll2","f_x3","f_y3","f_z3","f_yaw3","f_pitch3","f_roll3"]
# The standard output names (mass displacements and structure back-reaction forces).
outputs = ["x1","y1","z1","yaw1","pitch1","roll1","x2","y2","z2","yaw2","pitch2","roll2","x3","y3","z3","yaw3","pitch3","roll3","f_x00","f_y00","f_z00","f_yaw00","f_pitch00","f_roll00"]
# The state coordinate names (mass coordinates and velocities).
states = ["x1","y1","z1","yaw1","pitch1","roll1","x2","y2","z2","yaw2","pitch2","roll2","x3","y3","z3","yaw3","pitch3","roll3","v_x1","v_y1","v_z1","v_yaw1","v_pitch1","v_roll1","v_x2","v_y2","v_z2","v_yaw2","v_pitch2","v_roll2","v_x3","v_y3","v_z3","v_yaw3","v_pitch3","v_roll3"]

def sm(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31, stage2=True):
	'''The raw stiffness matrix for coupling between params.'''
	nw1 = 2
	nw2 = 4
	nw3 = 4
	c1 = sqrt(l1**2 - (n1 - n0)**2)/l1
	c2 =  sqrt(l2**2 - (n3 - n2)**2)/l2
	c3 =  sqrt(l3**2 - (n5 - n4)**2)/l3
	flex1 = sqrt(nw1*M11*Y1/(m1 + m2 + m3)/g)*c1**(3/2)
	flex2 = sqrt(nw2*M21*Y2/(m2 + m3)/g)*c2**(3/2)
	flex3 = sqrt(nw3*M31*Y3/m3/g)*c3**(3/2)
	m13 = m1 + m2 + m3
	m23 =  m2 + m3
	tl1 = c1*l1 + dtop + d0
	tl2 = c2*l2 + d1 + d2
	tl3 = c3*l3 + d3 + d4
	si1 = (n1 - n0)/l1
	si2 = (n3 - n2)/l2
	si3 = (n5 - n4)/l3
	if stage2:
		dtop = dtop + flex1
		d0 = d0 + flex1
		d1 = d1 + flex2
		d2 = d2 + flex2
		d3 = d3 + flex3
		d4 = d4 + flex3
		l1 = l1 - 2*flex1/c1
		l2 = l2 - 2*flex2/c2
		l3 = l3 - 2*flex3/c3
		n0 = n0 + si1*flex1/c1
		n1 = n1 - si1*flex1/c1
		n2 = n2 + si2*flex2/c2
		n3 = n3 - si2*flex2/c2
		n4 = n4 + si3*flex3/c3
		n5 = n5 - si3*flex3/c3
	
	return np.array([
		[(g*(m1+m2+m3))/(c1*l1),0,0,0,-((dtop*g*(m1+m2+m3))/(c1*l1)),0],
		[0,(g*(m1+m2+m3))/(c1*l1)-(g*(m1+m2+m3)*(n0-n1)**2)/(c1*l1**3)+(2*kw1*(n0-n1)**2)/(c1**2*l1**2+(n0-n1)**2),0,0,0,(dtop*g*(m1+m2+m3))/(c1*l1)-(g*(m1+m2+m3)*(c1*l1*n0+dtop*(n0-n1))*(n0-n1))/(c1*l1**3)+(2*kw1*(c1*l1*n0+dtop*(n0-n1))*(n0-n1))/(c1**2*l1**2+(n0-n1)**2)],
		[0,0,-(((-1+c1**2)*g*(m1+m2+m3))/(c1*l1))+(2*c1**2*kw1*l1**2)/(c1**2*l1**2+(n0-n1)**2),0,0,0],
		[0,0,0,(g*(m1+m2+m3)*n0*n1)/(c1*l1),0,0],
		[-((dtop*g*(m1+m2+m3))/(c1*l1)),0,0,0,(dtop*g*(dtop+c1*l1)*(m1+m2+m3))/(c1*l1),0],
		[0,(dtop*g*(m1+m2+m3))/(c1*l1)-(g*(m1+m2+m3)*(c1*l1*n0+dtop*(n0-n1))*(n0-n1))/(c1*l1**3)+(2*kw1*(c1*l1*n0+dtop*(n0-n1))*(n0-n1))/(c1**2*l1**2+(n0-n1)**2),0,0,0,-((g*(m1+m2+m3)*(c1*l1*n0+dtop*(n0-n1))**2)/(c1*l1**3))+(2*kw1*(c1*l1*n0+dtop*(n0-n1))**2)/(c1**2*l1**2+(n0-n1)**2)+(g*(m1+m2+m3)*(dtop**2+c1*dtop*l1+n0*n1))/(c1*l1)]
	])

def km(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31, stage2=True):
	'''The mass matrix.'''
	nw1 = 2
	nw2 = 4
	nw3 = 4
	c1 = sqrt(l1**2 - (n1 - n0)**2)/l1
	c2 =  sqrt(l2**2 - (n3 - n2)**2)/l2
	c3 =  sqrt(l3**2 - (n5 - n4)**2)/l3
	flex1 = sqrt(nw1*M11*Y1/(m1 + m2 + m3)/g)*c1**(3/2)
	flex2 = sqrt(nw2*M21*Y2/(m2 + m3)/g)*c2**(3/2)
	flex3 = sqrt(nw3*M31*Y3/m3/g)*c3**(3/2)
	m13 = m1 + m2 + m3
	m23 =  m2 + m3
	tl1 = c1*l1 + dtop + d0
	tl2 = c2*l2 + d1 + d2
	tl3 = c3*l3 + d3 + d4
	si1 = (n1 - n0)/l1
	si2 = (n3 - n2)/l2
	si3 = (n5 - n4)/l3
	if stage2:
		dtop = dtop + flex1
		d0 = d0 + flex1
		d1 = d1 + flex2
		d2 = d2 + flex2
		d3 = d3 + flex3
		d4 = d4 + flex3
		l1 = l1 - 2*flex1/c1
		l2 = l2 - 2*flex2/c2
		l3 = l3 - 2*flex3/c3
		n0 = n0 + si1*flex1/c1
		n1 = n1 - si1*flex1/c1
		n2 = n2 + si2*flex2/c2
		n3 = n3 - si2*flex2/c2
		n4 = n4 + si3*flex3/c3
		n5 = n5 - si3*flex3/c3
	
	return np.array([
		[m1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,m1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,m1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,0,I1z,I1yz,I1zx,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,0,I1yz,I1y,I1xy,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,0,I1zx,I1xy,I1x,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,0,0,0,0,m2,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,m2,0,0,0,0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,m2,0,0,0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,I2z,I2yz,I2zx,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,I2yz,I2y,I2xy,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,I2zx,I2xy,I2x,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,0,0,0,m3,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,m3,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,0,m3,0,0,0],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,I3z,I3yz,I3zx],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,I3yz,I3y,I3xy],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,I3zx,I3xy,I3x]
	])

def xm(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31, stage2=True):
	'''The raw stiffness matrix for coupling between vars.'''
	nw1 = 2
	nw2 = 4
	nw3 = 4
	c1 = sqrt(l1**2 - (n1 - n0)**2)/l1
	c2 =  sqrt(l2**2 - (n3 - n2)**2)/l2
	c3 =  sqrt(l3**2 - (n5 - n4)**2)/l3
	flex1 = sqrt(nw1*M11*Y1/(m1 + m2 + m3)/g)*c1**(3/2)
	flex2 = sqrt(nw2*M21*Y2/(m2 + m3)/g)*c2**(3/2)
	flex3 = sqrt(nw3*M31*Y3/m3/g)*c3**(3/2)
	m13 = m1 + m2 + m3
	m23 =  m2 + m3
	tl1 = c1*l1 + dtop + d0
	tl2 = c2*l2 + d1 + d2
	tl3 = c3*l3 + d3 + d4
	si1 = (n1 - n0)/l1
	si2 = (n3 - n2)/l2
	si3 = (n5 - n4)/l3
	if stage2:
		dtop = dtop + flex1
		d0 = d0 + flex1
		d1 = d1 + flex2
		d2 = d2 + flex2
		d3 = d3 + flex3
		d4 = d4 + flex3
		l1 = l1 - 2*flex1/c1
		l2 = l2 - 2*flex2/c2
		l3 = l3 - 2*flex3/c3
		n0 = n0 + si1*flex1/c1
		n1 = n1 - si1*flex1/c1
		n2 = n2 + si2*flex2/c2
		n3 = n3 - si2*flex2/c2
		n4 = n4 + si3*flex3/c3
		n5 = n5 - si3*flex3/c3
	
	return np.array([
		[(g*(m2+m3))/(c2*l2)+(g*(m1+m2+m3))/(c1*l1),0,0,0,-((d1*g*(m2+m3))/(c2*l2))+(d0*g*(m1+m2+m3))/(c1*l1),0,-((g*(m2+m3))/(c2*l2)),0,0,0,-((d2*g*(m2+m3))/(c2*l2)),0,0,0,0,0,0,0],
		[0,(g*(m2+m3))/(c2*l2)+(g*(m1+m2+m3))/(c1*l1)-(g*(m1+m2+m3)*(n0-n1)**2)/(c1*l1**3)+(2*kw1*(n0-n1)**2)/(c1**2*l1**2+(n0-n1)**2)-(g*(m2+m3)*(n2-n3)**2)/(c2*l2**3)+(4*kw2*(n2-n3)**2)/(c2**2*l2**2+(n2-n3)**2),0,0,0,(d1*g*(m2+m3))/(c2*l2)-(d0*g*(m1+m2+m3))/(c1*l1)-(g*(m1+m2+m3)*(n0-n1)*(c1*l1*n1+d0*(-n0+n1)))/(c1*l1**3)+(2*kw1*(n0-n1)*(c1*l1*n1+d0*(-n0+n1)))/(c1**2*l1**2+(n0-n1)**2)-(g*(m2+m3)*(c2*l2*n2+d1*(n2-n3))*(n2-n3))/(c2*l2**3)+(4*kw2*(c2*l2*n2+d1*(n2-n3))*(n2-n3))/(c2**2*l2**2+(n2-n3)**2),0,-((g*(m2+m3))/(c2*l2))+(g*(m2+m3)*(n2-n3)**2)/(c2*l2**3)-(4*kw2*(n2-n3)**2)/(c2**2*l2**2+(n2-n3)**2),0,0,0,(d2*g*(m2+m3))/(c2*l2)+(g*(m2+m3)*(n2-n3)*(c2*l2*n3+d2*(-n2+n3)))/(c2*l2**3)-(4*kw2*(n2-n3)*(c2*l2*n3+d2*(-n2+n3)))/(c2**2*l2**2+(n2-n3)**2),0,0,0,0,0,0],
		[0,0,-(((-1+c2**2)*g*(m2+m3))/(c2*l2))+(g*(m1+m2+m3))/(c1*l1)-(c1*g*(m1+m2+m3))/l1+(2*c1**2*kw1*l1**2)/(c1**2*l1**2+(n0-n1)**2)+(4*c2**2*kw2*l2**2)/(c2**2*l2**2+(n2-n3)**2),0,0,0,0,0,((-1+c2**2)*g*(m2+m3))/(c2*l2)-(4*c2**2*kw2*l2**2)/(c2**2*l2**2+(n2-n3)**2),0,0,0,0,0,0,0,0,0],
		[0,0,0,(g*(m1+m2+m3)*n0*n1)/(c1*l1)-(g*(m2+m3)*(n2-n3)**2*si**2)/(c2*l2**3)+(4*kw2*(n2-n3)**2*si**2)/(c2**2*l2**2+(n2-n3)**2)+(g*(m2+m3)*(n2*n3+si**2))/(c2*l2),0,0,0,0,0,(g*(m2+m3)*(n2-n3)**2*si**2)/(c2*l2**3)-(4*kw2*(n2-n3)**2*si**2)/(c2**2*l2**2+(n2-n3)**2)-(g*(m2+m3)*(n2*n3+si**2))/(c2*l2),0,0,0,0,0,0,0,0],
		[-((d1*g*(m2+m3))/(c2*l2))+(d0*g*(m1+m2+m3))/(c1*l1),0,0,0,(d0*g*(d0+c1*l1)*(m1+m2+m3))/(c1*l1)-(c2*g*(m2+m3)*si**2)/l2+(4*c2**2*kw2*l2**2*si**2)/(c2**2*l2**2+(n2-n3)**2)+(g*(m2+m3)*(d1**2+c2*d1*l2+si**2))/(c2*l2),0,(d1*g*(m2+m3))/(c2*l2),0,0,0,(d1*d2*g*(m2+m3)+((-1+c2**2)*g*(m2+m3)-(4*c2**3*kw2*l2**3)/(c2**2*l2**2+(n2-n3)**2))*si**2)/(c2*l2),0,0,0,0,0,0,0],
		[0,(d1*g*(m2+m3))/(c2*l2)-(d0*g*(m1+m2+m3))/(c1*l1)-(g*(m1+m2+m3)*(n0-n1)*(c1*l1*n1+d0*(-n0+n1)))/(c1*l1**3)+(2*kw1*(n0-n1)*(c1*l1*n1+d0*(-n0+n1)))/(c1**2*l1**2+(n0-n1)**2)-(g*(m2+m3)*(c2*l2*n2+d1*(n2-n3))*(n2-n3))/(c2*l2**3)+(4*kw2*(c2*l2*n2+d1*(n2-n3))*(n2-n3))/(c2**2*l2**2+(n2-n3)**2),0,0,0,(g*(m1+m2+m3)*(d0**2+c1*d0*l1+n0*n1))/(c1*l1)-(g*(m1+m2+m3)*(c1*l1*n1+d0*(-n0+n1))**2)/(c1*l1**3)+(2*kw1*(c1*l1*n1+d0*(-n0+n1))**2)/(c1**2*l1**2+(n0-n1)**2)-(g*(m2+m3)*(c2*l2*n2+d1*(n2-n3))**2)/(c2*l2**3)+(4*kw2*(c2*l2*n2+d1*(n2-n3))**2)/(c2**2*l2**2+(n2-n3)**2)+(g*(m2+m3)*(d1**2+c2*d1*l2+n2*n3))/(c2*l2),0,-((d1*g*(m2+m3))/(c2*l2))+(g*(m2+m3)*(c2*l2*n2+d1*(n2-n3))*(n2-n3))/(c2*l2**3)-(4*kw2*(c2*l2*n2+d1*(n2-n3))*(n2-n3))/(c2**2*l2**2+(n2-n3)**2),0,0,0,(g*(m2+m3)*(d1*d2-n2*n3))/(c2*l2)+(g*(m2+m3)*(c2*l2*n2+d1*(n2-n3))*(c2*l2*n3+d2*(-n2+n3)))/(c2*l2**3)-(4*kw2*(c2*l2*n2+d1*(n2-n3))*(c2*l2*n3+d2*(-n2+n3)))/(c2**2*l2**2+(n2-n3)**2),0,0,0,0,0,0],
		[-((g*(m2+m3))/(c2*l2)),0,0,0,(d1*g*(m2+m3))/(c2*l2),0,(g*m3)/(c3*l3)+(g*(m2+m3))/(c2*l2),0,0,0,-((d3*g*m3)/(c3*l3))+(d2*g*(m2+m3))/(c2*l2),0,-((g*m3)/(c3*l3)),0,0,0,-((d4*g*m3)/(c3*l3)),0],
		[0,-((g*(m2+m3))/(c2*l2))+(g*(m2+m3)*(n2-n3)**2)/(c2*l2**3)-(4*kw2*(n2-n3)**2)/(c2**2*l2**2+(n2-n3)**2),0,0,0,-((d1*g*(m2+m3))/(c2*l2))+(g*(m2+m3)*(c2*l2*n2+d1*(n2-n3))*(n2-n3))/(c2*l2**3)-(4*kw2*(c2*l2*n2+d1*(n2-n3))*(n2-n3))/(c2**2*l2**2+(n2-n3)**2),0,(g*m3)/(c3*l3)+(g*(m2+m3))/(c2*l2)-(g*(m2+m3)*(n2-n3)**2)/(c2*l2**3)+(4*kw2*(n2-n3)**2)/(c2**2*l2**2+(n2-n3)**2)-(g*m3*(n4-n5)**2)/(c3*l3**3)+(4*kw3*(n4-n5)**2)/(c3**2*l3**2+(n4-n5)**2),0,0,0,(d3*g*m3)/(c3*l3)-(d2*g*(m2+m3))/(c2*l2)-(g*(m2+m3)*(n2-n3)*(c2*l2*n3+d2*(-n2+n3)))/(c2*l2**3)+(4*kw2*(n2-n3)*(c2*l2*n3+d2*(-n2+n3)))/(c2**2*l2**2+(n2-n3)**2)-(g*m3*(c3*l3*n4+d3*(n4-n5))*(n4-n5))/(c3*l3**3)+(4*kw3*(c3*l3*n4+d3*(n4-n5))*(n4-n5))/(c3**2*l3**2+(n4-n5)**2),0,(c3**2*g*l3**2*m3*(-l3**2+(n4-n5)**2)+g*m3*(-(l3**2*(n4-n5)**2)+(n4-n5)**4)-4*c3*kw3*l3**3*(n4-n5)**2)/(c3*l3**3*(c3**2*l3**2+(n4-n5)**2)),0,0,0,(d4*g*m3*(l3**2*(n4-n5)**2-(n4-n5)**4)+c3**3*g*l3**3*m3*(n4-n5)*n5+c3*l3*(n4-n5)**2*(4*d4*kw3*l3**2+g*m3*(n4-n5)*n5)+c3**2*(d4*g*l3**2*m3*(l3**2-(n4-n5)**2)+4*kw3*l3**4*n5*(-n4+n5)))/(c3*l3**3*(c3**2*l3**2+(n4-n5)**2))],
		[0,0,((-1+c2**2)*g*(m2+m3))/(c2*l2)-(4*c2**2*kw2*l2**2)/(c2**2*l2**2+(n2-n3)**2),0,0,0,0,0,(g*(m2+m3))/(c2*l2)-(c2*g*(m2+m3))/l2+(g*(m3-c3**2*m3))/(c3*l3)+(4*c2**2*kw2*l2**2)/(c2**2*l2**2+(n2-n3)**2)+(4*c3**2*kw3*l3**2)/(c3**2*l3**2+(n4-n5)**2),0,0,0,0,0,((-1+c3**2)*g*m3)/(c3*l3)-(4*c3**2*kw3*l3**2)/(c3**2*l3**2+(n4-n5)**2),0,0,0],
		[0,0,0,(g*(m2+m3)*(n2-n3)**2*si**2)/(c2*l2**3)-(4*kw2*(n2-n3)**2*si**2)/(c2**2*l2**2+(n2-n3)**2)-(g*(m2+m3)*(n2*n3+si**2))/(c2*l2),0,0,0,0,0,-((g*(m2+m3)*(n2-n3)**2*si**2)/(c2*l2**3))+(4*kw2*(n2-n3)**2*si**2)/(c2**2*l2**2+(n2-n3)**2)+(g*(m2+m3)*(n2*n3+si**2))/(c2*l2)-(g*m3*(n4-n5)**2*sl**2)/(c3*l3**3)+(4*kw3*(n4-n5)**2*sl**2)/(c3**2*l3**2+(n4-n5)**2)+(g*m3*(n4*n5+sl**2))/(c3*l3),0,0,0,0,0,(-4*c3*kw3*l3**3*(n4-n5)**2*sl**2+c3**2*g*l3**2*m3*((n4-n5)**2*sl**2-l3**2*(n4*n5+sl**2))+g*m3*(n4-n5)**2*((n4-n5)**2*sl**2-l3**2*(n4*n5+sl**2)))/(c3*l3**3*(c3**2*l3**2+(n4-n5)**2)),0,0],
		[-((d2*g*(m2+m3))/(c2*l2)),0,0,0,(d1*d2*g*(m2+m3)+((-1+c2**2)*g*(m2+m3)-(4*c2**3*kw2*l2**3)/(c2**2*l2**2+(n2-n3)**2))*si**2)/(c2*l2),0,-((d3*g*m3)/(c3*l3))+(d2*g*(m2+m3))/(c2*l2),0,0,0,-((c2*g*(m2+m3)*si**2)/l2)+(4*c2**2*kw2*l2**2*si**2)/(c2**2*l2**2+(n2-n3)**2)+(g*(m2+m3)*(d2**2+c2*d2*l2+si**2))/(c2*l2)-(c3*g*m3*sl**2)/l3+(4*c3**2*kw3*l3**2*sl**2)/(c3**2*l3**2+(n4-n5)**2)+(g*m3*(d3**2+c3*d3*l3+sl**2))/(c3*l3),0,(d3*g*m3)/(c3*l3),0,0,0,(d3*d4*g*m3+((-1+c3**2)*g*m3-(4*c3**3*kw3*l3**3)/(c3**2*l3**2+(n4-n5)**2))*sl**2)/(c3*l3),0],
		[0,(d2*g*(m2+m3))/(c2*l2)+(g*(m2+m3)*(n2-n3)*(c2*l2*n3+d2*(-n2+n3)))/(c2*l2**3)-(4*kw2*(n2-n3)*(c2*l2*n3+d2*(-n2+n3)))/(c2**2*l2**2+(n2-n3)**2),0,0,0,(g*(m2+m3)*(d1*d2-n2*n3))/(c2*l2)+(g*(m2+m3)*(c2*l2*n2+d1*(n2-n3))*(c2*l2*n3+d2*(-n2+n3)))/(c2*l2**3)-(4*kw2*(c2*l2*n2+d1*(n2-n3))*(c2*l2*n3+d2*(-n2+n3)))/(c2**2*l2**2+(n2-n3)**2),0,(d3*g*m3)/(c3*l3)-(d2*g*(m2+m3))/(c2*l2)-(g*(m2+m3)*(n2-n3)*(c2*l2*n3+d2*(-n2+n3)))/(c2*l2**3)+(4*kw2*(n2-n3)*(c2*l2*n3+d2*(-n2+n3)))/(c2**2*l2**2+(n2-n3)**2)-(g*m3*(c3*l3*n4+d3*(n4-n5))*(n4-n5))/(c3*l3**3)+(4*kw3*(c3*l3*n4+d3*(n4-n5))*(n4-n5))/(c3**2*l3**2+(n4-n5)**2),0,0,0,(g*(m2+m3)*(d2**2+c2*d2*l2+n2*n3))/(c2*l2)-(g*(m2+m3)*(c2*l2*n3+d2*(-n2+n3))**2)/(c2*l2**3)+(4*kw2*(c2*l2*n3+d2*(-n2+n3))**2)/(c2**2*l2**2+(n2-n3)**2)-(g*m3*(c3*l3*n4+d3*(n4-n5))**2)/(c3*l3**3)+(4*kw3*(c3*l3*n4+d3*(n4-n5))**2)/(c3**2*l3**2+(n4-n5)**2)+(g*m3*(d3**2+c3*d3*l3+n4*n5))/(c3*l3),0,(d3*g*m3*(-(l3**2*(n4-n5)**2)+(n4-n5)**4)+c3**3*g*l3**3*m3*n4*(n4-n5)+c3*l3*(-4*d3*kw3*l3**2+g*m3*n4*(n4-n5))*(n4-n5)**2+c3**2*(d3*g*l3**2*m3*(-l3**2+(n4-n5)**2)+4*kw3*l3**4*n4*(-n4+n5)))/(c3*l3**3*(c3**2*l3**2+(n4-n5)**2)),0,0,0,(g*m3*(d3*d4-n4*n5))/(c3*l3)+(g*m3*(c3*l3*n4+d3*(n4-n5))*(c3*l3*n5+d4*(-n4+n5)))/(c3*l3**3)-(4*kw3*(c3*l3*n4+d3*(n4-n5))*(c3*l3*n5+d4*(-n4+n5)))/(c3**2*l3**2+(n4-n5)**2)],
		[0,0,0,0,0,0,-((g*m3)/(c3*l3)),0,0,0,(d3*g*m3)/(c3*l3),0,(g*m3)/(c3*l3),0,0,0,(d4*g*m3)/(c3*l3),0],
		[0,0,0,0,0,0,0,(c3**2*g*l3**2*m3*(-l3**2+(n4-n5)**2)+g*m3*(-(l3**2*(n4-n5)**2)+(n4-n5)**4)-4*c3*kw3*l3**3*(n4-n5)**2)/(c3*l3**3*(c3**2*l3**2+(n4-n5)**2)),0,0,0,(d3*g*m3*(-(l3**2*(n4-n5)**2)+(n4-n5)**4)+c3**3*g*l3**3*m3*n4*(n4-n5)+c3*l3*(-4*d3*kw3*l3**2+g*m3*n4*(n4-n5))*(n4-n5)**2+c3**2*(d3*g*l3**2*m3*(-l3**2+(n4-n5)**2)+4*kw3*l3**4*n4*(-n4+n5)))/(c3*l3**3*(c3**2*l3**2+(n4-n5)**2)),0,(c3**2*g*l3**2*m3*(l3**2-(n4-n5)**2)+g*m3*(l3**2*(n4-n5)**2-(n4-n5)**4)+4*c3*kw3*l3**3*(n4-n5)**2)/(c3*l3**3*(c3**2*l3**2+(n4-n5)**2)),0,0,0,(d4*g*m3*(-(l3**2*(n4-n5)**2)+(n4-n5)**4)+c3**3*g*l3**3*m3*n5*(-n4+n5)+c3**2*(d4*g*l3**2*m3*(-l3**2+(n4-n5)**2)+4*kw3*l3**4*(n4-n5)*n5)-c3*l3*(n4-n5)**2*(4*d4*kw3*l3**2+g*m3*(n4-n5)*n5))/(c3*l3**3*(c3**2*l3**2+(n4-n5)**2))],
		[0,0,0,0,0,0,0,0,((-1+c3**2)*g*m3)/(c3*l3)-(4*c3**2*kw3*l3**2)/(c3**2*l3**2+(n4-n5)**2),0,0,0,0,0,(g*(m3-c3**2*m3))/(c3*l3)+(4*c3**2*kw3*l3**2)/(c3**2*l3**2+(n4-n5)**2),0,0,0],
		[0,0,0,0,0,0,0,0,0,(-4*c3*kw3*l3**3*(n4-n5)**2*sl**2+c3**2*g*l3**2*m3*((n4-n5)**2*sl**2-l3**2*(n4*n5+sl**2))+g*m3*(n4-n5)**2*((n4-n5)**2*sl**2-l3**2*(n4*n5+sl**2)))/(c3*l3**3*(c3**2*l3**2+(n4-n5)**2)),0,0,0,0,0,(4*c3*kw3*l3**3*(n4-n5)**2*sl**2+c3**2*g*l3**2*m3*(-((n4-n5)**2*sl**2)+l3**2*(n4*n5+sl**2))+g*m3*(-((n4-n5)**4*sl**2)+l3**2*(n4-n5)**2*(n4*n5+sl**2)))/(c3*l3**3*(c3**2*l3**2+(n4-n5)**2)),0,0],
		[0,0,0,0,0,0,-((d4*g*m3)/(c3*l3)),0,0,0,(d3*d4*g*m3+((-1+c3**2)*g*m3-(4*c3**3*kw3*l3**3)/(c3**2*l3**2+(n4-n5)**2))*sl**2)/(c3*l3),0,(d4*g*m3)/(c3*l3),0,0,0,(d4**2*g*m3+c3*d4*g*l3*m3+(g*(m3-c3**2*m3)+(4*c3**3*kw3*l3**3)/(c3**2*l3**2+(n4-n5)**2))*sl**2)/(c3*l3),0],
		[0,0,0,0,0,0,0,(d4*g*m3*(l3**2*(n4-n5)**2-(n4-n5)**4)+c3**3*g*l3**3*m3*(n4-n5)*n5+c3*l3*(n4-n5)**2*(4*d4*kw3*l3**2+g*m3*(n4-n5)*n5)+c3**2*(d4*g*l3**2*m3*(l3**2-(n4-n5)**2)+4*kw3*l3**4*n5*(-n4+n5)))/(c3*l3**3*(c3**2*l3**2+(n4-n5)**2)),0,0,0,(g*m3*(d3*d4-n4*n5))/(c3*l3)+(g*m3*(c3*l3*n4+d3*(n4-n5))*(c3*l3*n5+d4*(-n4+n5)))/(c3*l3**3)-(4*kw3*(c3*l3*n4+d3*(n4-n5))*(c3*l3*n5+d4*(-n4+n5)))/(c3**2*l3**2+(n4-n5)**2),0,(d4*g*m3*(-(l3**2*(n4-n5)**2)+(n4-n5)**4)+c3**3*g*l3**3*m3*n5*(-n4+n5)+c3**2*(d4*g*l3**2*m3*(-l3**2+(n4-n5)**2)+4*kw3*l3**4*(n4-n5)*n5)-c3*l3*(n4-n5)**2*(4*d4*kw3*l3**2+g*m3*(n4-n5)*n5))/(c3*l3**3*(c3**2*l3**2+(n4-n5)**2)),0,0,0,d4*g*m3+(d4**2*g*m3)/(c3*l3)+(g*m3*(n4-n5)*n5)/(2*c3*l3)+(g*m3*n5**2)/(c3*l3)-(g*m3*n5*(-n4+n5))/(2*c3*l3)-(g*m3*(c3*l3*n5+d4*(-n4+n5))**2)/(c3*l3**3)+(4*kw3*(c3*l3*n5+d4*(-n4+n5))**2)/(c3**2*l3**2+(n4-n5)**2)]
	])

def qm(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31, stage2=True):
	'''The raw (usually also effective) stiffness matrix for coupling between floats.'''
	nw1 = 2
	nw2 = 4
	nw3 = 4
	c1 = sqrt(l1**2 - (n1 - n0)**2)/l1
	c2 =  sqrt(l2**2 - (n3 - n2)**2)/l2
	c3 =  sqrt(l3**2 - (n5 - n4)**2)/l3
	flex1 = sqrt(nw1*M11*Y1/(m1 + m2 + m3)/g)*c1**(3/2)
	flex2 = sqrt(nw2*M21*Y2/(m2 + m3)/g)*c2**(3/2)
	flex3 = sqrt(nw3*M31*Y3/m3/g)*c3**(3/2)
	m13 = m1 + m2 + m3
	m23 =  m2 + m3
	tl1 = c1*l1 + dtop + d0
	tl2 = c2*l2 + d1 + d2
	tl3 = c3*l3 + d3 + d4
	si1 = (n1 - n0)/l1
	si2 = (n3 - n2)/l2
	si3 = (n5 - n4)/l3
	if stage2:
		dtop = dtop + flex1
		d0 = d0 + flex1
		d1 = d1 + flex2
		d2 = d2 + flex2
		d3 = d3 + flex3
		d4 = d4 + flex3
		l1 = l1 - 2*flex1/c1
		l2 = l2 - 2*flex2/c2
		l3 = l3 - 2*flex3/c3
		n0 = n0 + si1*flex1/c1
		n1 = n1 - si1*flex1/c1
		n2 = n2 + si2*flex2/c2
		n3 = n3 - si2*flex2/c2
		n4 = n4 + si3*flex3/c3
		n5 = n5 - si3*flex3/c3
	
	return np.array([
		[kbuz-((-1+c1**2)*g*(m1+m2+m3))/(2*c1*l1)+(c1**2*kw1*l1**2)/(c1**2*l1**2+(n0-n1)**2),0,0,0,0,0],
		[0,kbuz-((-1+c1**2)*g*(m1+m2+m3))/(2*c1*l1)+(c1**2*kw1*l1**2)/(c1**2*l1**2+(n0-n1)**2),0,0,0,0],
		[0,0,kblz-((-1+c2**2)*g*(m2+m3))/(4*c2*l2)+(c2**2*kw2*l2**2)/(c2**2*l2**2+(n2-n3)**2),0,0,0],
		[0,0,0,kblz-((-1+c2**2)*g*(m2+m3))/(4*c2*l2)+(c2**2*kw2*l2**2)/(c2**2*l2**2+(n2-n3)**2),0,0],
		[0,0,0,0,kblz-((-1+c2**2)*g*(m2+m3))/(4*c2*l2)+(c2**2*kw2*l2**2)/(c2**2*l2**2+(n2-n3)**2),0],
		[0,0,0,0,0,kblz-((-1+c2**2)*g*(m2+m3))/(4*c2*l2)+(c2**2*kw2*l2**2)/(c2**2*l2**2+(n2-n3)**2)]
	])

def sm(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31, stage2=True):
	'''The raw stiffness matrix (usually zero) for coupling between params.'''
	nw1 = 2
	nw2 = 4
	nw3 = 4
	c1 = sqrt(l1**2 - (n1 - n0)**2)/l1
	c2 =  sqrt(l2**2 - (n3 - n2)**2)/l2
	c3 =  sqrt(l3**2 - (n5 - n4)**2)/l3
	flex1 = sqrt(nw1*M11*Y1/(m1 + m2 + m3)/g)*c1**(3/2)
	flex2 = sqrt(nw2*M21*Y2/(m2 + m3)/g)*c2**(3/2)
	flex3 = sqrt(nw3*M31*Y3/m3/g)*c3**(3/2)
	m13 = m1 + m2 + m3
	m23 =  m2 + m3
	tl1 = c1*l1 + dtop + d0
	tl2 = c2*l2 + d1 + d2
	tl3 = c3*l3 + d3 + d4
	si1 = (n1 - n0)/l1
	si2 = (n3 - n2)/l2
	si3 = (n5 - n4)/l3
	if stage2:
		dtop = dtop + flex1
		d0 = d0 + flex1
		d1 = d1 + flex2
		d2 = d2 + flex2
		d3 = d3 + flex3
		d4 = d4 + flex3
		l1 = l1 - 2*flex1/c1
		l2 = l2 - 2*flex2/c2
		l3 = l3 - 2*flex3/c3
		n0 = n0 + si1*flex1/c1
		n1 = n1 - si1*flex1/c1
		n2 = n2 + si2*flex2/c2
		n3 = n3 - si2*flex2/c2
		n4 = n4 + si3*flex3/c3
		n5 = n5 - si3*flex3/c3
	
	return np.array([
		[(g*(m1+m2+m3))/(c1*l1),0,0,0,-((dtop*g*(m1+m2+m3))/(c1*l1)),0],
		[0,(g*(m1+m2+m3))/(c1*l1)-(g*(m1+m2+m3)*(n0-n1)**2)/(c1*l1**3)+(2*kw1*(n0-n1)**2)/(c1**2*l1**2+(n0-n1)**2),0,0,0,(dtop*g*(m1+m2+m3))/(c1*l1)-(g*(m1+m2+m3)*(c1*l1*n0+dtop*(n0-n1))*(n0-n1))/(c1*l1**3)+(2*kw1*(c1*l1*n0+dtop*(n0-n1))*(n0-n1))/(c1**2*l1**2+(n0-n1)**2)],
		[0,0,-(((-1+c1**2)*g*(m1+m2+m3))/(c1*l1))+(2*c1**2*kw1*l1**2)/(c1**2*l1**2+(n0-n1)**2),0,0,0],
		[0,0,0,(g*(m1+m2+m3)*n0*n1)/(c1*l1),0,0],
		[-((dtop*g*(m1+m2+m3))/(c1*l1)),0,0,0,(dtop*g*(dtop+c1*l1)*(m1+m2+m3))/(c1*l1),0],
		[0,(dtop*g*(m1+m2+m3))/(c1*l1)-(g*(m1+m2+m3)*(c1*l1*n0+dtop*(n0-n1))*(n0-n1))/(c1*l1**3)+(2*kw1*(c1*l1*n0+dtop*(n0-n1))*(n0-n1))/(c1**2*l1**2+(n0-n1)**2),0,0,0,-((g*(m1+m2+m3)*(c1*l1*n0+dtop*(n0-n1))**2)/(c1*l1**3))+(2*kw1*(c1*l1*n0+dtop*(n0-n1))**2)/(c1**2*l1**2+(n0-n1)**2)+(g*(m1+m2+m3)*(dtop**2+c1*dtop*l1+n0*n1))/(c1*l1)]
	])

def cqsm(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31, stage2=True):
	'''The raw coupling matrix between floats and params.'''
	nw1 = 2
	nw2 = 4
	nw3 = 4
	c1 = sqrt(l1**2 - (n1 - n0)**2)/l1
	c2 =  sqrt(l2**2 - (n3 - n2)**2)/l2
	c3 =  sqrt(l3**2 - (n5 - n4)**2)/l3
	flex1 = sqrt(nw1*M11*Y1/(m1 + m2 + m3)/g)*c1**(3/2)
	flex2 = sqrt(nw2*M21*Y2/(m2 + m3)/g)*c2**(3/2)
	flex3 = sqrt(nw3*M31*Y3/m3/g)*c3**(3/2)
	m13 = m1 + m2 + m3
	m23 =  m2 + m3
	tl1 = c1*l1 + dtop + d0
	tl2 = c2*l2 + d1 + d2
	tl3 = c3*l3 + d3 + d4
	si1 = (n1 - n0)/l1
	si2 = (n3 - n2)/l2
	si3 = (n5 - n4)/l3
	if stage2:
		dtop = dtop + flex1
		d0 = d0 + flex1
		d1 = d1 + flex2
		d2 = d2 + flex2
		d3 = d3 + flex3
		d4 = d4 + flex3
		l1 = l1 - 2*flex1/c1
		l2 = l2 - 2*flex2/c2
		l3 = l3 - 2*flex3/c3
		n0 = n0 + si1*flex1/c1
		n1 = n1 - si1*flex1/c1
		n2 = n2 + si2*flex2/c2
		n3 = n3 - si2*flex2/c2
		n4 = n4 + si3*flex3/c3
		n5 = n5 - si3*flex3/c3
	
	return np.array([
		[0,((g*(m1+m2+m3)-(2*c1*kw1*l1**3)/(c1**2*l1**2+(n0-n1)**2))*(-n0+n1))/(2*l1**2),-1/2*((-1+c1**2)*g*(m1+m2+m3))/(c1*l1)+(c1**2*kw1*l1**2)/(c1**2*l1**2+(n0-n1)**2),0,0,(-2*g*(m1+m2+m3)*(c1*l1*n0+dtop*(n0-n1))+(4*c1*kw1*l1**3*(c1*l1*n0+dtop*(n0-n1)))/(c1**2*l1**2+(n0-n1)**2)+(2*g*l1*(m1+m2+m3)*n1)/c1)/(4*l1**2)],
		[0,((g*(m1+m2+m3)-(2*c1*kw1*l1**3)/(c1**2*l1**2+(n0-n1)**2))*(n0-n1))/(2*l1**2),-1/2*((-1+c1**2)*g*(m1+m2+m3))/(c1*l1)+(c1**2*kw1*l1**2)/(c1**2*l1**2+(n0-n1)**2),0,0,(2*g*(m1+m2+m3)*(c1*l1*n0+dtop*(n0-n1))-(4*c1*kw1*l1**3*(c1*l1*n0+dtop*(n0-n1)))/(c1**2*l1**2+(n0-n1)**2)-(2*g*l1*(m1+m2+m3)*n1)/c1)/(4*l1**2)],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0]
	])

def cqxm(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31, stage2=True):
	'''The raw coupling matrix between floats and vars.'''
	nw1 = 2
	nw2 = 4
	nw3 = 4
	c1 = sqrt(l1**2 - (n1 - n0)**2)/l1
	c2 =  sqrt(l2**2 - (n3 - n2)**2)/l2
	c3 =  sqrt(l3**2 - (n5 - n4)**2)/l3
	flex1 = sqrt(nw1*M11*Y1/(m1 + m2 + m3)/g)*c1**(3/2)
	flex2 = sqrt(nw2*M21*Y2/(m2 + m3)/g)*c2**(3/2)
	flex3 = sqrt(nw3*M31*Y3/m3/g)*c3**(3/2)
	m13 = m1 + m2 + m3
	m23 =  m2 + m3
	tl1 = c1*l1 + dtop + d0
	tl2 = c2*l2 + d1 + d2
	tl3 = c3*l3 + d3 + d4
	si1 = (n1 - n0)/l1
	si2 = (n3 - n2)/l2
	si3 = (n5 - n4)/l3
	if stage2:
		dtop = dtop + flex1
		d0 = d0 + flex1
		d1 = d1 + flex2
		d2 = d2 + flex2
		d3 = d3 + flex3
		d4 = d4 + flex3
		l1 = l1 - 2*flex1/c1
		l2 = l2 - 2*flex2/c2
		l3 = l3 - 2*flex3/c3
		n0 = n0 + si1*flex1/c1
		n1 = n1 - si1*flex1/c1
		n2 = n2 + si2*flex2/c2
		n3 = n3 - si2*flex2/c2
		n4 = n4 + si3*flex3/c3
		n5 = n5 - si3*flex3/c3
	
	return np.array([
		[0,((-(g*(m1+m2+m3))+(2*c1*kw1*l1**3)/(c1**2*l1**2+(n0-n1)**2))*(-n0+n1))/(2*l1**2),((-1+c1**2)*g*(m1+m2+m3))/(2*c1*l1)-(c1**2*kw1*l1**2)/(c1**2*l1**2+(n0-n1)**2),0,0,((-2*g*l1*(m1+m2+m3)*n1)/c1+2*g*(m1+m2+m3)*(c1*l1*n1+d0*(-n0+n1))-(4*c1*kw1*l1**3*(c1*l1*n1+d0*(-n0+n1)))/(c1**2*l1**2+(n0-n1)**2))/(4*l1**2),0,0,0,0,0,0,0,0,0,0,0,0],
		[0,((-(g*(m1+m2+m3))+(2*c1*kw1*l1**3)/(c1**2*l1**2+(n0-n1)**2))*(n0-n1))/(2*l1**2),((-1+c1**2)*g*(m1+m2+m3))/(2*c1*l1)-(c1**2*kw1*l1**2)/(c1**2*l1**2+(n0-n1)**2),0,0,((2*g*l1*(m1+m2+m3)*n1)/c1+2*g*(m1+m2+m3)*(d0*(n0-n1)-c1*l1*n1)+(4*c1*kw1*l1**3*(c1*l1*n1+d0*(-n0+n1)))/(c1**2*l1**2+(n0-n1)**2))/(4*l1**2),0,0,0,0,0,0,0,0,0,0,0,0],
		[0,((g*(m2+m3)-(4*c2*kw2*l2**3)/(c2**2*l2**2+(n2-n3)**2))*(-n2+n3))/(4*l2**2),-1/4*((-1+c2**2)*g*(m2+m3))/(c2*l2)+(c2**2*kw2*l2**2)/(c2**2*l2**2+(n2-n3)**2),((g*(m2+m3)-(4*c2*kw2*l2**3)/(c2**2*l2**2+(n2-n3)**2))*(-n2+n3)*si)/(4*l2**2),(((-1+c2**2)*g*(m2+m3)-(4*c2**3*kw2*l2**3)/(c2**2*l2**2+(n2-n3)**2))*si)/(4*c2*l2),(-2*g*(m2+m3)*(c2*l2*n2+d1*(n2-n3))+(8*c2*kw2*l2**3*(c2*l2*n2+d1*(n2-n3)))/(c2**2*l2**2+(n2-n3)**2)+(2*g*l2*(m2+m3)*n3)/c2)/(8*l2**2),0,((-(g*(m2+m3))+(4*c2*kw2*l2**3)/(c2**2*l2**2+(n2-n3)**2))*(-n2+n3))/(4*l2**2),((-1+c2**2)*g*(m2+m3))/(4*c2*l2)-(c2**2*kw2*l2**2)/(c2**2*l2**2+(n2-n3)**2),((-(g*(m2+m3))+(4*c2*kw2*l2**3)/(c2**2*l2**2+(n2-n3)**2))*(-n2+n3)*si)/(4*l2**2),-1/4*((-1+c2**2)*g*(m2+m3)*si)/(c2*l2)+(c2**2*kw2*l2**2*si)/(c2**2*l2**2+(n2-n3)**2),((-2*g*l2*(m2+m3)*n3)/c2+2*g*(m2+m3)*(c2*l2*n3+d2*(-n2+n3))-(8*c2*kw2*l2**3*(c2*l2*n3+d2*(-n2+n3)))/(c2**2*l2**2+(n2-n3)**2))/(8*l2**2),0,0,0,0,0,0],
		[0,((g*(m2+m3)-(4*c2*kw2*l2**3)/(c2**2*l2**2+(n2-n3)**2))*(-n2+n3))/(4*l2**2),-1/4*((-1+c2**2)*g*(m2+m3))/(c2*l2)+(c2**2*kw2*l2**2)/(c2**2*l2**2+(n2-n3)**2),((-(g*(m2+m3))+(4*c2*kw2*l2**3)/(c2**2*l2**2+(n2-n3)**2))*(-n2+n3)*si)/(4*l2**2),-1/4*((-1+c2**2)*g*(m2+m3)*si)/(c2*l2)+(c2**2*kw2*l2**2*si)/(c2**2*l2**2+(n2-n3)**2),(-2*g*(m2+m3)*(c2*l2*n2+d1*(n2-n3))+(8*c2*kw2*l2**3*(c2*l2*n2+d1*(n2-n3)))/(c2**2*l2**2+(n2-n3)**2)+(2*g*l2*(m2+m3)*n3)/c2)/(8*l2**2),0,((-(g*(m2+m3))+(4*c2*kw2*l2**3)/(c2**2*l2**2+(n2-n3)**2))*(-n2+n3))/(4*l2**2),((-1+c2**2)*g*(m2+m3))/(4*c2*l2)-(c2**2*kw2*l2**2)/(c2**2*l2**2+(n2-n3)**2),((g*(m2+m3)-(4*c2*kw2*l2**3)/(c2**2*l2**2+(n2-n3)**2))*(-n2+n3)*si)/(4*l2**2),(((-1+c2**2)*g*(m2+m3)-(4*c2**3*kw2*l2**3)/(c2**2*l2**2+(n2-n3)**2))*si)/(4*c2*l2),((-2*g*l2*(m2+m3)*n3)/c2+2*g*(m2+m3)*(c2*l2*n3+d2*(-n2+n3))-(8*c2*kw2*l2**3*(c2*l2*n3+d2*(-n2+n3)))/(c2**2*l2**2+(n2-n3)**2))/(8*l2**2),0,0,0,0,0,0],
		[0,((g*(m2+m3)-(4*c2*kw2*l2**3)/(c2**2*l2**2+(n2-n3)**2))*(n2-n3))/(4*l2**2),-1/4*((-1+c2**2)*g*(m2+m3))/(c2*l2)+(c2**2*kw2*l2**2)/(c2**2*l2**2+(n2-n3)**2),((g*(m2+m3)-(4*c2*kw2*l2**3)/(c2**2*l2**2+(n2-n3)**2))*(n2-n3)*si)/(4*l2**2),(((-1+c2**2)*g*(m2+m3)-(4*c2**3*kw2*l2**3)/(c2**2*l2**2+(n2-n3)**2))*si)/(4*c2*l2),(2*g*(m2+m3)*(c2*l2*n2+d1*(n2-n3))-(8*c2*kw2*l2**3*(c2*l2*n2+d1*(n2-n3)))/(c2**2*l2**2+(n2-n3)**2)-(2*g*l2*(m2+m3)*n3)/c2)/(8*l2**2),0,((-(g*(m2+m3))+(4*c2*kw2*l2**3)/(c2**2*l2**2+(n2-n3)**2))*(n2-n3))/(4*l2**2),((-1+c2**2)*g*(m2+m3))/(4*c2*l2)-(c2**2*kw2*l2**2)/(c2**2*l2**2+(n2-n3)**2),((-(g*(m2+m3))+(4*c2*kw2*l2**3)/(c2**2*l2**2+(n2-n3)**2))*(n2-n3)*si)/(4*l2**2),-1/4*((-1+c2**2)*g*(m2+m3)*si)/(c2*l2)+(c2**2*kw2*l2**2*si)/(c2**2*l2**2+(n2-n3)**2),((2*g*l2*(m2+m3)*n3)/c2+2*g*(m2+m3)*(d2*(n2-n3)-c2*l2*n3)+(8*c2*kw2*l2**3*(c2*l2*n3+d2*(-n2+n3)))/(c2**2*l2**2+(n2-n3)**2))/(8*l2**2),0,0,0,0,0,0],
		[0,((g*(m2+m3)-(4*c2*kw2*l2**3)/(c2**2*l2**2+(n2-n3)**2))*(n2-n3))/(4*l2**2),-1/4*((-1+c2**2)*g*(m2+m3))/(c2*l2)+(c2**2*kw2*l2**2)/(c2**2*l2**2+(n2-n3)**2),((-(g*(m2+m3))+(4*c2*kw2*l2**3)/(c2**2*l2**2+(n2-n3)**2))*(n2-n3)*si)/(4*l2**2),-1/4*((-1+c2**2)*g*(m2+m3)*si)/(c2*l2)+(c2**2*kw2*l2**2*si)/(c2**2*l2**2+(n2-n3)**2),(2*g*(m2+m3)*(c2*l2*n2+d1*(n2-n3))-(8*c2*kw2*l2**3*(c2*l2*n2+d1*(n2-n3)))/(c2**2*l2**2+(n2-n3)**2)-(2*g*l2*(m2+m3)*n3)/c2)/(8*l2**2),0,((-(g*(m2+m3))+(4*c2*kw2*l2**3)/(c2**2*l2**2+(n2-n3)**2))*(n2-n3))/(4*l2**2),((-1+c2**2)*g*(m2+m3))/(4*c2*l2)-(c2**2*kw2*l2**2)/(c2**2*l2**2+(n2-n3)**2),((g*(m2+m3)-(4*c2*kw2*l2**3)/(c2**2*l2**2+(n2-n3)**2))*(n2-n3)*si)/(4*l2**2),(((-1+c2**2)*g*(m2+m3)-(4*c2**3*kw2*l2**3)/(c2**2*l2**2+(n2-n3)**2))*si)/(4*c2*l2),((2*g*l2*(m2+m3)*n3)/c2+2*g*(m2+m3)*(d2*(n2-n3)-c2*l2*n3)+(8*c2*kw2*l2**3*(c2*l2*n3+d2*(-n2+n3)))/(c2**2*l2**2+(n2-n3)**2))/(8*l2**2),0,0,0,0,0,0]
	])

def cxsm(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31, stage2=True):
	'''The raw coupling matrix between vars and params.'''
	nw1 = 2
	nw2 = 4
	nw3 = 4
	c1 = sqrt(l1**2 - (n1 - n0)**2)/l1
	c2 =  sqrt(l2**2 - (n3 - n2)**2)/l2
	c3 =  sqrt(l3**2 - (n5 - n4)**2)/l3
	flex1 = sqrt(nw1*M11*Y1/(m1 + m2 + m3)/g)*c1**(3/2)
	flex2 = sqrt(nw2*M21*Y2/(m2 + m3)/g)*c2**(3/2)
	flex3 = sqrt(nw3*M31*Y3/m3/g)*c3**(3/2)
	m13 = m1 + m2 + m3
	m23 =  m2 + m3
	tl1 = c1*l1 + dtop + d0
	tl2 = c2*l2 + d1 + d2
	tl3 = c3*l3 + d3 + d4
	si1 = (n1 - n0)/l1
	si2 = (n3 - n2)/l2
	si3 = (n5 - n4)/l3
	if stage2:
		dtop = dtop + flex1
		d0 = d0 + flex1
		d1 = d1 + flex2
		d2 = d2 + flex2
		d3 = d3 + flex3
		d4 = d4 + flex3
		l1 = l1 - 2*flex1/c1
		l2 = l2 - 2*flex2/c2
		l3 = l3 - 2*flex3/c3
		n0 = n0 + si1*flex1/c1
		n1 = n1 - si1*flex1/c1
		n2 = n2 + si2*flex2/c2
		n3 = n3 - si2*flex2/c2
		n4 = n4 + si3*flex3/c3
		n5 = n5 - si3*flex3/c3
	
	return np.array([
		[-((g*(m1+m2+m3))/(c1*l1)),0,0,0,(dtop*g*(m1+m2+m3))/(c1*l1),0],
		[0,-((g*(m1+m2+m3))/(c1*l1))+(g*(m1+m2+m3)*(n0-n1)**2)/(c1*l1**3)-(2*kw1*(n0-n1)**2)/(c1**2*l1**2+(n0-n1)**2),0,0,0,-((dtop*g*(m1+m2+m3))/(c1*l1))+(g*(m1+m2+m3)*(c1*l1*n0+dtop*(n0-n1))*(n0-n1))/(c1*l1**3)-(2*kw1*(c1*l1*n0+dtop*(n0-n1))*(n0-n1))/(c1**2*l1**2+(n0-n1)**2)],
		[0,0,((-1+c1**2)*g*(m1+m2+m3))/(c1*l1)-(2*c1**2*kw1*l1**2)/(c1**2*l1**2+(n0-n1)**2),0,0,0],
		[0,0,0,-((g*(m1+m2+m3)*n0*n1)/(c1*l1)),0,0],
		[-((d0*g*(m1+m2+m3))/(c1*l1)),0,0,0,(d0*dtop*g*(m1+m2+m3))/(c1*l1),0],
		[0,(d0*g*(m1+m2+m3))/(c1*l1)+(g*(m1+m2+m3)*(n0-n1)*(c1*l1*n1+d0*(-n0+n1)))/(c1*l1**3)-(2*kw1*(n0-n1)*(c1*l1*n1+d0*(-n0+n1)))/(c1**2*l1**2+(n0-n1)**2),0,0,0,(g*(m1+m2+m3)*(d0*dtop-n0*n1))/(c1*l1)+(g*(m1+m2+m3)*(c1*l1*n0+dtop*(n0-n1))*(c1*l1*n1+d0*(-n0+n1)))/(c1*l1**3)-(2*kw1*(c1*l1*n0+dtop*(n0-n1))*(c1*l1*n1+d0*(-n0+n1)))/(c1**2*l1**2+(n0-n1)**2)],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0]
	])
noofvars = len(allvars) # The number of var-type coordinates (masses)
nooffloats = len(allfloats) # The number of float-type coordinates (blade tips)
noofparams = len(allparams) # The number of param-type coordinates (structure)

def smeff(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31):
	'''Function for the effective stiffness matrix for the params.'''
	return sm(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31)-np.linalg.multi_dot([np.transpose(cqsm(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31)),np.linalg.inv(qm(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31)),cqsm(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31)])

def cxsmeff(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31):
	'''Function for the effective coupling matrix for vars to params.'''
	return cxsm(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31)-np.linalg.multi_dot([np.transpose(cqxm(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31)),np.linalg.inv(qm(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31)),cqsm(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31)])

def xmeff(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31):
	'''Function for the effective stiffness matrix for the vars.'''
	return xm(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31)-np.linalg.multi_dot([np.transpose(cqxm(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31)),np.linalg.inv(qm(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31)),cqxm(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31)])

def A(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31):
	'''Function for the state space A matrix.'''
	return np.vstack( ( np.hstack((np.zeros((noofvars,noofvars)),np.identity(noofvars))),
                 np.hstack((np.dot(-np.linalg.inv(km(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31)),xmeff(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31)),np.zeros((noofvars,noofvars)))) ))

def B(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31):
	'''Function for the state space B matrix.'''
	return np.vstack( ( np.hstack((np.zeros((noofvars,noofparams)),np.zeros((noofvars,noofvars)))),
                 np.hstack((np.dot(-np.linalg.inv(km(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31)),cxsmeff(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31)),np.linalg.inv(km(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31)))) ))

def C(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31):
	'''Function for the state space C matrix.'''
	return np.vstack( ( np.hstack((np.identity(noofvars),np.zeros((noofvars,noofvars)))),
                 np.hstack((-np.transpose(cxsmeff(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31)),np.zeros((noofparams,noofvars)))) ))

def D(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31):
	'''Function for the state space D matrix.'''
	return np.vstack( ( np.hstack((np.zeros((noofvars,noofparams)),np.zeros((noofvars,noofvars)))),
                 np.hstack((-smeff(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31),np.zeros((noofparams,noofvars)))) ))

def pendSS(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31):
	'''Function for the state space.'''
	return ct.ss(A(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31),B(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31),C(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31),D(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31),inputs=inputs,outputs=outputs,states=states)

def eigenmodes(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31):
	'''Function for the frequencies (in Hz and sorted Mathematica-style in descending order of frequency) 
	and eigenvectors (presented Mathematica-style in rows).'''
	unsortedevals,unsortedtransposedevecs=scipy.linalg.eig(xmeff(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31),km(g, m1, m2, m3, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2x, I2y, I2z, I2xy, I2yz, I2zx, I3x, I3y, I3z, I3xy, I3yz, I3zx, dtop, d0, d1, d2, d3, d4, n0, n1, n2, n3, n4, n5, si, sl, kbuz, kbiz, kblz, l1, l2, l3, kw1, kw2, kw3, Y1, Y2, Y3, M11, M21, M31))
	unsortedHz = np.array([sqrt(e.real)/2/pi for e in unsortedevals])
	sortindices = np.flip(unsortedHz.argsort())
	return (unsortedHz[sortindices],np.transpose(unsortedtransposedevecs)[sortindices])

def trimio(pend,newinputs,newoutputs):
	'''A function to trim a state space object to have only the specified subsets of inputs and output.'''
	A=pend.A
	B=pend.B
	C=pend.C
	D=pend.D
	oldinputs=pend.input_index
	oldoutputs=pend.output_index
	oldstates=pend.state_index
	newinputlist = []
	for i in range(len(newinputs)):
			newinputlist.append(oldinputs.get(newinputs[i],0))
	newoutputlist = []
	for i in range(len(newoutputs)):
			newoutputlist.append(oldoutputs.get(newoutputs[i],0))
	BB=B[range(len(oldstates))][...,newinputlist]
	CC=C[newoutputlist]
	DD=D[newoutputlist][...,newinputlist]
	return ct.ss(A,BB,CC,DD,inputs=newinputs,outputs=newoutputs,states=list(oldstates.keys()))
