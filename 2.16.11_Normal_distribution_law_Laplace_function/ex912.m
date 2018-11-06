clear
sigma1=0.4
a1=25
delta1=0.16

% P(a-delta<X<a+delta)=P(|X-a|<delta)=2*erf(delta/sigma)
% P1=P(|X-25|<0.16)
P1=2*erf((delta1/sigma1)/sqrt(2))/2
% 0.3108
P2=P1^2
% 0.0966