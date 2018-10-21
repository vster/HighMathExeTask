% Find a solution to the equation 
% diff(y,x,2)+9*y==2*sin(x)*sin(2*x)
% satisfying the initial conditions 
% y(0)=0,y(pi/2)=0

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)+9*y==2*sin(x)*sin(2*x)
dy(x)=diff(y)
cond=[y(0)==0,y(pi/2)==0]
ySol=simplify(dsolve(eqn,cond))
% cos(x)/8 - cos(3*x)/8 - (x*sin(3*x))/6 + (pi*sin(3*x))/12

% Checking
eqn10=diff(y,x,2)+9*y-2*sin(x)*sin(2*x)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0