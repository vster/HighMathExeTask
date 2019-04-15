clear
syms x y(x)
eqn=diff(y,x,4)+diff(y,x,3)-diff(y,x,2)-2*diff(y,x)-(2*x+2*sin(x))
% ySol=simplify(dsolve(eqn))
% 

syms C1 C2 C3 C4
cond=[C1,C2,C3,C4]
ySol2=opercalc2(eqn,cond)