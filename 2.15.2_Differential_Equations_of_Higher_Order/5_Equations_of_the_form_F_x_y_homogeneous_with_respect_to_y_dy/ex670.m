% Solve equation
% 2*x*y'''*y''=y''^2-a^2

% 1)
clear
syms x y(x) a
eqn=2*x*diff(y,x,3)*diff(y,x,2)==diff(y,x,2)^2-a^2
ySol=simplify(dsolve(eqn))
%                                   (a*x^2)/2 + C31*x + C32
%                                   C32 + C31*x - (a*x^2)/2
% C32 + C31*x + (4*exp(-C29)*(exp(2*C29)*a^2 + x)^(5/2))/15
% C32 + C31*x - (4*exp(-C29)*(exp(2*C29)*a^2 + x)^(5/2))/15

% Checking
eqn10=2*x*diff(y,x,3)*diff(y,x,2)-(diff(y,x,2)^2-a^2)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0, 0, 0]