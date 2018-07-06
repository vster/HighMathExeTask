% Solve the equation
% x^2-2*x^3+4*x^4-8*x^5+...=2*x+1, |x|<1

% S=sum(n=0:inf)q^n = 1/(1-q)

syms x n;
a1=x^2
q=-2*x
a(n)=a1*q^(n-1)

syms i;
for i=1:8
    a2(i)=a(i);
end
a2
% [ x^2, -2*x^3, 4*x^4, -8*x^5, 16*x^6, -32*x^7, 64*x^8, -128*x^9]

S=a1*1/(1-q)
% x^2/(2*x + 1)

% x^2/(2*x + 1) =  2*x+1
% 3*x^2+4*x+1=0
syms x1;
solve(3*x1^2+4*x1+1==0)
% -1 -1/3
% |x|<1 => x=-1/3