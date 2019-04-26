clear
syms x f(x) x0
digits(10)

f(x)=3*x^5+6*x-16
x0=1.2

for k=1:4
    ksi(k)=solvecheb(f,x0,k);
end
ksi
