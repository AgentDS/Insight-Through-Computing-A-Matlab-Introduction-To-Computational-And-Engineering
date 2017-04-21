PlayList= [2 3];
for  k= PlayList
    fname= [pwd '/MyData/13_1/BigBen' num2str(k) '.wav'];
    [Oclock,rate]= wavread(fname);
    sound(Oclock,2*rate)
    pause(20)
end


for  k= PlayList
    fname= [pwd '/MyData/13_1/BigBen' num2str(k) '.wav'];
    [Oclock,rate]= wavread(fname);
    sound(Oclock,4*rate)
    pause(10)
end