clc
disp('   n    Average to Boundary')
disp('---------------------------')
nTrials= 100;
tic
for  n= 5:5:50
    s= 0;
    for  k= 1:nTrials
        [x y]= RandomWalk2D(n);
        s= s+length(x);
    end
    ave= s/nTrials;
    fprintf(' %3d      %8.3f\n',n,ave)
end
t= toc;
fprintf('\n\n(Results based on %d trails)\n',nTrials)
fprintf('Total time: %.5f\n',t)





