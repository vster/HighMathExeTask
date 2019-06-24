function phi=approxsqr(X,Y)
n=length(X);
K=1:n;
X;
X2=X.^2;
X3=X.^3;
X4=X.^4;
Y;
XY=X.*Y;
X2Y=X2.*Y;

sx=sum(X);
sx2=sum(X2);
sx3=sum(X3);
sx4=sum(X4);
sy=sum(Y);
sxy=sum(XY);
sx2y=sum(X2Y);

syms a0 a1 a2
eq1=vpa(sx2*a0+sx*a1+n*a2-sy);
eq2=vpa(sx3*a0+sx2*a1+sx*a2-sxy);
eq3=vpa(sx4*a0+sx3*a1+sx2*a2-sx2y);

[a0 a1 a2]=solve([eq1 eq2 eq3],[a0 a1 a2]);

syms x
phi(x)=a0*x^2+a1*x+a2;
end