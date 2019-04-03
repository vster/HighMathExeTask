clear
syms x y(x)
eqn=diff(y,x,2)+4i*y
ySol=simplify(dsolve(eqn))
% exp(2*(-1)^(3/4)*x)*(C7 + C6*exp(-4*(-1)^(3/4)*x))

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0

% 2)
syms C1 C2
y2=opercalc(eqn,C1,C2,0)
% (C2*sin(4i^(1/2)*x) + 4i^(1/2)*C1*cos(4i^(1/2)*x))/4i^(1/2)
