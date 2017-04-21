fname= [pwd '/MyData/13_1/BigBen.wav'];
[OneOClock,rate]= wavread(fname);
n= length(OneOClock);

plot(OneOClock)
title('Click at the beginning of the gong.')
[m,y]= ginput(1);
m= round(m);
Chimes= Reverse(OneOClock(1:m));    % ½«ÃùÏìÉùÄæĞò²¥·Å
Gong= OneOClock(m+1:n);

F= Chimes;
Oclock= [F;Gong;Gong];
fname= [pwd '/MyData/13_1/BigBen_ReverseChimes' num2str(2) '.wav'];
wavwrite(F,rate,8,fname);
sound(Oclock)
