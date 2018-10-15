% Solve equation
% y''=sin(x)+cos(x)

% 1)
clear
syms x y(x)
assume(y(x),'real')
eqn=diff(y,x,2)==sin(x)+cos(x)
ySol=dsolve(eqn)
% C12 + C11*x - 2^(1/2)*sin(x + pi/4)

% Checking
eqn10=diff(y,x,2)-(sin(x)+cos(x))
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0