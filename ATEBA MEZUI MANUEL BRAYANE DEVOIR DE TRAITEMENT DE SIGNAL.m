% question 1 et 2
clc
H=tf([1 3/2 -1],[0 1 1/3],0.1,'variable','z^-1');
P=pole(H);
Z=zero(H);
pzmap(H)
% 4. tracer les diagrammes de Bode
Hmin=tf([2 0 -1/2],[0 1 1/3],0.1,'variable','z^-1');
Hap=tf([1/2 1],[1 1/2],0.1,'variable','z^-1');
w=[0:0.1:pi];
bode(Hmin,w)
bode(Hap,w)
bode(H,w)