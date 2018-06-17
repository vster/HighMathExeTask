% Find the equation of the plane passing through the points 
% P=[0,2,0] and Q=[2,0,0] , and forming an angle of 60 degrees 
% with the plane x = 0.

clear
syms x y z x3 y3 z3;
P=[0,2,0]
Q=[2,0,0]
R=[x,y,z]
n=[1,0,0]

syms A1 B1 C1 D1;
p=A1*x+B1*y+C1*z+D1
N=[A1,B1,C1]
p1=subs(p,R,P)
% 2*B1 + D1 = 0 => D1=-2*B1
p2=subs(p,R,Q)
% 2*A1 + D1 = 0
% then A1=B1 and D1=-2*A1

cos_phi=dot(N,n)/(norm(N)*norm(n))
% A1/(abs(A1)^2 + abs(B1)^2 + abs(C1)^2)^(1/2)) = 1/2
% sqrt(A1^2+B1^2+C1^2)=2*A1
% A1^2+A1^2+C1^2=4*A1^2
% C1^2=2*A1^2
% C1=+-sqrt(2)*A1

% A1*x+A1*y+-sqrt(2)*A1*z-2*A1=0
% x+y+-sqrt(2)*z-2=0
% or
% x/2+y/2+z/(+-sqrt(2)=1