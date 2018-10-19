% Solve equation
% y''=(2*y+3)*(y')^2

% 1)
clear
syms x y(x)
assume(y(x),'real')
eqn=diff(y,x,2)==(2*y+3)*diff(y,x)^2
ySol=dsolve(eqn)
%                                                 C25
%  erfinv((2*exp(-9/4)*(C23 + C21*x))/pi^(1/2)) - 3/2

% Checking
eqn10=diff(y,x,2)-(2*y+3)*diff(y,x)^2
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0]