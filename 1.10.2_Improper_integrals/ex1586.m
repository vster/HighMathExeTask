syms x;
y=exp(-x^2)/x^2
I=int(y,1,+inf)
% exp(-1) - pi^(1/2)*erfc(1)
pretty(I)