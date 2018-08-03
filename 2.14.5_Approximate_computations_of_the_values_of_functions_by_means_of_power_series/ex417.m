% Calculate sin(9 grad) accurate to 0.0001

clear
syms x n;
f(x)=sin(x)
x0=0
x1=pi/20
digits(8)
err=0.0001

term1=taylorterm(f,x0,10)
% [ x, -x^3/6, x^5/120, -x^7/5040, x^9/362880]
term2=subs(term1,x,x1)
% [ pi/20, -pi^3/48000, pi^5/384000000, -pi^7/6451200000000, pi^9/185794560000000000]

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
% 0.15643367