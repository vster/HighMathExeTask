clear
syms x y(x)
eqn=diff(y,x,4)-y-2*cos(x)
ySol=simplify(dsolve(eqn))
% C7*cos(x) - cos(x)/2 + C10*exp(x) + C8*sin(x) - (x*sin(x))/2 + C9*exp(-x)

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))    
end