close all
figure
B= [0 0 0;
    1 0 0;
    1 1 0;
    0 1 0;
    0 1 1;
    0 0 1;
    1 0 1;
    1 0 0;
    0 0 0];
q= [1 9 7 8 12 8 9 1];
C= MakeColorMap(B,q);
ShowColorMap(C)