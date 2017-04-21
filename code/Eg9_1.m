n= input('Enter the number of amino acids:  ');
P= RandomProtein(n);
count= zeros(20,1);
for  j= 1:n
    s= P(3*(j-1)+1:3*j);
    a= FindMnemonic(s);
    i= FindIndex(a);
    count(i)= count(i)+1;
end  % for½áÊø


hold on
axis([0 21 0 120])
bar(count(1:20))
set(gca,'XTick',0:1:20)
set(gca,'XTickLabel',{'   ','Ala','Arg','Asn','Asp','Cys','Glu','Gln','Gly','His','Ile','Leu','Lys','Met','Phe','Pro','Ser','Thr','Trp','Tyr','Val'})
title(sprintf('n= %d',n),'FontSize',14)
% ,{'Ala','Arg','Asn','Asp','Cys','Glu','Gln','Gly','His','Ile','Leu','Lys','Met','Phe','Pro','Ser','Thr','Trp','Tyr','Val'}