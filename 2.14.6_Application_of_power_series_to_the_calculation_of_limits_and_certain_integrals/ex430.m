% Calculate int (0:0.1) log(1+x)/x dx accurate to 0.001

syms x real;
f=log(1+x)/x
digits(6)
err=0.001

f=taylor(log(1+x),'Order',5)/x
% (- x^4/4 + x^3/3 - x^2/2 + x)/x
f=simplify(f)
% - x^3/4 + x^2/3 - x/2 + 1

I=int(f)
% - x^4/16 + x^3/9 - x^2/4 + x

err1=vpa(subs(x^4/16,x,0.1))
% 0.00000625 < err

I=int(f,x,0,0.1)
% 140551/1440000
vpa(I)
% 0.0976049