syms t
lam=5
F(t)=1-exp(-lam*t)

% 1)
F1=F(0.5)
% 1 - exp(-5/2)
F1=vpa(F1)
% 0.918

% 2)
alfa=0.1
beta=0.4
F2=exp(-alfa*lam)-exp(-beta*lam)
% 0.4712