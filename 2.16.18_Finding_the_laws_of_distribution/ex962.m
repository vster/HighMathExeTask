% Poisson distribution
clear
digits(5)
X= [0 1 2 3 4 5 6 7 8 9 10 11]
nx=[1 3 8 14 17 17 15 10 7 5 2 1]

n=sum(nx)
% 100
W=nx/n
% 0.01 0.03 0.08 0.14 0.17 0.17 0.15 0.1 0.07 0.05 0.02 0.01
MX=sum(X.*W)
% 5.0600
MX2=sum(X.^2.*W)
% 30.6200
DX=MX2-MX^2
% 5.0164
lam=vpa(DX)
syms x
P(x)=exp(-lam)*lam^x/factorial(x)

digits(2)
for i=0:11
    P1(i+1)=vpa(P(i));
end
disp(P1)
% [ 6.6e-3, 0.033, 0.083, 0.14, 0.17, 0.18, 0.15, 0.11, 0.066, 0.037, 0.018, 8.4e-3]