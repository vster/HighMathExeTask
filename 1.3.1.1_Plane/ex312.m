% Write the equation of the plane passing through 
% the intersection of planes 
% 2*x-y-12*z-3=0 and 3*x+y-7*z-2=0, 
% and perpendicular to the plane x+2*y+5*z-1=0.

syms x y z real;
r=[x,y,z]
f1=2*x-y-12*z-3
f2=3*x+y-7*z-2
f4=x+2*y+5*z-1

f3=expand(f1+lam*f2)
f3=collect(f3,r)
% (3*lam + 2)*x + (lam - 1)*y + (- 7*lam - 12)*z - 2*lam - 3

N1=[2+3*lam,-1+lam,-12-7*lam]
N2=[1,2,5]

cos_phi=dot(N1,N2)/(norm(N1)*norm(N2))
% -(30^(1/2)*(30*lam + 60))/(30*(abs(lam - 1)^2 + 
%    + abs(3*lam + 2)^2 + abs(7*lam + 12)^2)^(1/2))
slam=solve(cos_phi==0)
% -2
f3=subs(f3,lam,slam)
% 2*z - 3*y - 4*x + 1 = 0
f3=-f3
% 4*x + 3*y - 2*z - 1 = 0



