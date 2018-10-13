% Find the general solution of the equation
% y'''-2*y''+y'=0

% 1)
clear
syms x k i
% Characteristic equation
eq1=k^3-2*k^2+k
kSol=solve(eq1).'
% [ 0, 1, 1]
% 1,exp(x),x*exp(x)
% C1 + C2*exp(x) + C3*x*exp(x)

% 2)
clear
syms x y(x)
eqn=diff(y,x,3)-2*diff(y,x,2)+diff(y,x)==0
ySol=simplify(dsolve(eqn))
% C18 + C19*exp(x) + C20*x*exp(x)

% Checking
eqn10=diff(y,x,3)-2*diff(y,x,2)+diff(y,x)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0