% Calculate log(1.04) accurate to 0.0001

clear
syms x n;
f(x)=log(1+x)
x0=0
x1=0.04
digits(6)
err=0.0001

term1=taylorterm(f,x0,6)
% [ x, -x^2/2, x^3/3, -x^4/4, x^5/5]
term2=subs(term1,x,x1)
% [ 1/25, -1/1250, 1/46875, -1/1562500, 1/48828125]

syms i;
s=0;
for i=1:6
    R1(i)=abs(term2(i+1));
    s=s+term2(i);
    disp([i term2(i) vpa(term2(i)) s vpa(s) R1(i) vpa(R1(i))])
    if (R1(i)<err)
        break
    end
end
s1=vpa(s)
% 0.0392