% Write the equation of the plane passing through 
% the intersection of the planes 
% x+y+5*z-1=0 and 2*x+3*y-z+2=0 and through the point 
% M=[3,2,1]

syms x y z lam;
f1=x+y+5*z-1
f2=2*x+3*y-z+2
M=[3,2,1]
R=[x,y,z]

f3=f1+lam*f2
% x + y + 5*z + lam*(2*x + 3*y - z + 2) - 1
f3M=subs(f3,R,M)
% 13*lam + 9

slam=solve(f3M)
% -9/13
f3=subs(f3,lam,slam)
% (74*z)/13 - (14*y)/13 - (5*x)/13 - 31/13
f3=-f3*13
% 5*x + 14*y - 74*z + 31 = 0