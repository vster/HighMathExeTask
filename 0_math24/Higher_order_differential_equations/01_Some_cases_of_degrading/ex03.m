clear
syms x y(x)
eqn=diff(y,x)*diff(y,x,3)+diff(y,x,2)^2
ySol=simplify(dsolve(eqn))
%  C19 + (2*2^(1/2)*(C17 + C16*x)^(3/2))/(3*C16)
%  C18 - (2*2^(1/2)*(C17 + C16*x)^(3/2))/(3*C16)

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end