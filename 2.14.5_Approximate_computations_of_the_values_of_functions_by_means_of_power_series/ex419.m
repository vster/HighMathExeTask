% Calculate 1.06^(1/3) accurate to 0.0001

clear
syms x n;
f(x)=(1+x)^(1/3)
x0=0
x1=0.06
digits(8)
err=0.0001

term1=taylorterm(f,x0,10)
% [ 1, x/3, -x^2/9, (5*x^3)/81, -(10*x^4)/243, (22*x^5)/729, -(154*x^6)/6561, (374*x^7)/19683, -(935*x^8)/59049, (21505*x^9)/1594323]
term2=subs(term1,x,x1)
% [ 1, 1/50, -1/2500, 1/75000, -1/1875000, 11/468750000, -77/70312500000, 187/3515625000000, -187/70312500000000, 4301/31640625000000000]

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
% 1.0196