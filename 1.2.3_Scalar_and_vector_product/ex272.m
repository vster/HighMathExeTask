syms F s phi
% ����� ������ ���� F �� ����������� s
A=F*s*cos(phi)
A=subs(A,F,2)
A=subs(A,s,5)
A=subs(A,phi,30*pi/180)