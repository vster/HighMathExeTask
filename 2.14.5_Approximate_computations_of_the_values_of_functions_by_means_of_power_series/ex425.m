% Calculate atan(1/2) accurate to 0.0001

% 2*sin(x)-cos(x)=0 => tan(x)=1/2

clear
syms x n;
f(x)=atan(x)
x0=0
x1=1/2
digits(8)
err=0.0001

term1=taylorterm(f,x0,15)
% [ x, -x^3/3, x^5/5, -x^7/7, x^9/9, -x^11/11, x^13/13]
term2=subs(term1,x,x1)
% [ 1/2, -1/24, 1/160, -1/896, 1/4608, -1/22528, 1/106496]

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
% 0.46368428