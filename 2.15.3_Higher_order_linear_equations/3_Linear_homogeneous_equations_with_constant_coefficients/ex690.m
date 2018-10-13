% Find the general solution of the equation
% y''''-13*y''+36*y

% 1)
clear
syms x k i
% Characteristic equation
eq1=k^4-13*k^2+36
kSol=solve(eq1).'
% [ -3, -2, 2, 3]
syms i C(i)
y=0
for i=1:length(kSol)
    y=y+C(i)*exp(kSol(i)*x)
end
% C(1)*exp(-3*x) + C(2)*exp(-2*x) + C(3)*exp(2*x) + C(4)*exp(3*x)

% 2)
clear
syms x y(x)
eqn=diff(y,x,4)-13*diff(y,x,2)+36*y==0
ySol=simplify(dsolve(eqn))
% exp(-3*x)*(C8 + C9*exp(x) + C6*exp(6*x) + C7*exp(5*x))

% Checking
eqn10=diff(y,x,4)-13*diff(y,x,2)+36*y
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0