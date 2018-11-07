syms x a
f(x)=piecewise(x<0,0,0<=x<1,x,1<=x<2,2-x,x>=2,0)

alfa1=int(x*f(x),x,-inf,inf)
% 1
alfa2=int(x^2*f(x),x,-inf,inf)
% 7/6
alfa3=int(x^3*f(x),x,-inf,inf)
% 3/2
alfa4=int(x^4*f(x),x,-inf,inf)
% 31/15

mu1=0
mu2=alfa2-alfa1^2
% 1/6
mu3=alfa3-3*alfa1*alfa2+2*alfa1^3
% 0
mu4=alfa4-4*alfa1*alfa3+6*alfa1^2*alfa2-3*alfa1^4
% 1/15

digits(3)
DX=mu2
% 1/6
sigmax=vpa(sqrt(DX))
% 0.408
Sk=mu3/sigmax^3
% 0.0
Ex=mu4/sigmax^4-3
% -0.6