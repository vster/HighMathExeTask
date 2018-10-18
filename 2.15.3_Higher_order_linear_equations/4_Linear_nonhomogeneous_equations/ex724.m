% Find a solution to the equation 
% y''+y=cos(3*x)
% satisfying the initial conditions 
% y(pi/2)=4,y'(pi/2)=1

% 1)
syms x y(x)
eqn=diff(y,x,2)+diff(y,x)==cos(3*x)
dy(x)=diff(y)
cond=[y(pi/2)==4,dy(pi/2)==1]
ySol=simplify(dsolve(eqn,cond))
% sin(3*x)/30 - cos(3*x)/10 - (13*exp(pi/2 - x))/10 + 16/3

% Checking
eqn10=diff(y,x,2)+diff(y,x)-cos(3*x)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0