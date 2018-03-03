A=[1 1 1]
B=[2 3 4]
C=[4 3 2]

% Площадь треугольника с вершинами A,B и C
AB=B-A
AC=C-A
AB_AC=cross(AB,AC)
S=1/2*norm(AB_AC)