A=[1 1 1]
B=[2 3 4]
C=[4 3 2]

% ������� ������������ � ��������� A,B � C
AB=B-A
AC=C-A
AB_AC=cross(AB,AC)
S=1/2*norm(AB_AC)