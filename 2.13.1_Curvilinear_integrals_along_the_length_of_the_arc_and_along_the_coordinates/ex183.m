% Find mass M of curve
% x=t,y=t^2/2,z=t^3/3 (0<=t<=1)
% the linear density of which varies according to the law
% gamma=sqrt(2*y)

syms t;
x=t
y=t^2/2
z=t^3/3
gamma=sqrt(2*y)

f=gamma*sqrt(diff(x)^2+diff(y)^2+diff(z)^2)
% (t^2)^(1/2)*(t^4 + t^2 + 1)^(1/2)
f=t*(t^4 + t^2 + 1)^(1/2)

M=int(f,t,0,1)
% (3*log(2*3^(1/2) + 3))/16 - (3*log(3))/16 + (3*3^(1/2))/8 - 1/8