syms ro teta alfa
ro=(2/3*sqrt(alfa)+1)*alfa
teta=sqrt(alfa)*exp(sqrt(alfa))
Drt=diff(ro,alfa)/diff(teta,alfa)
Drt=simplify(Drt)