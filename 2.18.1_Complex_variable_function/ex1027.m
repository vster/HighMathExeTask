syms z
f(z)=exp(exp(z))

f1=f(1i)
% exp(exp(1i))
vpa(f1)
% 1.144 + 1.28i

f2=f(1+pi/2*1i)
% exp(exp((pi*1i)/2 + 1))
vpa(f2)
% - 0.9117 + 0.4108i