clear
syms x y(x)
eqn=diff(y,x,2)+y-sec(x)^2
ySol=simplify(dsolve(eqn))
% C18*cos(x) - sin(x)*(log(cos(x)) - log(sin(x) + 1)) + C19*sin(x) - 1

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0