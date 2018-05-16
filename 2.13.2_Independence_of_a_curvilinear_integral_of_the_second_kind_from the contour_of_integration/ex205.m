% Solve the differential equation
% (2*exp(2x)+y+sin(y))dx+(exp(3y)+x+x*cos(y))dy=0

syms x y;
P=2*exp(2*x)+y+sin(y)
Q=exp(3*y)+x+x*cos(y)

dPy=diff(P,y)
% cos(y) + 1
dQx=diff(Q,x)
% cos(y) + 1
% dPy=dQx

% Then
% dU=P*dx+Q*dy
% U=C

% Let A(0;0) and B(x;y)
x0=0
y0=0

P=subs(P,y,y0)
% 2*exp(2*x)
U=int(P,x,0,x)+int(Q,y,0,y)
% exp(2*x) + exp(3*y)/3 + x*y + x*sin(y) - 4/3

% exp(2*x) + exp(3*y)/3 + x*y + x*sin(y) = C