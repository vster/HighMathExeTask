clear
syms x f(x) x0
digits(10)

f(x)=x^2-3
x0=1.7
n=4
b0=f(x0)
for k=1:n
    df(x)=diff(f,x,k)
    b(k)=df(x0)/factorial(k)
end

D0=1
D(1)=det([b(1)])
D(2)=det([b(1) b0; 
          b(2) b(1)])
D(3)=det([b(1) b0   0;...
          b(2) b(1) b0;...
          b(3) b(2) b(1)])
D(4)=det([b(1) b0   0    0;...
          b(2) b(1) b0   0;...
          b(3) b(2) b(1) b0;...
          b(4) b(3) b(2) b(1)])

ksi1=vpa(x0-b0*D0/D(1))   % 1.732352941
ksi2=vpa(x0-b0*D(1)/D(2)) % 1.732047986
ksi3=vpa(x0-b0*D(2)/D(3)) % 1.732050834
ksi4=vpa(x0-b0*D(3)/D(4)) % 1.732050807

for k=1:4
    ksi(k)=solvecheb(f,x0,k)
end


