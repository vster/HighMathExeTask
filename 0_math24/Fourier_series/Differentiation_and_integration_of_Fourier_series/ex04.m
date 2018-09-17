% To study the process of termwise differentiation of the Fourier series 
% of the function f(x)=x defined on the interval [-pi, pi]

syms x n
f(x)=x
u(x,n)=2*(-1)^(n+1)*sin(n*x)/n

df(x)=diff(f(x))
% 1
du(x,n)=diff(u(x,n),x)
% 2*(-1)^(n + 1)*cos(n*x)

Id=int(dirac(x),x,-inf,inf)
% 1

diru(x,n)=1/(2*pi)*sin((n+1/2)*x)/sin(x/2)
dirac2(x)=limit(diru(x,n),n,inf)

for n=1:20
    if n==5 || n==20
        fplot(diru(x,n))
        hold on
        grid on
    end
end
hold off