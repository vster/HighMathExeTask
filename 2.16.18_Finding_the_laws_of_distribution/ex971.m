% Kolmogorov consent criterion
ex961
X=X
W=W
P=P1
F1=cumsum(W)
F2=cumsum(P)
DF=F1-F2
D=max(F1-F2)
% 4.5e-3
lam=D*sqrt(n)
% From Tab.VI
P(D)=1.00 % > 0.1
% statistical distribution does not contradict the theoretical distribution
