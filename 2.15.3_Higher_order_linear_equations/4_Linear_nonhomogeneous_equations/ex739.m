% Find a solution to the equation 
% y''-4*y'+8*y=61*exp(2*x)*sin(x)
% satisfying the initial conditions 
% y(0)=0,y'(0)=4

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)-4*diff(y,x)+8*y==61*exp(2*x)*sin(x)
dy(x)=diff(y)
cond=[y(0)==0,dy(0)==4]
ySol=simplify(dsolve(eqn,cond))
% -(exp(2*x)*(49*sin(2*x) - 122*sin(x)))/6

% Checking
eqn10=diff(y,x,2)-4*diff(y,x)+8*y-61*exp(2*x)*sin(x)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0