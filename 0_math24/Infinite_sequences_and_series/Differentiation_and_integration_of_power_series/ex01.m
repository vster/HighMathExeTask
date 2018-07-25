% Show that
% 1/(1+x)=1-x+x^2-x^3+x^4+...=sum(n=0:inf)a(n)*x^n 
% for |x|<1

syms x n;
u(x,n)=(-1)^(n-1)*x^(n-1)

syms i;
for i=1:5
     u2(i)=u(x,i);
end
u2
% [ 1, -x, x^2, -x^3, x^4]

% u(x,n) - geometrical progression
% S=a1/(1-q)
a1=1
q=-x
S=a1/(1-q)
% 1/(x + 1)