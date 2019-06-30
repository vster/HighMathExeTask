clear
% J(y(x))=int(1:e)(x*exp(y)-y*exp(x))dx
% y(1)=1
% y(e)=1
syms x y e
assume(x>0)
F=x*exp(y)-y*exp(x)
dFy=diff(F,y)
% x*exp(y) - exp(x)
y1(x)=simplify(solve(dFy,y))
% x - log(x)
y1(1)
% 1
y1(e)
% e - log(e) = e-1
% The resulting solution does not satisfy the boundary conditions 
% and the curve found is not an extremal.
