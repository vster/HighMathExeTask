N=sym([2 3 1; 4 6 2; 6 9 3],'r')
P=N/36

X=[1 1 1; 2 2 2; 3 3 3]
Y=X.'

mx=sum(sum(P.*X))
% 7/3
my=sum(sum(P.*Y))
% 11/6

    