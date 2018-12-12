clear
syms x y(x)
eqn=diff(y,x,4)-4*diff(y,x,3)+5*diff(y,x,2)-4*diff(y,x)+4*y
ySol=simplify(dsolve(eqn))
% C18*cos(x) + C19*sin(x) + C16*exp(2*x) + C17*x*exp(2*x)

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))    
end