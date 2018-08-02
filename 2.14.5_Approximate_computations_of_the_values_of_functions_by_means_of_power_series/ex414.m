% Prove the validity of the identity pi/4=atan(1/2)+atan(1/3)
% Calculate pi accurate to 0.001

clear
syms x n;
f(x)=atan(x)
x0=0
x2=1/2
x3=1/3
digits(6)
err=0.001

term1=taylorterm(f,x0,15)
% [ x, -x^3/3, x^5/5, -x^7/7, x^9/9, -x^11/11, x^13/13]
term2=4*subs(term1,x,x2)
%
term3=4*subs(term1,x,x3)
%

syms i;
s=0;
for i=1:10
    R1(i)=abs(term2(i+1))+abs(term3(i+1));
    s=s+term2(i)+term3(i);
    disp([i term2(i) vpa(term2(i)) term3(i) vpa(term3(i)) s vpa(s) R1(i) vpa(R1(i))])
    if (R1(i)<err)
        break
    end
end
s1=vpa(s)
% 3.14085