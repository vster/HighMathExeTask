% Find a solution to the equation 
% y''-6y'+8y=3*x^2+2*x+1

% 1)
syms x y(x)
eqn=diff(y,x,2)-6*diff(y,x)+8*y==3*x^2+2*x+1
ySol=simplify(dsolve(eqn))
% (13*x)/16 + (3*x^2)/8 + C2*exp(2*x) + C1*exp(4*x) + 41/64

% Checking
eqn10=diff(y,x,2)-6*diff(y,x)+8*y-(3*x^2+2*x+1)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0