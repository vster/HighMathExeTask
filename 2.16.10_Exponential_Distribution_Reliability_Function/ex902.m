lam=0.02
syms t
F(t)=1-exp(-lam*t)

F1=vpa(F(24))
% 0.381
F2=vpa(1-F(24))
% 0.619