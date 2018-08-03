% Calculate sqrt(27) accurate to 0.001

% sqrt(27)=3*sqrt(4-1)=6*sqrt(1-0.25)

clear
syms x n;
f(x)=6*(1+x)^(1/2)
x0=0
x1=-0.25
digits(8)
err=0.001

term1=taylorterm(f,x0,10)
% [ 6, 3*x, -(3*x^2)/4, (3*x^3)/8, -(15*x^4)/64, (21*x^5)/128, -(63*x^6)/512, (99*x^7)/1024, -(1287*x^8)/16384, (2145*x^9)/32768]
term2=subs(term1,x,x1)
% [ 6, -3/4, -3/64, -3/512, -15/16384, -21/131072, -63/2097152, -99/16777216, -1287/1073741824, -2145/8589934592]

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
% 5.1972656