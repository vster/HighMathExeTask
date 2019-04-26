clear
syms x f(x) x0
digits(10)

f(x)=x+log(x)-3
fplot(f)
grid
x0=2.2

for k=1:4
    ksi(k)=solvecheb(f,x0,k);
end
ksi
% [ 2.207935565, 2.20794004, 2.207940032, 2.207940032]