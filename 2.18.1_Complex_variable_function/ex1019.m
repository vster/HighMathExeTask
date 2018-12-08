syms z
x=real(z)
y=imag(z)
f(z)=1/(x-y*1i)

f1=f(1+1i)
% 1/2 + 1i/2
f2=f(1i)
% 1/1i
f3=f(3-2i)
% 3/13 - 2i/13
