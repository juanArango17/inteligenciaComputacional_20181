clear all;
close all;
clc
X=1:0.004:5;

MF1=max(min((2.7-X),1),0);
figure(1);plot(X,MF1,'b');grid on
title('Funcion de membresia para "Costo de repuestos es bajo"')
xlabel('calificativo del costo de repuestos'),ylabel('Pertenencia')

MF2=max(min((X-1.7)/(4.2-1.7),1),0);
figure(2);plot(X,MF2,'g');grid on
title('Funcion de membresia para "Atencion es buena"')
xlabel('calificativo de la atenci?n'),ylabel('Pertenencia')

MF3=max(min(min(X-1.7,4.3-X),1),0);
figure(3);plot(X,MF3,'r');grid on
title('Funcion de membresia para "Precio es medio"')
xlabel('calificativo del Precio'),ylabel('Pertenencia')

A = [MF1(X==2) MF1(X==2) MF1(X==4) MF1(X==5)]
B = [MF2(X==5) MF2(X==4) MF2(X==2) MF2(X==3)]
C = [MF3(X==3) MF3(X==2) MF3(X==3) MF3(X==5)]
Decision = min(max(A,B),C)