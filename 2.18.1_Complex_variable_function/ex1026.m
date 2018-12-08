digits(4)
syms x
f(x)=sin(x)
tt(x)=taylorterm(f,0,9)
% [ x, -x^3/6, x^5/120, -x^7/5040]
x1=pi/6+1i
tt1=tt(x1)
% [ pi/6 + 1i, -(pi/6 + 1i)^3/6, (pi/6 + 1i)^5/120, -(pi/6 + 1i)^7/5040]
tts=vpa(sum(tt1))
% 0.7715 + 1.018i
w=sin(x1)
% 0.7715 + 1.0178i