% Solve the differential equation
% (2x*sin(y)+y*cos(x)+2x)dx+(x^2*cos(y)+sin(x)-sin(y)-3*y^2)dy=0

syms x y real;
P=2*x*sin(y)+y*cos(x)+2*x
Q=x^2*cos(y)+sin(x)-sin(y)-3*y^2

dPy=diff(P,y)
% cos(x) + 2*x*cos(y)
dQx=diff(Q,x)
% cos(x) + 2*x*cos(y)
% dPy=dQx

% Then
% dU=P*dx+Q*dy
% U=C

% Let A(0;0) and B(x;y)
P=subs(P,y,0)
% 2*x
U=int(P,x,0,x)+int(Q,y,0,y)
% cos(y) + x^2*sin(y) + y*sin(x) + x^2 - y^3 - 1

% cos(y) + x^2*sin(y) + y*sin(x) + x^2 - y^3 = C