clear
digits(5)
X=7:13
Y=[7.4 8.4 9.1 9.4 9.5 9.5 9.4]
n=7
K=1:n
X
X2=X.^2
X3=X.^3
X4=X.^4
Y
XY=X.*Y
X2Y=X2.*Y

sx=sum(X)
sx2=sum(X2)
sx3=sum(X3)
sx4=sum(X4)
sy=sum(Y)
sxy=sum(XY)
sx2y=sum(X2Y)

syms a0 a1 a2
eq1=vpa(sx2*a0+sx*a1+n*a2-sy)
% 728.0*a0 + 70.0*a1 + 7.0*a2 - 62.7
eq2=vpa(sx3*a0+sx2*a1+sx*a2-sxy)
% 7840.0*a0 + 728.0*a1 + 70.0*a2 - 635.6
eq3=vpa(sx4*a0+sx3*a1+sx2*a2-sx2y)
% 86996.0*a0 + 7840.0*a1 + 728.0*a2 - 6683.4

[a0 a1 a2]=solve([eq1 eq2 eq3],[a0 a1 a2])

syms x
phi(x)=a0*x^2+a1*x+a2
% - 0.1119*x^2 + 2.5452*x - 4.8571
Y2=phi(X)
% [ 7.4762, 8.3429, 8.9857, 9.4048, 9.6, 9.5714, 9.319]

plot(X,Y)
hold on
plot(X,Y2)
grid on
hold off



