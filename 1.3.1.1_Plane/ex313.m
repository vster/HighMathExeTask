% Write the equation of the plane passing through 
% the intersection of planes 
% A1*x+B1*y+C1*z+D1=0 and A2*x+B2*y+C2*z+D2
% and through the origin.

clear
syms x y z A1 B1 C1 D1 A2 B2 C2 D2 lam real;
r=[x,y,z]
f1=A1*x+B1*y+C1*z+D1
f2=A2*x+B2*y+C2*z+D2

f3=expand(f1+lam*f2)
% D1 + D2*lam + A1*x + B1*y + C1*z + A2*lam*x + B2*lam*y + C2*lam*z
f3=collect(f3,r)
% (A1 + A2*lam)*x + (B1 + B2*lam)*y + (C1 + C2*lam)*z + D1 + D2*lam

slam=solve(D1+D2*lam == 0,lam)
% -D1/D2

f3=subs(f3,lam,slam)
% y*(B1 - (B2*D1)/D2) + z*(C1 - (C2*D1)/D2) + x*(A1 - (A2*D1)/D2)
f3=simplify(D2*f3)
f3=collect(f3,r)
% (A1*D2 - A2*D1)*x + (B1*D2 - B2*D1)*y + (C1*D2 - C2*D1)*z
