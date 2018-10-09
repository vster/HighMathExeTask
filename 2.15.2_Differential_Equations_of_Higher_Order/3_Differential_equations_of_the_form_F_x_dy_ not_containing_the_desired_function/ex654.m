% Solve equation
% (1+x^2)*y''+1+y'^2=0

% 1)
clear
syms x a y(x)
assume(y(x),'real')
eqn=(1+x^2)*diff(y,x,2)+1+diff(y,x)^2==0
ySol=simplify(dsolve(eqn))
% C20 - x/tan(C18) + (log(x*tan(C18) + 1)*(tan(C18)^2 + 1))/tan(C18)^2
%                                                           C20 + x*1i
%                                                           C20 - x*1i

% Checking
eqn10=(1+x^2)*diff(y,x,2)+1+diff(y,x)^2
for i=1:3
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0, 0]