function phi=approxexp(T,S)
n=length(T);
T;
T2=T.^2;
Y=log10(S);
TY=T.*Y;

st=sum(T);
st2=sum(T2);
sy=sum(Y);
sty=sum(TY);

syms c lgA
e=exp(1);
eq1=vpa(st*c*log10(e)+n*lgA-sy);
eq2=vpa(st2*c*log10(e)+st*lgA-sty);

[c lgA]=solve([eq1 eq2],[c lgA]);
A=10^lgA;
syms t
phi=A*exp(c*t);
end