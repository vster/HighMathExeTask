% Solve equation
% x^2*y''-x*y'+2*y=0

% 1)
clear
syms x y(x)
eqn=x^2*diff(y,x,2)-x*diff(y,x)+2*y
ySol=simplify(dsolve(eqn==0))
% C27*x*cos(log(x)) + C26*x*sin(log(x))

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0