clear
digits(5)
% S=A*t^q
n=5
T=1:n
S=[7.1 27.8 62.1 110 161]
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
% 5.0*lgA + 2.0792*q - 8.3366
eq2=vpa(sx2*q+sx*lgA-sxy)
% 2.0792*lgA + 1.1693*q - 4.0618

[q lgA]=solve([eq1 eq2],[q lgA])
% q =
% 1.9531
% lgA =
% 0.85516
A=10^lgA
% 7.1641

S2=A*T.^q
% [ 7.1641, 27.739, 61.237, 107.41, 166.08]

plot(T,S)
hold on
plot(T,S2)
grid
hold off