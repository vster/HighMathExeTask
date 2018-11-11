N=sym([2 3 1; 4 6 2; 6 9 3],'r')
P=N/36

x=[1 2 3]
X=[x;x;x].'
y=[1 2 3]
Y=[y;y;y]

mx=sum(sum(P.*X))
% 7/3
my=sum(sum(P.*Y))
% 11/6

    