function phi=approxlin(X,Y)
n=length(X);
K=1:n;
X;
X2=X.^2;
X3=X.^3;
Y;
XY=X.*Y;

sx=sum(X);
sx2=sum(X2);
sx3=sum(X3);
sy=sum(Y);
sxy=sum(XY);

syms a0 a1
eq1=vpa(sx*a0+n*a1-sy);
eq2=vpa(sx2*a0+sx*a1-sxy);

[a0 a1]=solve([eq1 eq2],[a0 a1]);

syms x
phi(x)=a0*x+a1;
end