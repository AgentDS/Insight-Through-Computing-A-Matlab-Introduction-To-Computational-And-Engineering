clc
disp('            Bubble Sort             Insertion Sort  ')
disp('    n    Compares    Swaps       Compares      Swaps')
disp('-------------------------------------------------------')
for  n= [10 20 40 80 160 320 640 1280]
    x= rand(n,1);
    [yB,TCBubble,TSBubble]= BubbleSort(x);
    [yI,TCInsert,TSInsert]= InsertionSort(x);
    fprintf('%5d   %8d  %8d     %8d    %8d\n',...
            n, TCBubble,TSBubble, TCInsert,TSInsert)
end  % for������

N= 50000;
x= rand(N,1);

tic
[yB,TCBubble,TSBubble]= BubbleSort(x);
TimeBubble= toc;

tic
[yI,TCInsert,TSInsert]= InsertionSort(x);
TimeInsert= toc;

fprintf('\n\nTimeBubble/TimInsert= %5.3f   (N= %1d)\n',...
        TimeBubble/TimeInsert, N)