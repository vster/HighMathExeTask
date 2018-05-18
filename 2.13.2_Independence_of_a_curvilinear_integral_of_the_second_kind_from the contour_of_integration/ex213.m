% Solve the differential equation
% (2*x*y*exp(x^2)+log(y))dx+(exp(x^2)+x/y+exp(y))dy=0

syms x y real;
P=2*x*y*exp(x^2)+log(y)
Q=exp(x^2)+x/y+exp(y)

dPy=diff(P,y)
% 2*x*exp(x^2) + 1/y
dQx=diff(Q,x)
% 2*x*exp(x^2) + 1/y
% dPy=dQx

% Then
% dU=P*dx+Q*dy
% U=C

% Let A(1;1) and B(x;y)
P=subs(P,y,1)
% 2*x*exp(x^2)
U=int(P,x,1,x)+int(Q,y,1,y)
% exp(y) - 2*exp(1) + y*exp(x^2) + x*log(y) 

% exp(y) + y*exp(x^2) + x*log(y) = C