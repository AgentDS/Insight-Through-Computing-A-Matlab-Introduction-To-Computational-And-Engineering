s= 'abcdefghijklmnopqrstuvwxyz';
s= [s s];
x= CountLetters(s);
bar(x)
set(gca,'yTick',0:1:8)
set(gca,'xTick',0:1:27)
set(gca,'xTickLabel',{'','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'})