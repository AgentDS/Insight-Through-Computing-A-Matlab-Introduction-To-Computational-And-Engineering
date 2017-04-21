x= [ 0; 0; 0; 1; 0;-1;-1; 0;-1;-2;-2;-3;-3;-3];
y= [-1; 0;-1;-1;-1;-1;-2;-2;-2;-2;-3;-3;-4;-5];
[East South West North]= StepCount(x,y);
fprintf('East : %d\n',East)
fprintf('West : %d\n',West)
fprintf('South: %d\n',South)
fprintf('North: %d\n',North)