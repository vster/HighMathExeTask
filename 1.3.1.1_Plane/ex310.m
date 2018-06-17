% Write the equation of the plane passing through 
% the intersection of planes 
% x+2*y+3*z-5=0 and 3*x-2*y-z+1=0, 
% and cutting off equal segments on the axes 0x and 0z.

syms x y z lam;
f1=x+2*y+3*z-5
f2=3*x-2*y-z+1
R=[x,y,z]

f3=f1+lam*f2
% x + 2*y + 3*z + lam*(3*x - 2*y - z + 1) - 5
f3=expand(f3)
f3=collect(f3,R)
% (3*lam + 1)*x + (2 - 2*lam)*y + (3 - lam)*z + lam - 5
slam=solve(1+3*lam==3-lam)
% 1/2
f3=subs(f3,lam,slam)
% (5*x)/2 + y + (5*z)/2 - 9/2
f3=2*f3
% 5*x + 2*y + 5*z - 9