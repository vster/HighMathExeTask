syms x a
f(x)=piecewise(x<0,0,0<=x<1,a*x^2,1<=x<2,a*(2-x)^2,x>=2,0)

P1=int(f(x),x,-inf,inf)
% (2*a)/3
a1=solve(P1==1,a)
% 3/2

f(x)=subs(f(x),a,a1)
% piecewise(x < 0, 0, x in Dom::Interval([0], 1), (3*x^2)/2, x in Dom::Interval([1], 2), (3*(x - 2)^2)/2, 2 <= x, 0)

alfa1=int(x*f(x),x,-inf,inf)
% 1
alfa2=int(x^2*f(x),x,-inf,inf)
% 11/10
alfa3=int(x^3*f(x),x,-inf,inf)
% 13/10
alfa4=int(x^4*f(x),x,-inf,inf)
% 57/35

mu1=0
mu2=alfa2-alfa1^2
% 1/10
mu3=alfa3-3*alfa1*alfa2+2*alfa1^3
% 0
mu4=alfa4-4*alfa1*alfa3+6*alfa1^2*alfa2-3*alfa1^4
% 1/35

digits(3)
DX=mu2
% 1/10
sigmax=vpa(sqrt(DX))
% 0.316
Sk=mu3/sigmax^3
% 0
Ex=mu4/sigmax^4-3
% -0.143