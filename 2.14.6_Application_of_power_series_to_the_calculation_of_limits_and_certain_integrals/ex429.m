% Calculate int (0:1/2) (1-cos(x))/x^2 dx accurate to 0.0001

syms x real
f=(1-cos(x))/x^2
err=0.0001

f=(1-taylor(cos(x),'Order',8))/x^2
% (x^6/720 - x^4/24 + x^2/2)/x^2
f=simplify(f)
% x^4/720 - x^2/24 + 1/2

I=expand(int(f))
% x^5/3600 - x^3/72 + x/2

err1=vpa(subs(x^5/3600,x,1/2))
% 0.00000868056 < err

I=int(f,x,0,1/2)
% 28601/115200
vpa(I)
% 0.248273