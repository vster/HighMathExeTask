clear
syms x y(x)
eqn=diff(y,x)-(x+2*y^2)
cond=y(0)==0
ySol=simplify(dsolve(eqn,cond))
% (2^(1/3)*(3^(1/2)*airy(1, -2^(1/3)*x) + airy(3, -2^(1/3)*x)))/(2*(3^(1/2)*airy(0, -2^(1/3)*x) + airy(2, -2^(1/3)*x)))

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0