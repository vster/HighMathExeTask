clear
syms x y(x)
eqn=diff(y,x,3)-sqrt(1-diff(y,x,2)^2)
ySol=simplify(dsolve(eqn))
%       C53 + (x*(C52 + x))/2
%  C53 - sin(C50 + x) + C52*x
%       C53 + (x*(C52 - x))/2

% Checking
syms C50
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
    chk(i)=subs(chk(i),(cos(C50 + x)^2)^(1/2),cos(C50 + x))
end