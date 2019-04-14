% Use chord method
clear
syms x
f(x)=x^4-2*x-4
digits(6)

% xsol1=solve(f(x)==0,x)
a=1
b=1.7
fplot(f(x),[a b]),grid on

x1=a-(b-a)*f(a)/(f(b)-f(a))
x1=vpa(x1)
% 1.58803
f(x1)

x2=x1-(b-x1)*f(x1)/(f(b)-f(x1))
% 1.63972
f(x2)

x3=x2-(b-x2)*f(x2)/(f(b)-f(x2))
% 1.64275
f(x3)

x4=x3-(b-x2)*f(x3)/(f(b)-f(x3))
% 1.6429
f(x4)

err=0.0001
for j=1:10
    c=vpa(a-(b-a)*f(a)/(f(b)-f(a)))
    xa(j)=c
    ya(j)=f(c)
    if (abs(c-a)<err)
        break;
    end
    a=c;
end
% xa =
% [ 1.58803, 1.63972, 1.64275, 1.64292, 1.64293]
% ya =
% [ -0.816418, -0.050453, -0.00287442, -0.000162987, -0.00000923925]

a=1
b=2
err=0.0001
digits(6)
xsol=solvechord(f,a,b,err)

function c=solvechord(g,a,b,err)
for j=1:20
    c=vpa(a-(b-a)*g(a)/(g(b)-g(a)));
    if (abs(c-a)<err)
        break;
    end
    a=c;
end
end