% Investigate the convergence of the series
% 1/8+1/18+1/28+...+1/(10*n-2)+...

syms n;
digits(3)
u(n)=1/(10*n-2)

v(n)=1/(10*n)

syms i;
for i=1:8
     a1(i)=vpa(u(i));
     a2(i)=vpa(v(i));
end
a1
% [ 0.125, 0.0556, 0.0357, 0.0263, 0.0208, 0.0172, 0.0147, 0.0128]
a2
% [ 0.1, 0.05, 0.0333, 0.025, 0.02, 0.0167, 0.0143, 0.0125]
% v(n)<u(n); 
% v(n) is diverges (ex322) => u(n) is diverges