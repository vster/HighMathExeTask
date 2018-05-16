% Solve the differential equation
% (4x^3y^3-3y^2+8)dx+(3x^4y^2-6xy-1)dy=0

syms x y;
P = 4*x^3*y^3-3*y^2+8
Q = 3*x^4*y^2-6*x*y-1

dPy=diff(P,y)
% 12*x^3*y^2 - 6*y
dQx=diff(Q,x)
% 12*x^3*y^2 - 6*y
% dPy=dQx

% Then
% dU=P*dx+Q*dy
% U=C

% Let A(0;0) and B(x;y)
x0=0
y0=0

P=subs(P,y,y0)
% 8
U=int(P,x,0,x)+int(Q,y,0,y)
% x^4*y^3 - 3*x*y^2 + 8*x - y = C


