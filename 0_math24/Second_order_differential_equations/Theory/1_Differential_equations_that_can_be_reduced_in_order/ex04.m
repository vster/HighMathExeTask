% Solve equation
% sqrt(x)*y''=(y')^2

% 1)
clear
syms x y(x)
assume(y(x),'real')
eqn=sqrt(x)*diff(y,x,2)==diff(y,x)^2
ySol=dsolve(eqn)
%                                           C20
%  C20 - x^(1/2) + (C18*log(C18 + 2*x^(1/2)))/2

% Checking
eqn10=sqrt(x)*diff(y,x,2)-diff(y,x)^2
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0]