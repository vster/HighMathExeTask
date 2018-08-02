% Calculate atan(1/5) accurate to 0.001

clear
syms x n;
f(x)=atan(x)
x0=0
x1=1/5
digits(6)
err=0.001

term1=taylorterm(f,x0,10)
% [ x, -x^3/3, x^5/5, -x^7/7, x^9/9]
term2=subs(term1,x,x1)
% [ 1/5, -1/375, 1/15625, -1/546875, 1/17578125]

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
% 0.197333