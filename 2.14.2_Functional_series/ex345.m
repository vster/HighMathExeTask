% Given a functional range
% u(x,n)=((3*x+1)/(x^2+x+1))^n
% Does the series converge at points
% x=1, x=2 and x=3 ?

syms x n;
u(x,n)=((3*x+1)/(x^2+x+1))^n

x=1
u1(n)=u(x,n)
% (4/3)^n
D=limit(u1(n+1)/u1(n),n,inf)
% 4/3 > 1 => series diverges

x=2
u2(n)=u(x,n)
% 1
D=limit(u2(n+1)/u2(n),n,inf)
% 1 = 1 => series diverges

x=3
u3(n)=u(x,n)
% (10/13)^n
D=limit(u3(n+1)/u3(n),n,inf)
% 10/13 < 1 => series converges

x1=0:0.2:4;
for i=1:3
    y1=u(x1,i);
    plot(x1,y1)
    hold on
    grid on
end
hold off
