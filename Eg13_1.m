close all
fname= [pwd '/MyData/13_1/BigBen.wav'];
[OneOClock,rate]= wavread(fname);
n= length(OneOClock);

plot(OneOClock)
title('Click at the beginning of the gong.')
[m,y]= ginput(1);
m= round(m);
Chimes= OneOClock(1:m);
Gong= OneOClock(m+1:n);

F= Chimes;
for  k= 1:12
    F= [F;Gong];
    fname= [pwd '/MyData/13_1/BigBen' num2str(k) '.wav'];
    wavwrite(F,rate,8,fname)
end

PlayList= [2 3];
for  k= PlayList
    fname= [pwd '/MyData/13_1/BigBen' num2str(k) '.wav'];
    [Oclock,rate]= wavread(fname);
    sound(Oclock)
    pause(30)
end