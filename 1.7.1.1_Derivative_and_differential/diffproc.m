function dy=diffproc(y)
dy=simplify(diff(y))
y2=simplify(int(dy))
chk=simplify(y2-y)
end