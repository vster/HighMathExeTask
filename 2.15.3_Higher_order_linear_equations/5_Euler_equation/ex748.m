% Solve equation
% x^2*y''-x*y'+y=0

% 1)
clear
syms x y(x)
eq1=x^2*diff(y,x,2)-x*diff(y,x)+y
ySol=simplify(dsolve(eq1==0))
% x*(C2 + C1*log(x))

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eq1,y(x),ySol(i)))
end
% 0