[A,rate]= wavread([pwd '/MyData/13_1/BigBen_A.wav']);
AB= wavread([pwd '/MyData/13_1/BigBen_AB.wav']);
ABC= wavread([pwd '/MyData/13_1/BigBen_ABC.wav']);

close all
string= input('Enter time by ''hh:mm'':      ');
hh= str2num(string(1:2));
mm= str2num(string(4:5));
hh= mod(hh,12);
if  hh==0
    hh= 12;
end


switch  mm
    case 15
        sound(A)
    case 30
        sound(AB)
    case 45
        sound(ABC)
    case 0
        fname= [pwd '/MyData/13_1/BigBen' num2str(hh) '.wav'];
        [OClock,rate]= wavread(fname); 
        sound(OClock)
end


