clear
syms x f(x) x0
digits(10)

f(x)=x^3-5
x0=1.7

for k=1:4
    ksi(k)=solvecheb(f,x0,k)
end
ksi
% [ 1.710034602, 1.709975718, 1.709975947, 1.709975947]