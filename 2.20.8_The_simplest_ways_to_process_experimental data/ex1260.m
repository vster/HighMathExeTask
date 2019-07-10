clear
digits(5)
% S=A*t^q
T=1:5
S=[7.1 15.2 48.1 96.3 150.1]
n=length(T)
K=1:n
X=log10(T)
X2=X.^2
Y=log10(S)
XY=X.*Y

sx=sum(X)
sx2=sum(X2)
sy=sum(Y)
sxy=sum(XY)

syms q lgA
eq1=vpa(sx*q+n*lgA-sy)
% 5.0*lgA + 2.0792*q - 7.8753
eq2=vpa(sx2*q+sx*lgA-sxy)
% 2.0792*lgA + 1.1693*q - 3.8738

[q lgA]=solve([eq1 eq2],[q lgA])
% q =
% 1.9659
% lgA =
% 0.75754
A=10^lgA
% 5.7219

S2=A*T.^q
% [ 5.7219, 22.354, 49.606, 87.329, 135.42]

syms t
phi(t)=approxpwr(T,S)
% 5.7219*t^1.9659
S3=phi(T)
% [ 5.7219, 22.354, 49.606, 87.329, 135.42]

plot(T,S,'o',T,S2)
grid
