% Poisson distribution
clear
digits(5)
X=[0 1 2 3 4 5 6 7]
nx=[7 21 26 21 13 7 3 2]

n=sum(nx)
% 100
W=nx/n
% 0.07 0.21 0.26 0.21 0.13 0.07 0.03 0.02
MX=sum(X.*W)
% 2.5500
MX2=sum(X.^2.*W)
% 9.0300
DX=MX2-MX^2
% 2.5275
lam=DX
syms x
P(x)=exp(-lam)*lam^x/factorial(x)

digits(2)
for i=0:7
    P1(i+1)=vpa(P(i));
end
disp(P1)
% [ 0.08, 0.2, 0.26, 0.21, 0.14, 0.069, 0.029, 0.01]