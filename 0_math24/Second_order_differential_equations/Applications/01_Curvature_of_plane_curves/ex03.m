% Find the curve whose radius of curvature is constant.
clear
syms x R real
syms y(x)
assume(R>0)
eqn=R*abs(diff(y,x,2))-(1+diff(y,x)^2)^(3/2)
ySol=dsolve(eqn)
%  C8 + x*1i
%  C7 - x*1i
