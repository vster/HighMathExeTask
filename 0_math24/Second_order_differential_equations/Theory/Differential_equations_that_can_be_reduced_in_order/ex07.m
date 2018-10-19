% Solve equation
% y*y''+(y')^2=2*x+1

% 1)
clear
syms x y(x)
assume(y(x),'real')
eqn=y*diff(y,x,2)+diff(y,x)^2==2*x+1
ySol=dsolve(eqn)
%   2^(1/2)*(C32 + (x*(2*x^2 + 3*x + C30))/6)^(1/2)
%  -2^(1/2)*(C32 + (x*(2*x^2 + 3*x + C30))/6)^(1/2)

% Checking
eqn10=y*diff(y,x,2)+diff(y,x)^2-(2*x+1)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0]