% Determine if the sequence
%  {(5*n-7)/(3*n+4)}
% is monotonically increasing, decreasing, or nonmonotonic?

syms n;
a(n)=(5*n-7)/(3*n+4)

d(n)=a(n+1)-a(n)
% (5*n - 2)/(3*n + 7) - (5*n - 7)/(3*n + 4)
d(n)=simplify(d(n))
% 41/(9*n^2 + 33*n + 28) >0 => this sequence is monotonically increasing