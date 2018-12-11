clear
syms x y(x)
eqn=diff(y,x,4)-diff(y,x,3)-1
dy(x)=diff(y,x)
d2y(x)=diff(y,x,2)
d3y(x)=diff(y,x,3)
cond=[y(0)==0,dy(0)==0,d2y(0)==0,d3y(0)==0]
ySol=simplify(dsolve(eqn,cond))
% exp(x) - x - x^2/2 - x^3/6 - 1

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end