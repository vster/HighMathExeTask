clear
syms x y(x)
eqn=diff(y,x,5)+18*diff(y,x,3)+81*diff(y,x)
ySol=simplify(dsolve(eqn))
% C11 + C12*cos(3*x) + C14*sin(3*x) + C13*x*cos(3*x) + C15*x*sin(3*x)

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))    
end