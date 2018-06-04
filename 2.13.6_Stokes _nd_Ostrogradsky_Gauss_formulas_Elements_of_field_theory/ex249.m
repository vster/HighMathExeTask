% Show that the field 
% F = (2*x*y+3*y^2+9*y)*i+(x^2+6*x*y+9*x)*j
% is potential, and find the potential of the field.

syms x y z;
P=2*x*y+3*y^2+9*y
Q=x^2+6*x*y+9*x
R=sym(0)
F=[P,Q,R]
rot_F=curl(F,[x y z])
% 0 0 0

% Potential of the field
M0=[0 0]
x0=0
y0=0
% u(x,y)= int (x0:x) P(x,y0)*dx + int (y0:y) Q(x,y)*dy + C
P=subs(P,[x y],[x y0])
% 0
u(x,y)=int(P,x,x0,x)+int(Q,y,y0,y)
% x*y*(x + 3*y + 9)