% Solve equation
% x^2*y''-3*x*y'+3*y=3*log(x)^2

% 1)
clear
syms x y(x)
eqn=x^2*diff(y,x,2)-3*x*diff(y,x)+3*y-3*log(x)^2
ySol=simplify(dsolve(eqn==0))
% (8*log(x))/3 + C28*x + log(x)^2 + C29*x^3 + 26/9

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0