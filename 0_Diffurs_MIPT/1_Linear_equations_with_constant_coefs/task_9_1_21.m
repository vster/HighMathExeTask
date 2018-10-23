clear
syms x y(x)
eqn=diff(y,x,3)-diff(y,x,2)+9*diff(y,x)-9*y-(60*cos(3*x)+4*x*exp(-x))
ySol=simplify(dsolve(eqn))
% (9*sin(3*x))/5 - (7*exp(-x))/50 - (14*cos(3*x))/15 - 3*x*cos(3*x) - (x*exp(-x))/5 - x*sin(3*x) + C32*exp(x) + C30*cos(3*x) + C31*sin(3*x)

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0