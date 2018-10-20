% Find a solution to the equation 
% y''-y=2*sinh(x)
% satisfying the initial conditions 
% y(0)=0,y'(0)=1

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)-y==2*sinh(x)
dy(x)=diff(y)
cond=[y(0)==0,dy(0)==1]
ySol=simplify(dsolve(eqn,cond))
% x*cosh(x)

% Checking
eqn10=diff(y,x,2)-y-2*sinh(x)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0