clear
syms x f(x) x0
digits(10)

f(x)=2*x^3+2*x-7
x0=1.3

for k=1:4
    ksi(k)=solvecheb(f,x0,k);
end
ksi