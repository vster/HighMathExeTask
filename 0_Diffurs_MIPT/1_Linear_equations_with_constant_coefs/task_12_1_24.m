clear
syms x y(x)
eqn=diff(y,x,3)+4*diff(y,x,2)+diff(y,x)+4*y-(34*sin(x)+(34*x+13/4)*exp(4*x))
ySol=simplify(dsolve(eqn))
% (8*sin(x))/17 - (2*cos(x))/17 - exp(4*x)/8 + (x*exp(4*x))/4 + C39*cos(x) + C40*sin(x) - 4*x*cos(x) - x*sin(x) + C41*exp(-4*x)

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0