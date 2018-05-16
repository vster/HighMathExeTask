% The volume of the triangular pyramid
A=[2 2 2]
B=[4 3 3]
C=[4 5 4]
D=[5 5 6]

AB=B-A
AC=C-A
AD=D-A

% 1 Method
% Let's compose the matrix
M=[AB;AC;AD]
Mn=det(M)
V1=Mn/6

% 2 Method
% The mixed product
P=dot(AB,cross(AC,AD))
V2=P/6