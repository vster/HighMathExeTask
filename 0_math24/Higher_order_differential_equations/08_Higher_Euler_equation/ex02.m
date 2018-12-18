clear
syms x y(x)
eqn=x^4*diff(y,x,4)+6*x^3*diff(y,x,3)+9*x^2*diff(y,x,2)+3*x*diff(y,x)+y
ySol=simplify(dsolve(eqn))
% C28*cos(log(x)) + C26*sin(log(x)) + C27*cos(log(x))*log(x) + C25*sin(log(x))*log(x)

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))    
end