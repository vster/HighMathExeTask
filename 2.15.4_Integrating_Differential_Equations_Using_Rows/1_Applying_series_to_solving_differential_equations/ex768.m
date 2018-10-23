clear
syms x y(x)
eqn=diff(y,x)-(y^2+x)
cond=y(0)==1
ySol=simplify(dsolve(eqn,cond))
% (airy(3, -x) - (airy(1, -x)*(2*pi*3^(2/3) - 3*3^(1/2)*gamma(2/3)^2))/(2*pi*3^(1/6) + 3*gamma(2/3)^2))/(airy(2, -x) - (airy(0, -x)*(2*pi*3^(2/3) - 3*3^(1/2)*gamma(2/3)^2))/(2*pi*3^(1/6) + 3*gamma(2/3)^2))

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0