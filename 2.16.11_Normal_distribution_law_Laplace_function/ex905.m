m=40
sig=0.4
P1=0.8

% Find eps, that
% P(|X-40|<eps)=0.8
syms eps
P=erf(eps/(0.4*sqrt(2)))
eps1=solve(erf((5*2^(1/2)*eps)/4)==0.8)
% (2*2^(1/2)*erfinv(4/5))/5
digits(3)
eps1=vpa(eps1)
% 0.513