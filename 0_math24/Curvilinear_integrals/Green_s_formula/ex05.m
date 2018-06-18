% Using Green's formula, calculate the integral
% int(C)y^2*dx+(x+y)^2*dy
% where the contour C is a triangle ABC with vertices 
% A(a,0), B(a,a), D(0,a)

% Green's formula
% int(K)P*dx+Q*dy=int_int(D)(dQ/dx-dP/dy)*dx*dy

syms x y dx dy;
df1=y^2*dx+(x+y)^2*dy
P=y^2
Q=(x+y)^2

f=diff(Q,x)-diff(P,y)
% 2*x
I=int(int(f,y,-x+a,a),x,0,a)
% (2*a^3)/3


