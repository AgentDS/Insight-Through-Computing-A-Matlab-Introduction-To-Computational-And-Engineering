nVals= 2:2:60;
rVals= [];
for  n= nVals
    x0= (1:n)';
    x= PerfectShuffle(x0);
    k= 1;
    
    while  sum(abs(x-x0)) > 0 
        x= PerfectShuffle2(x);
        k= k+1;
    end  % whileÓï¾ä½áÊø
    rVals= [rVals k];
end  % forÓï¾ä½áÊø

bar(nVals,rVals)
axis([0 62 0 60])
xlabel('n', 'Fontsize', 14)
ylabel('Number of Perfect Shuffles ', 'Fontsize', 14)
title('Restoration Via Repeated Perfect Shuffles', 'Fontsize', 14)
grid on
shg