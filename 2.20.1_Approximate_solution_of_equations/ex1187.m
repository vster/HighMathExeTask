clear
syms x f(x) x0
digits(10)

f(x)=x^2-2
x0=1.4

for k=1:4
    ksi(k)=solvecheb(f,x0,k);
end
ksi
% [ 1.414285714, 1.414213198, 1.414213564, 1.414213562]