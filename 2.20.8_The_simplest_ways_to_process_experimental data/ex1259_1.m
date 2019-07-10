clear
digits(5)
X=7:13
Y=[3.1 4.9 5.3 5.8 6.1 6.4 5.9]
n=length(X)
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
% 728.0*a0 + 70.0*a1 + 7.0*a2 - 37.5
eq2=vpa(sx3*a0+sx2*a1+sx*a2-sxy)
% 7840.0*a0 + 728.0*a1 + 70.0*a2 - 387.2
eq3=vpa(sx4*a0+sx3*a1+sx2*a2-sx2y)
% 86996.0*a0 + 7840.0*a1 + 728.0*a2 - 4131.6

[a0 a1 a2]=solve([eq1 eq2 eq3],[a0 a1 a2])

syms x
phi(x)=a0*x^2+a1*x+a2
% - 0.14762*x^2 + 3.3881*x - 13.171
Y2=phi(X)
% [ 3.3119, 4.4857, 5.3643, 5.9476, 6.2357, 6.2286, 5.9262]
D=Y-Y2
% [ -0.2119, 0.41429, -0.064286, -0.14762, -0.13571, 0.17143, -0.02619]

syms x
phi3(x)=approxsqr(X,Y)
% - 0.14762*x^2 + 3.3881*x - 13.171
Y3=phi3(X)

plot(X,Y,'o',X,Y2)
grid



