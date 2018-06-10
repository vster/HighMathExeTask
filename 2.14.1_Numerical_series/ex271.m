% Find the general term of the series
% 2/3+(3/7)^2+(4/11)^3+(5/15)^4+...

clear
syms n;
u(n)=((n+1)/(4*n-1))^n
for n=1:4
    s1(n)=u(n)
end