% Calculate int (0:1)  exp(-x^2) dx accurate to 0.001

syms x real;
f=exp(-x^2)
err=0.001
digits(6)

f=taylor(f,'Order',12)
% - x^10/120 + x^8/24 - x^6/6 + x^4/2 - x^2 + 1

I=int(f)
% - x^11/1320 + x^9/216 - x^7/42 + x^5/10 - x^3/3 + x
% 1/1320 < err

I=int(f,x,0,1)
% 31049/41580
vpa(I)
% 0.746729

