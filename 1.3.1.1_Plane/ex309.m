% Write the equation of the plane passing through 
% the intersection of planes 
% x+5*y+9*z-13=0 and 3*x-y-5*z+1=0, 
% and through the point M=[0,2,1].

syms x y z lam;
f1=x+5*y+9*z-13
f2=3*x-y-5*z+1
M=[0,2,1]
R=[x,y,z]

f3=f1+lam*f2
% x + 5*y + 9*z + lam*(3*x - y - 5*z + 1) - 13
f3=collect(f3,R)
% (3*lam + 1)*x + (5 - lam)*y + (9 - 5*lam)*z + lam - 13
f3M=subs(f3,R,M)
% 6 - 6*lam
slam=solve(f3M)
% 1
f3=subs(f3,lam,slam)
f3=f3/4
% x + y + z - 3 = 0
