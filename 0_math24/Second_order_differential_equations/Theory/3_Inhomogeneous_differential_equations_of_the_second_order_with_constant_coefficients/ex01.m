clear
syms x y(x)
eqn=diff(y,x,2)+y-sin(2*x)
ySol=simplify(dsolve(eqn))
% C8*cos(x) - (2*cos(x)*sin(x))/3 + C9*sin(x)

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0