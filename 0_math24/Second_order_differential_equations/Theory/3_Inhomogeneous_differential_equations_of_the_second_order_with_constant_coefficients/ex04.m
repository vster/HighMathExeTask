clear
syms x y(x)
eqn=diff(y,x,2)+9*y-(2*x^2-5)
ySol=simplify(dsolve(eqn))
% (2*x^2)/9 + C14*cos(3*x) + C15*sin(3*x) - 49/81

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0