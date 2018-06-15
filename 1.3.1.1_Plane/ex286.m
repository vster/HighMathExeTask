% The equation of the plane
% 2*x+3*y-6*z+21=0
% lead to a normal form

syms x y z;
f=2*x+3*y-6*z+21
N=[2,3,-6]

Nn=norm(N)
% 7

% The normalizing factor mu
mu=-1/Nn

f=f*mu
% (6*z)/7 - (3*y)/7 - (2*x)/7 - 3 = 0
pretty(f)