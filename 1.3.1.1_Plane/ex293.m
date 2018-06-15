% Write the equation of the plane passing through 
% the intersection of planes x+3*y+5*z-4=0 and x-y-2*z+7=0
% and parallel to the axis 0y.

syms x y z lam;
f1=x+3*y+5*z-4
f2=x-y-2*z+7

f3=expand(f1+lam*f2)
slam=solve(3-lam)
% 3
f3=subs(f3,lam,slam)
% 4*x - z + 17 = 0