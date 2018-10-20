% Find a solution to the equation 
% y''-2*y*cos(phi)+y=2*sin(x)*cos(phi)

% 1)
clear
syms x y(x) phi
eqn=diff(y,x,2)-2*y*cos(phi)+y==2*sin(x)*cos(phi)
ySol=simplify(dsolve(eqn))
% C13*exp(x*(2*cos(phi) - 1)^(1/2)) - sin(x) + C14*exp(-x*(2*cos(phi) - 1)^(1/2))

% Checking
eqn10=diff(y,x,2)-2*y*cos(phi)+y-2*sin(x)*cos(phi)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0