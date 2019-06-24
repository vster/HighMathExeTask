function phi=approxpwr(T,S)
n=length(T);
K=1:n;
X=log10(T);
X2=X.^2;
Y=log10(S);
XY=X.*Y;

sx=sum(X);
sx2=sum(X2);
sy=sum(Y);
sxy=sum(XY);

syms q lgA
eq1=vpa(sx*q+n*lgA-sy);
eq2=vpa(sx2*q+sx*lgA-sxy);

[q lgA]=solve([eq1 eq2],[q lgA]);
A=10^lgA;

syms t
phi=A*t^q;
end