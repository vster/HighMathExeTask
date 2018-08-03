% Calculate e accurate to 0.00001

clear
syms x n;
f(x)=exp(x)
x0=0
x1=1
digits(8)
err=0.00001

term1=taylorterm(f,x0,12)
% [ 1, x, x^2/2, x^3/6, x^4/24, x^5/120, x^6/720, x^7/5040, x^8/40320, x^9/362880]
term2=subs(term1,x,x1)
% [ 1, 1, 1/2, 1/6, 1/24, 1/120, 1/720, 1/5040, 1/40320, 1/362880]

syms i;
s=0;
for i=1:12
    R1(i)=abs(term2(i+1));
    s=s+term2(i);
    disp([i term2(i) vpa(term2(i)) s vpa(s) R1(i) vpa(R1(i))])
    if (R1(i)<err)
        break
    end
end
s1=vpa(s)
% 2.7182788