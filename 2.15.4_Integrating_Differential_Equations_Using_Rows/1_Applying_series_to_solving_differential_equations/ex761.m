% Solve equation
% y''+x^2*y=0
% y(0)=0,y'(0)=1

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)+x^2*y
dy=diff(y,x)
cond=[y(0)==0,dy(0)==1]
ySol=simplify(dsolve(eqn,cond))
% (x*pi*besselj(1/4, (x^4)^(1/2)/2))/(2*gamma(3/4)*(x^4)^(1/8))

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0