% Calculate 130^(1/3) accurate to 0.001

% 130^(1/3) =  5*(1+0.04)^(1/3)
clear
syms x n;
f(x)=5*(1+x)^(1/3)
x0=0
x1=0.04
digits(6)
err=0.001

term1=taylorterm(f,x0,6)
%[ 5, (5*x)/3, -(5*x^2)/9, (25*x^3)/81, -(50*x^4)/243, (110*x^5)/729]
term2=subs(term1,x,x1)
%[ 5, 1/15, -1/1125, 1/50625, -2/3796875, 22/1423828125]

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
% 5.06667