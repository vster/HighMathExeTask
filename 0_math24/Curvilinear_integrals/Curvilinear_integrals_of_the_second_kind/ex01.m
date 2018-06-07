% Compute the integral
% int (C) y*dx-x*dy
% where the curve C is given parametrically in the form 
% r(t)=(cos(t),sin(t),0<=t<=pi/2

% int (C) P*dx+Q*dy = 
%  = int (alfa:beta) (P(x(t),y(t))*dx/dt+Q(x(t),y(t))*dy/dt)*dt

syms t dt;
x=cos(t)
y=sin(t)
f=y*diff(x)-x*diff(y)
f=simplify(f)
% -1
I=int(f,t,0,pi/2)
% -pi/2