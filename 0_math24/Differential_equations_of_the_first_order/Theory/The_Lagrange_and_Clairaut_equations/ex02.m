% Find the general and singular solutions of equation
% 2*y-4*x*y'-log(y')=0

% Lagrange's equation
clear
syms x y(x)
eqn=2*y-4*x*diff(y(x))-log(diff(y(x)))==0
ySol=dsolve(eqn)
%  log((4*C28)/(2*(4*C28*x + 1/4)^(1/2) + 1))/2 + (8*C28*x)/(2*(4*C28*x + 1/4)^(1/2) + 1)
% log(-(4*C28)/(2*(4*C28*x + 1/4)^(1/2) - 1))/2 - (8*C28*x)/(2*(4*C28*x + 1/4)^(1/2) - 1)

% Checking
for i=1:2
eqn10=2*y-4*x*diff(y(x))-log(diff(y(x)))
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
disp(chk')