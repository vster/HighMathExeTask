clear
syms x y(x)
eqn=diff(y,x,2)+25*y
ySol=simplify(dsolve(eqn))
% C4*cos(5*x) + C5*sin(5*x)

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0