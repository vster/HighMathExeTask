clear
syms x y(x)
eqn=diff(y,x,4)+diff(y,x,3)-diff(y,x,2)-2*diff(y,x)-(2*x+2*sin(x))
ySol=simplify(dsolve(eqn))
% 

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0