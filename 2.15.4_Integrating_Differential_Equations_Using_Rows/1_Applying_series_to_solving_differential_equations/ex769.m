clear
syms x y(x)
eqn=diff(y,x,2)-((2*x-1)*y-1)
dy=diff(y)
cond=[y(0)==0,dy(0)==1]
ySol=simplify(dsolve(eqn,cond))
% ???

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0