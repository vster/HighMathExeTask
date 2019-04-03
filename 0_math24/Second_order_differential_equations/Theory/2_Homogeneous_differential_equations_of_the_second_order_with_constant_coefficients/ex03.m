clear
syms x y(x)
eqn=diff(y,x,2)+4*diff(y,x)+5*y
ySol=simplify(dsolve(eqn))
% exp(-2*x)*(C1*cos(x) + C2*sin(x))

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0

% 2)
syms C1 C2
y2=opercalc(eqn,C1,C2,0)
% exp(-2*x)*(C5*cos(x) + C6*sin(x))