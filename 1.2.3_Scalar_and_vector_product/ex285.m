A=[5,7,-2]
B=[3,1,-1]
C=[9,4,-4]
D=[1,5,0]
% Show that all points lie in the same plane

AB=B-A
AC=C-A
AD=D-A

sp=dot(AB,cross(AC,AD))