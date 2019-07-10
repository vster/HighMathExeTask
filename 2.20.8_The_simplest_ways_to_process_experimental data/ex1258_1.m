clear
digits(5)
X=1:6
Y=[2 4.9 7.9 11.1 14.1 17]

n=length(X)
K=1:n
X
X2=X.^2
X3=X.^3
Y
XY=X.*Y

sx=sum(X)
sx2=sum(X2)
sx3=sum(X3)
sy=sum(Y)
sxy=sum(XY)

syms a0 a1
eq1=vpa(sx*a0+n*a1-sy)
% 21.0*a0 + 6.0*a1 - 57.0
eq2=vpa(sx2*a0+sx*a1-sxy)
% 91.0*a0 + 21.0*a1 - 252.4

[a0 a1]=solve([eq1 eq2],[a0 a1])

syms x
phi(x)=a0*x+a1
% 3.0229*x - 1.08
Y2=phi(X)
% [ 1.9429, 4.9657, 7.9886, 11.011, 14.034, 17.057]

phi2(x)=approxlin(X,Y)
% 3.0229*x - 1.08
Y3=phi2(X)

plot(X,Y,'o',X,Y2)
grid


