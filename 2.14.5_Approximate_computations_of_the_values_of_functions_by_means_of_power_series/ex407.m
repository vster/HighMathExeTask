% Calculate 1.1^(1/5) accurate to 0.0001

clear
syms x n;
f(x)=(1+x)^(1/5)
x0=0
x1=0.1
digits(8)
err=0.0001

term1=taylorterm(f,x0,5)
% [ 1, x/5, -(2*x^2)/25, (6*x^3)/125, -(21*x^4)/625]
term2=subs(term1,x,x1)
% [ 1, 1/50, -1/1250, 3/62500, -21/6250000]

syms i;
s=0;
for i=1:7
    R1(i)=abs(term2(i+1));
    s=s+term2(i);
    disp([i term2(i) vpa(term2(i)) s vpa(s) R1(i) vpa(R1(i))])
    if (R1(i)<err)
        break
    end
end
s1=vpa(s)
% 1.0192