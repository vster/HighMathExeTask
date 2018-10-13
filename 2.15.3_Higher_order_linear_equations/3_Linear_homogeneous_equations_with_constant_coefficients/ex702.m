% Find the general solution of the equation
% y''''+5*y''+4*y=0

% 1)
clear
syms k
eq1=k^4+5*k^2+4
kSol=solve(eq1).'
% [ -2i, -1i, 1i, 2i]
% C1*cos(2*x)+C2*cos(x)+C3*sin(x)+C4*sin(2*x)

% 2)
clear
syms x y(x)
eqn=diff(y,x,4)+5*diff(y,x,2)+4*y==0
ySol=simplify(dsolve(eqn))
% C39*cos(x) + C40*sin(x) + C41*(2*cos(x)^2 - 1) + 2*C42*cos(x)*sin(x)

% Checking
eqn10=diff(y,x,4)+5*diff(y,x,2)+4*y
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
