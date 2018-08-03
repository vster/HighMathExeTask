% Calculate pi accurate to 0.001

% pi = 6*atan(1/sqrt(3))

clear
syms x n;
f(x)=6*atan(x)
x0=0
x1=1/sqrt(3)
digits(8)
err=0.001

term1=taylorterm(f,x0,15)
% [ 6*x, -2*x^3, (6*x^5)/5, -(6*x^7)/7, (2*x^9)/3, -(6*x^11)/11, (6*x^13)/13]
term2=subs(term1,x,x1)
% [ 2*3^(1/2), -(2*3^(1/2))/9, (2*3^(1/2))/45, -(2*3^(1/2))/189, (2*3^(1/2))/729, -(2*3^(1/2))/2673, (2*3^(1/2))/9477]

syms i;
s=0;
for i=1:15
    R1(i)=abs(term2(i+1));
    s=s+term2(i);
    disp([i term2(i) vpa(term2(i)) s vpa(s) R1(i) vpa(R1(i))])
    if (R1(i)<err)
        break
    end
end
s1=vpa(s)
% 3.1413088