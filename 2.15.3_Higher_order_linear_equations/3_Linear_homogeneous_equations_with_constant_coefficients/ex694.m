% Find the general solution of the equation
% y''-4*y'+13*y=0

% 1)
clear
syms x k i
% Characteristic equation
eq1=k^2-4*k+13
kSol=solve(eq1).'
% [ 2 - 3i, 2 + 3i]
% exp(2*x)*cos(3*x),exp(2*x)*sin(3*x)
% y=exp(2*x)*(C1*cos(3*x)+C2*sin(3*x))

% 2)
clear
syms x y(x)
eqn=diff(y,x,2)-4*diff(y,x)+13*y==0
ySol=simplify(dsolve(eqn))
% exp(2*x)*(C21*cos(3*x) + C22*sin(3*x))

% Checking
eqn10=diff(y,x,2)-4*diff(y,x)+13*y
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0