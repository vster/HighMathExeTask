clear
syms x f(x) x0
digits(10)

f(x)=x^5-5
fplot(f)
grid
x0=1.4

for k=1:4
    ksi(k)=solvecheb(f,x0,k);
end
ksi
% [ 1.380308205, 1.379738218, 1.379729726, 1.379729661]