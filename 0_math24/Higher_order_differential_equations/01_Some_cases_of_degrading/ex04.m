clear
syms x y(x)
eqn=y*diff(y,x,3)-diff(y,x)*diff(y,x,2)
ySol=simplify(dsolve(eqn))
%  C31 + C20*x
%  C30 - C20*x 

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end