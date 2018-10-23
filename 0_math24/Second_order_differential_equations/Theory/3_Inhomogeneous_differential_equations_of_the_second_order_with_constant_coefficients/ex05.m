clear
syms x y(x)
eqn=diff(y,x,2)+16*y-2*cos(x)^2
ySol=simplify(dsolve(eqn))
% cos(2*x)/12 - (7*cos(4*x))/48 + C16*cos(4*x) + C17*sin(4*x) + 1/16

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0