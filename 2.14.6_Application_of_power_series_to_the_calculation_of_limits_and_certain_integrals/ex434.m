% Calculate int (0:0.2)  sin(x)/x dx accurate to 0.0001

syms x real;
f=sin(x)/x
x0=0
err=0.0001
digits(6)

f1=taylor(f,'Order',6)
% x^4/120 - x^2/6 + 1
I=int(f1)
% x^5/600 - x^3/18 + x
err1=vpa(subs(x^5/600,x,0.2))
% 5.33333e-7 < err

I=int(f1,x,0,0.2)
% 1122503/5625000
vpa(I)
% 0.199556

I2=int(f,x,0,0.2)
% sinint(1/5)
vpa(I2)
% 0.199556

term1=taylorterm(sin(x),x0,6)/x
% [ 1, -x^2/6, x^4/120]
term2=int(term1,x,0,0.2)
% [ 1/5, -1/2250, 1/1875000]

syms i;
s=0;
for i=1:3
    s=s+term2(i);
    R1(i)=abs(term2(i+1))
    if R1(i)<err
        break
    end
end
I3=vpa(s)
% 0.199556


