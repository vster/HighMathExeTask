syms x y z lam;
f1=x+2*y+3*z-5
f2=3*x-2*y-z+1

f3=f1+lam*f2
f3=expand(f3)
slam=solve(1+3*lam==3-lam)
f3=subs(f3,lam,slam)
f3=2*f3
% 5*x + 2*y + 5*z - 9