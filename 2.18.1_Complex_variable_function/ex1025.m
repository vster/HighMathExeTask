digits(5)
syms x
f(x)=sin(x)
tt(x)=taylorterm(f,0,9)
% [ x, -x^3/6, x^5/120, -x^7/5040]
x1=1i
tt1=tt(x1)
% [ 1i, 1i/6, 1i/120, 1i/5040]
tts=vpa(sum(tt1))
% 1.1752i
w=sin(x1)
% 0.0000 + 1.1752i