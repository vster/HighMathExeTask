% Find the equation of a plane whose points are equally 
% remote from the points P=[1,-4,2] and Q=[7,1,-5]

syms x y z
r=[x,y,z]
P=[1,-4,2]
Q=[7,1,-5]

N=Q-P
M=(P+Q)/2
%    4.0000   -1.5000   -1.5000

f=N(1)*(x-M(1))+N(2)*(y-M(2))+N(3)*(z-M(3))
% 6*x + 5*y - 7*z - 27 = 0

f1=dot(N,r-M)
% 6*x + 5*y - 7*z - 27 = 0