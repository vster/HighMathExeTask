% f=2^x*e^x
% f=(2*e)^x
% 2*e=a

syms a x;
f=a^x
I=int(f)
% a^x/log(a)

syms e;
a=2*e
I=a^x/log(a)
% (2*e)^x/log(2*e)
% 2^x*e^x/(log(2)+1)