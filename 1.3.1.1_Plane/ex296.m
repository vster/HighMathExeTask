% Lead to the normal plane equation
% 1) x+y-z-2=0
% 2) 3*x+5*y-4*z+7=0

syms x y z;
% 1)
f1=x+y-z-2

N=sym([1,1,-1])
Nn=norm(N)
% 3^(1/2)

% The normalizing factor mu
mu=-1/Nn
% -3^(1/2)/3

f1=expand(f1*mu)
% (3^(1/2)*z)/3 - (3^(1/2)*y)/3 - (3^(1/2)*x)/3 + (2*3^(1/2))/3
pretty(f1)

% 2)
f2=3*x+5*y-4*z+7

N=sym([3,5,-4])
Nn=norm(N)
% 50^(1/2)
% The normalizing factor mu
mu=-1/Nn
% -50^(1/2)/50 = -1/(sqrt(2)*5)
mu=-1/(sqrt(sym(2))*5)

f2=expand(f2*mu)
% (2*2^(1/2)*z)/5-(2^(1/2)*y)/2-(3*2^(1/2)*x)/10-(7*2^(1/2))/10=0
pretty(f2)
