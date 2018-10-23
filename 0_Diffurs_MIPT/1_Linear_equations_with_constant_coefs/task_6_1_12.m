clear
syms x y(x)
eqn=diff(y,x,3)-diff(y,x,2)-diff(y,x)+y-(x^2+4*exp(x))
ySol=simplify(dsolve(eqn))
% 2*x + exp(x)/2 + x^2*exp(x) + C21*exp(x) - x*exp(x) + x^2 + C23*exp(-x) + C22*x*exp(x) + 4

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0