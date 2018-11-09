% L(t)=Lmax*(1-exp(-k*t)
% exp(-k*t)=1-L(t)/Lmax
% k=-log(1-L(t)/Lmax)/t

syms t
L1=100
Lmax=1000
t=1
digits(3)
k=-log(1-L1/Lmax)/1

L2=Lmax*(1-exp(-k*2))
% 190