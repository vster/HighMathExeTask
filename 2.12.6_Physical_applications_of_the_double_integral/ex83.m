% Íàéòè ÖÒ
% y^2=a*x, x=a, y=0

syms y x;

S=int(int(1,x,y^2/a,a),y,0,a)
% (2*a^2)/3
xm=1/S*int(int(x,x,y^2/a,a),y,0,a)
% (3*a)/5
ym=1/S*int(int(y,x,y^2/a,a),y,0,a)
% (3*a)/8