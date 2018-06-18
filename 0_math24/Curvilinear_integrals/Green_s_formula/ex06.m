% Using the Green's formula, find the integral
% int(C)(y-x^2)*dx-(x+y^2)*dy
% The contour C delimits a sector of a circle of radius a 
% lying in the first quadrant

% Green's formula
% int(K)P*dx+Q*dy=int_int(D)(dQ/dx-dP/dy)*dx*dy

syms x y dx dy;
df1=(y-x^2)*dx-(x+y^2)*dy
P=y-x^2
Q=-(x+y^2)

f=diff(Q,x)-diff(P,y)
% -2

syms ro teta real;
J=ro

I=int(int(f*J,ro,0,a),teta,0,pi/2)
% -(pi*a^2)/2

