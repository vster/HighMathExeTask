% Solve equation
% (4*x-1)^2*y''-2*(4*x-1)*y'+8*y=0

% 1)
clear
syms x y(x)
eq1=(4*x-1)^2*diff(y,x,2)-2*(4*x-1)*diff(y,x)+8*y
ySol=simplify(dsolve(eq1))
% C3*(x - 1/4) - 2*C4*(x - 1/4)^(1/2)

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eq1,y(x),ySol(i)))
end
% 0