clear
syms x y(x)
eqn=diff(y,x,3)+diff(y,x,2)+4*diff(y,x)+4*y-(8*sin(2*x)+20*x*exp(x))
ySol=simplify(dsolve(eqn))
% (8*sin(2*x))/25 - (6*cos(2*x))/25 - (9*exp(x))/5 - (2*x*cos(2*x))/5 - (4*x*sin(2*x))/5 + 2*x*exp(x) + C33*cos(2*x) + C35*exp(-x) + C34*sin(2*x)

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0