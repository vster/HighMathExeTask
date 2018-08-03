% Calculate log(0.98) accurate to 0.0001

clear
syms x n;
f(x)=log(1+x)
x0=0
x1=-0.02
digits(8)
err=0.0001

term1=taylorterm(f,x0,10)
% [ x, -x^2/2, x^3/3, -x^4/4, x^5/5, -x^6/6, x^7/7, -x^8/8, x^9/9]
term2=subs(term1,x,x1)
% [ -1/50, -1/5000, -1/375000, -1/25000000, -1/1562500000, -1/93750000000, -1/5468750000000, -1/312500000000000, -1/17578125000000000]

syms i;
s=0;
for i=1:10
    R1(i)=abs(term2(i+1));
    s=s+term2(i);
    disp([i term2(i) vpa(term2(i)) s vpa(s) R1(i) vpa(R1(i))])
    if (R1(i)<err)
        break
    end
end
s1=vpa(s)
% -0.0202