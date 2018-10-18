% Find a solution to the equation 
% y''-4y'+3y=exp(5*x)
% satisfying the initial conditions 
% y(0)=3,y'(0)=9

% 1)
syms x y(x)
eqn=diff(y,x,2)-4*diff(y,x)+3*y==exp(5*x)
dy(x)=diff(y)
cond=[y(0)==0,dy(0)==9]
ySol=simplify(dsolve(eqn,cond))
% (exp(x)*(34*exp(2*x) + exp(4*x) - 35))/8

% Checking
eqn10=diff(y,x,2)-4*diff(y,x)+3*y-exp(5*x)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0