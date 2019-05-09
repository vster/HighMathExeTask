clear
digits(4)
syms t
f(t)=1-t^2

I1=vpa(int(f,t,0,1))
% 0.6667

n=100;
T=rand(1,n);
F=1-T.^2;
I2=1/n*sum(F)
% 0.6436

delta=abs(I1-I2)/I1*100
