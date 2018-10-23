% Solve equation
% y''=sqrt(1-diff(y,x)^2)

% 1)
clear
syms x y(x)
assume(y(x),'real')
eqn=diff(y,x,2)==sqrt(1-diff(y,x)^2)
ySol=dsolve(eqn)
%  C16 + x
% C15 - x

% Checking
eqn10=diff(y,x,2)-sqrt(1-diff(y,x)^2)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0