A=[0,0,1]
B=[2,3,5]
C=[6,2,3]
D=[3,7,2]

AB=B-A
AC=C-A
AD=D-A

% Volume of the pyramid
V=1/6*dot(AB,cross(AC,AD))

BC=C-B
BD=D-B
% base area BCD
S=1/2*norm(cross(BC,BD))

% V=1/3*S*h
% h=3*V/S
% Height, lowered to the face of BCD
h=3*V/S