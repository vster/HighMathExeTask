syms x
f(x)=piecewise(x<0,0,0<=x<=pi,1/2*sin(x),x>pi,0)

F=int(f(x),x,-inf,inf)
% 1

% Mathematical expectation
MX=int(x*f(x),x,-inf,inf)
% pi/2
MX2=int(x^2*f(x),x,-inf,inf)
% pi^2/2 - 2

% Dispersion
DX=MX2-MX^2
% pi^2/4 - 2

m=MX
DX1=int((x-m)^2*f(x),x,-inf,inf)
% pi^2/4 - 2

digits(3)
sigx=vpa(sqrt(DX))
% 0.684