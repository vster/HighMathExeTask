syms x;
digits(4)
I=int(1/(exp(x)-1),x,log(2),2*log(2))
vpa(I)