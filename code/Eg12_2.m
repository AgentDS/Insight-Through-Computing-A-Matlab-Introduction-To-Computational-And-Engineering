n= 20;
C= colormap('hot');
close all
F= randn(2,2);
A= BilinearInterp(F,n);
ShowMatrix(A,C);
shg