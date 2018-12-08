digits(5)
syms x
f(x)=cos(x)
tt(x)=taylorterm(f,0,7)
% [ 1, -x^2/2, x^4/24, -x^6/720]
tt1=tt(i/2)
% [ 1, 1/8, 1/384, 1/46080]
tts=vpa(sum(tt1))
% 1.1276
w=cos(i/2)
%     1.1276