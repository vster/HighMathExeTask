syms x y z;
pl1=2*x+3*y-16*z-7
pl2=3*x+y-17*z

s1=[2 3 -16]
s2=[3 1 -17]

s=cross(s1,s2)
% -35   -14    -7
% 5 2 1
   
% x=0
slv=solve(subs(pl1,x,0)==0,subs(pl2,x,0)==0)
M=[0 slv.y slv.z]
% [ 0, 17/5, 1/5]

% x/5=(y-17/5)/2=(z-1/5)/1

% z=0
slv=solve(subs(pl1,z,0)==0,subs(pl2,z,0)==0)
M=[slv.x slv.y 0]
% [ -1, 3, 0]

% (x+1)/5=(y-3)/2=z/1