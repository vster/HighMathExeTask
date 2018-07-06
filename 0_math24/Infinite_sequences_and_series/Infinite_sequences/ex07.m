% Investigate the numerical sequence 
% {(2^n+3)/(2^n+1)}
% for monotonicity.

syms n;
a(n)=(2^n+3)/(2^n+1)

syms i;
for i=1:10
     a1(i)=a(i);
     a2(i)=vpa(a(i));
end
a1
% [ 5/3, 7/5, 11/9, 19/17, 35/33, 67/65, 131/129, 259/257, 515/513, 1027/1025]
a2
% [ 1.667, 1.4, 1.222, 1.118, 1.061, 1.031, 1.016, 1.008, 1.004, 1.002]

d(n)=a(n+1)-a(n)
% (2^(n + 1) + 3)/(2^(n + 1) + 1) - (2^n + 3)/(2^n + 1)
d(n)=simplify(d(n))
% -(2*2^n)/(2*2^(2*n) + 3*2^n + 1) <0 => the sequence decreases monotonically
pretty(d(n))