% Calculate int (0:0.1) (exp(x)-1)/x dx accurate to 0.001

clear
syms x real;
f=(exp(x)-1)/x 
x0=0
err=0.001
digits(6)

f1=taylor(f,'Order',3)
% x^2/6 + x/2 + 1
I=expand(int(f1))
% x^3/18 + x^2/4 + x

err1=vpa(subs(x^3/18,x,0.1))
% 0.0000555556 < 0.001=err

I=int(f1,x,0,0.1)
% 923/9000
vpa(I)
% 0.102556

I2=int(f,x,0,0.1)
% ei(1/10) - eulergamma + log(10)
vpa(I2)
% 0.102557

term1=taylorterm(exp(x)-1,x0,6)/x
% [ 1, x/2, x^2/6, x^3/24, x^4/120]
term2=int(term1,x,0,0.1)
% [ 1/10, 1/400, 1/18000, 1/960000, 1/60000000]

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
% 0.1025