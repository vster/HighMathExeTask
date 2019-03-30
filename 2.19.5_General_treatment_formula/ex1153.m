clear
syms t p
fp=p/((p+1)*(p+2)*(p+3)*(p+4))

f1=ilaplace(fp,p,t)
% exp(-2*t) - exp(-t)/6 - (3*exp(-3*t))/2 + (2*exp(-4*t))/3

Fp=exp(p*t)*fp
% (p*exp(p*t))/((p + 1)*(p + 2)*(p + 3)*(p + 4))

res(1)=limit((p+1)*Fp,p,-1)
% -exp(-t)/6
res(2)=limit((p+2)*Fp,p,-2)
% exp(-2*t)
res(3)=limit((p+3)*Fp,p,-3)
% -(3*exp(-3*t))/2
res(4)=limit((p+4)*Fp,p,-4)
% (2*exp(-4*t))/3

f=sum(res)
% exp(-2*t) - exp(-t)/6 - (3*exp(-3*t))/2 + (2*exp(-4*t))/3