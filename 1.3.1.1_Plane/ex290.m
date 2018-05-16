syms x y z;
P=[2,3,-5]
R=[x,y,z]

M1=[2,3,0]
M2=[2,0,-5]
M3=[0,3,-5]

F=[R-M1;M2-M1;M3-M1]
% The equation of the plane passing through points M1, M2, M3
fp=det(F)