% Solve the differential equation 
% y'*cot(x)^2 + tan(y) = 0

clear
% 1)
% dy/dx*cot(x)^2+tan(y)=0
% dy*cot(x)^2+tan(y)*dx=0
% dy/tan(y)+tan(x)^2*dx=0
syms x y
eq1=int(1/tan(y),y)+int(tan(x)^2,x)
% log(tan(y)) - log(tan(y)^2 + 1)/2 - x + tan(x)
% log(tan(y))+log(cos(y)) - x + tan(x)=C
% log(abs(sin(y)))- x + tan(x)=C

% 2)
% y'=-tan(y)*tan(x)^2
syms x y(x)
eqn=diff(y(x))==-tan(y)*tan(x)^2
ySol=dsolve(eqn)
%                           0
%  asin(exp(C5 + x - tan(x))) = y

% log(abs(sin(y)))=C5+x-tan(x)
% log(abs(sin(y)))+tan(x)-x=C5