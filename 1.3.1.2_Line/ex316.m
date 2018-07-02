% The equation of a straight line given as the line 
% of intersection of planes
% 2*x-y+3*z-1=0
% 5*x+4*y-z-7-7=0
% lead to canonical form.
syms x y z;
s1=2*x-y+3*z-1
s2=5*x+4*y-z-7-7

N1=[2,-1,3]
N2=[5,4,-1]

s=cross(N1,N2)
%    -11    17    13

slv=solve(-y+3*z-1==0,4*y-z-7==0)
M=[0,2,1]

eq1=(x-M(1))/s(1)
% -x/11
eq2=(y-M(2))/s(2)
% y/17 - 2/17
eq3=(z-M(3))/s(3)
% z/13 - 1/13

% 1/-11 = (y-2)/17 = (z-1)/13
