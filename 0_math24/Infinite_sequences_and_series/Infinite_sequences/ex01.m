% Write down the general formula for the nth member a of the numerical 
% sequence and determine its limit
% 1/3,2/4,3/5,...

syms n;
a(n)=n/(n+2)
L=limit(a(n),n,inf)
% 1