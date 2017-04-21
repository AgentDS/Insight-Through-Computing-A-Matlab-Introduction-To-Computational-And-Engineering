% P13_1_3
function BigBenSegmentation()
close all
fname= [pwd '/MyData/13_1/BigBen.wav'];
[OneOClock,rate]= wavread(fname);
n= length(OneOClock);

plot(OneOClock)
title('Click at the beginning of the B,C,D Chimes, and the beginning of the Gong.')
[m,y]= ginput(4);
m= round(m);
A= OneOClock(1:m(1));    % T= 0~3.6s
B= OneOClock(m(1)+1:m(2));    % T= 3.6~6.2s
C= OneOClock(m(2)+1:m(3));    % T= 6.2~8.8S
D= OneOClock(m(3)+1:m(4));    % T= 8.8~13.2s
Gong= OneOClock(m(4)+1:n);
AB= [A;B];
ABC= [A;B;C];
Chimes= [A;B;C;D];
wavwrite(A,rate,8,[pwd '/MyData/13_1/BigBen_A.wav']);
wavwrite(AB,rate,8,[pwd '/MyData/13_1/BigBen_AB.wav']);
wavwrite(ABC,rate,8,[pwd '/MyData/13_1/BigBen_ABC.wav']);
wavwrite(Chimes,rate,8,[pwd '/MyData/13_1/BigBen_Chimes.wav']);


end
% BigBenSegmentation