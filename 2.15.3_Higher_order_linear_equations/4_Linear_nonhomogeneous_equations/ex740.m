% Show that the general solution of the differential equation 
% y''-m^2*y=0 can be represented as y=C1*cosh(m*x)+C2*sinh(m*x)

% 1)
clear
syms x y(x)
syms C1 C2 m
ySol=C1*cosh(m*x)+C2*sinh(m*x)

% Checking
eqn10=diff(y,x,2)-m^2*y
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0