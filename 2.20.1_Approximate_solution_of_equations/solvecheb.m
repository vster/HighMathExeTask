function ksi=solvecheb(f,x0,n)
syms x
b0=f(x0);
for k=1:4
    df(x)=diff(f,x,k);
    b(k)=df(x0)/factorial(k);
end

D0=1;
D(1)=det([b(1)]);
D(2)=det([b(1) b0; 
          b(2) b(1)]);
D(3)=det([b(1) b0   0;...
          b(2) b(1) b0;...
          b(3) b(2) b(1)]);
D(4)=det([b(1) b0   0    0;...
          b(2) b(1) b0   0;...
          b(3) b(2) b(1) b0;...
          b(4) b(3) b(2) b(1)]);

if n==1        
    ksi=vpa(x0-b0*D0/D(1));
else
    ksi=vpa(x0-b0*D(n-1)/D(n));
end
end