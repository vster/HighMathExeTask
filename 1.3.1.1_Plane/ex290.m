% Perpendiculars are omitted from the point P=[2,3,-5] 
% on the coordinate axes.
% Write the equation of the plane passing through their bases.

syms x y z;
P=[2,3,-5]
R=[x,y,z]

M1=[2,3,0]
M2=[2,0,-5]
M3=[0,3,-5]

F=[R-M1;M2-M1;M3-M1]
% The equation of the plane passing through points M1, M2, M3
p=det(F)
% 15*x + 10*y - 6*z - 60 = 0