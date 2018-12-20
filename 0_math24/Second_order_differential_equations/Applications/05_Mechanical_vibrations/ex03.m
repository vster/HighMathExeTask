% Find the quality factor of the oscillator, 
% if after 50 oscillations the bias amplitude has decreased by 2 times.
syms N x0 xN

delta=1/N*log(x0/xN)
delta1=subs(delta,[N, x0/xN],[50 2])
digits(3)
delta1=vpa(delta1)
% 0.0139
Q=vpa(pi/delta1)
% 227.0