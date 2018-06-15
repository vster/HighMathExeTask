% Write the equation of the plane passing through point A=[5,4,3] 
% and cutting off equal segments on the coordinate axes.

syms x y z a b c;
A=[5,4,3]
R=[x,y,z]

p=x/a+y/b+z/c-1
% a=b=c
p=x/a+y/a+z/a-1

fM=subs(p,R,A)
% 12/a - 1

sa=solve(fM)
% 12

% The equation of the plane
p=subs(p,a,sa)
p=p*12
% x + y + z - 12 = 0
