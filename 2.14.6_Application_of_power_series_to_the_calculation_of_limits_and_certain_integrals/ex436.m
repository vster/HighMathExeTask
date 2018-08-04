% Calculate int (0:0.5) x*log(1+x^2) dx accurate to 0.001

clear
syms x real;
f=x*log(1+x^2)
x0=0
err=0.001
digits(6)

f1=taylor(f,'Order',8)
% x^7/3 - x^5/2 + x^3
I=expand(int(f1))
% x^8/24 - x^6/12 + x^4/4

err1=vpa(subs(x^8/24,x,0.5))
% 0.00016276 < 0.001=err

I=int(f1,x,0,0.5)
% 89/6144
vpa(I)
% 0.0144857

I2=int(f,x,0,0.5)
% (5*log(5/4))/8 - 1/8
vpa(I2)
% 0.0144647

term1=taylorterm(f,x0,8)
% [ x^3, -x^5/2, x^7/3]
term2=int(term1,x,0,0.5)
% [ 1/64, -1/768, 1/6144]

syms i;
s=0;
for i=1:5
    s=s+term2(i);
    R1(i)=abs(term2(i+1))
    if R1(i)<err
        break
    end
end
I3=vpa(s)
% 0.0143229