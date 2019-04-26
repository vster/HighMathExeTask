clear
syms x f(x) x0
digits(10)

f(x)=x^3+x^2-4
x0=1.3

for k=1:4
    ksi(k)=solvecheb(f,x0,k);
end
ksi
% [ 1.314732725, 1.314595353, 1.314596216, 1.314596212]