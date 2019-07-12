clear
% J=int_int(D)((dz/dx)^2+(dz/dy)^2+2*z*phi(x,y))*dx*dy

% dz/dx=p, dz/dy=q
syms p q z 
syms x y phi(x,y)
F=p^2+q^2+2*z*phi
dFdz=diff(F,z)
% 2*phi(x, y)
dFdp=diff(F,p)
% 2*p
dFdq=diff(F,q)
% 2*q

syms x y p1(x,y) q1(x,y)
dFdp=subs(dFdp,[p q],[p1 q1])
% 2*p1(x, y)
dFdq=subs(dFdq,[p q],[p1 q1])
% 2*q1(x, y)

eq1=simplify(dFdz-diff(dFdp,x)-diff(dFdq,y))
% 2*phi(x, y) - 2*diff(q1(x, y), y) - 2*diff(p1(x, y), x)
syms z(x,y)
eq2=phi(x,y)-diff(z,x,2)-diff(z,y,2)