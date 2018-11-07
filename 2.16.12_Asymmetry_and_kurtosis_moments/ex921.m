syms x lam
f(x)=lam*exp(-abs(x))

P1=int(f(x),x,-inf,inf)
% 2*lam
lam1=solve(P1==1,lam)
% 1/2

f(x)=subs(f(x),lam,lam1)
% exp(-abs(x))/2

alfa1=int(x*f(x),x,-inf,inf)
% 0
alfa2=int(x^2*f(x),x,-inf,inf)
% 2
alfa3=int(x^3*f(x),x,-inf,inf)
% 0
alfa4=int(x^4*f(x),x,-inf,inf)
% 24

mu1=0
mu2=alfa2-alfa1^2
% 2
mu3=alfa3-3*alfa1*alfa2+2*alfa1^3
% 0
mu4=alfa4-4*alfa1*alfa3+6*alfa1^2*alfa2-3*alfa1^4
% 24

digits(3)
DX=mu2
% 2
sigmax=vpa(sqrt(DX))
% 1.41
Sk=mu3/sigmax^3
% 0.0
Ex=mu4/sigmax^4-3
% 3.0