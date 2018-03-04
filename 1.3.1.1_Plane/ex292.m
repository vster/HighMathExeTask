syms x y z lam;
f1=x+y+5*z-1
f2=2*x+3*y-z+2
M=[3,2,1]

f3=f1+lam*f2
f3M=subs(f3,[x y z],M)
slam=solve(f3M)
f3=subs(f3,lam,slam)
f3=-f3*13

% 5*x + 14*y - 74*z + 31 = 0