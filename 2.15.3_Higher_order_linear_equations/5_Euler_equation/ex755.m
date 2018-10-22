% Find a solution to the equation 
% x^2*y''-3*x*y'+4*y=x^2/2
% satisfying the initial conditions 
% y(1)=1/2,y(4)=0

% 1)
clear
syms x y(x)
eqn=x^2*diff(y,x,2)-3*x*diff(y,x)+4*y-x^2/2
dy(x)=diff(y)
cond=[y(1)==1/2,y(4)==0]
ySol=simplify(dsolve(eqn,cond))
% (x^2*log(x)^2)/4 + x^2/2 - (x^2*log(x)*(log(4)^2 + 2))/(4*log(4))

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0