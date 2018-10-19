% Find a solution to the equation 
% y''+4y=cos(2*x)
% satisfying the initial conditions 
% y(0)=0,y(pi/4)=0

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)+4*y==cos(2*x)
dy(x)=diff(y)
cond=[y(0)==0,y(pi/4)==0]
ySol=simplify(dsolve(eqn,cond))
% (sin(2*x)*(4*x - pi))/16

% Checking
eqn10=diff(y,x,2)+4*y-cos(2*x)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0