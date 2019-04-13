% Iteration method
% 2-log(x)-x=0
% err=0.001
% log(x)=-x+2

clear
syms x
fplot(log10(x),[1 2])
hold on
fplot(-x+2,[1 2])
grid on
hold off
% [1;2]
% 2 - log(x)/log(10)
phi(x)=2-log10(x)
dphi(x)=diff(phi,x)
% -1/x 
% |dphi(x)|<1 in [1;2]
digits(6)

x1=2
err=0.001
for j=1:10
    x2=vpa(phi(x1))
    if (abs(x2-x1)<err)
        break;
    end
    x1=x2
end
% 1.75563