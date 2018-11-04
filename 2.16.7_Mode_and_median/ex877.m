syms x
f(x)=piecewise(x<0,0,0<=x<=2,x-1/4*x^3,x>2,0)

syms mu
assume(0<mu<2)
P=int(f(x),x,0,mu)
% -(mu^2*(mu^2 - 8))/16
 
mu1=solve(P==0.5,mu)
% (4 - 2*2^(1/2))^(1/2)
digits(3)
mu1=vpa(mu1)
% 1.08