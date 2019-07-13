clear
% J=int_int(D)(sqrt(1+(dz/dx)^2+(dz/dy)^2))*dx*dy

% dz/dx=p, dz/dy=q
syms p q z
F=sqrt(1+p^2+q^2)
dFdz=diff(F,z)
% 0
dFdp=diff(F,p)
% p/(p^2 + q^2 + 1)^(1/2)
dFdq=diff(F,q)
% q/(p^2 + q^2 + 1)^(1/2)

syms x y p1(x,y) q1(x,y)
dFdp=subs(dFdp,[p q],[p1 q1])
% p1(x, y)/(p1(x, y)^2 + q1(x, y)^2 + 1)^(1/2)
dFdq=subs(dFdq,[p q],[p1 q1])
% q1(x, y)/(p1(x, y)^2 + q1(x, y)^2 + 1)^(1/2)

eq1=simplify(dFdz-diff(dFdp,x)-diff(dFdq,y))

syms r s t
% d2z/dx2=r,d2z/dxdy=s,d2z/dy2=t
eq2=subs(eq1,[diff(p1(x, y), x) diff(q1(x, y), x)... 
              diff(p1(x, y), y) diff(q1(x, y), y)],[r s s t])
eq3=subs(eq2,[p1 q1],[p q]) 
eq3=-eq3
% (t*p^2 - 2*s*p*q + r*q^2 + r + t)/(p^2 + q^2 + 1)^(3/2)
