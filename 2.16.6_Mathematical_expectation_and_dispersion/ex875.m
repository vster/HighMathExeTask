syms x lam
f(x)=piecewise(x<0,0,0<=x<=2,lam*(4*x-x^2),x>2,0)

F1=int(f(x),x,-inf,inf)
% (16*lam)/3=1
lam1=solve(F1==1)
% 3/16 - ? does not agree with the answer ?

f1(x)=subs(f(x),lam,lam1)
% piecewise(x < 0, 0, x in Dom::Interval([0], [2]), (3*x)/4 - (3*x^2)/16, 2 < x, 0)

% Mathematical expectation
MX=int(x*f1(x),x,-inf,inf)
% 5/4 - ?

% Dispersion
DX=int((x-MX)^2*f1(x),x,-inf,inf)
% 19/80
digits(3)
sigx=vpa(sqrt(DX))
% 0.487 - ?