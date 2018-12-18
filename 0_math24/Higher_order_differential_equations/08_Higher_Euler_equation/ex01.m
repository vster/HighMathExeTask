clear
syms x y(x)
eqn=x^3*diff(y,x,3)-2*x^2*diff(y,x,2)+4*x*diff(y,x)-4*y
ySol=simplify(dsolve(eqn))
% x*(C22 + C24*x + C23*x*log(x))

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))    
end