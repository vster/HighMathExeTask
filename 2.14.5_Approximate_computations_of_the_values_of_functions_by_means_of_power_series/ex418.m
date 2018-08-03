% Calculate cosh(0.3) accurate to 0.0001

clear
syms x n;
f(x)=cosh(x)
x0=0
x1=0.3
digits(8)
err=0.0001

term1=taylorterm(f,x0,10)
% [ 1, x^2/2, x^4/24, x^6/720, x^8/40320]
term2=subs(term1,x,x1)
% [ 1, 9/200, 27/80000, 81/80000000, 729/448000000000]

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
% 1.0453375