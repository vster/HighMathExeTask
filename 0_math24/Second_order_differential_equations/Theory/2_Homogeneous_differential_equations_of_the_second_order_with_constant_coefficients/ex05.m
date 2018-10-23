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