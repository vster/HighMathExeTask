% Find a solution to the equation 
% y''+y=3*sin(x)
% satisfying the initial conditions 
% y(0)+y'(0)=0,y(pi/2)+y'(pi/2)=0

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)+y-3*sin(x)
dy(x)=diff(y)
cond=[y(0)+dy(0)==0,y(pi/2)+dy(pi/2)==0]
ySol=simplify(dsolve(eqn,cond))
% (3*cos(x))/4 + (3*sin(x))/4 + (3*pi*cos(x))/8 - (3*pi*sin(x))/8 - (3*x*cos(x))/2

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0