prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex
beginfig(0);

picture ORIGINAL_PICTURE;
ORIGINAL_PICTURE := currentpicture;

picture hexagon;
a := 360/6;
draw ((1in,0) rotated(30+a*0))--((1in,0) rotated(30+a*1))--((1in,0) rotated(30+a*2))--((1in,0) rotated(30+a*3))--((1in,0) rotated(30+a*4))--((1in,0) rotated(30+a*5))--cycle;
hexagon := currentpicture; 
currentpicture := ORIGINAL_PICTURE;

for i=-10 upto 10:
for j=-10 upto 10:
x:=sqrt(3)*(1in*i + 1in/2*j);
y:=3*1in*j/2;
draw hexagon shifted(x,y);
endfor;
endfor;

clip currentpicture to (-0.2cm,0)--(16cm,0)--(16cm,23cm)--(-0.2cm,23cm)--cycle;

endfig;
end
