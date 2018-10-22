% Find a solution to the equation 
% x^2*y''+3*x*y'+y=1/x
% satisfying the initial conditions 
% y(1)=1,y'(1)=0

% 1)
clear
syms x y(x)
eqn=x^2*diff(y,x,2)+3*x*diff(y,x)+y-1/x
dy(x)=diff(y)
cond=[y(1)==1,dy(1)==0]
ySol=simplify(dsolve(eqn,cond))
% (log(x) + log(x)^2/2 + 1)/x

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0