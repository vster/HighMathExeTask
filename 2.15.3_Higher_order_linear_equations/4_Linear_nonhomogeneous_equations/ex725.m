% Find a solution to the equation 
% y''-6y'+8y=3*x^2+2*x+1

% 1)
syms x y(x)
eqn=diff(y,x,2)-6*diff(y,x)+8*y==3*x^2+2*x+1
ySol=simplify(dsolve(eqn,cond))
% (13*x)/16 - exp(2*x - pi)*((5*pi)/8 + (3*pi^2)/16 - 53/8) + exp(4*x - 2*pi)*((7*pi)/32 + (3*pi^2)/32 - 209/64) + (3*x^2)/8 + 41/64

% Checking
eqn10=diff(y,x,2)-6*diff(y,x)+8*y-(3*x^2+2*x+1)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0