d0= (1:52);
d= Cut(d0);
k= 1;
 while  sum(abs(d-d0)) > 0 
        d= Cut(d);
        k= k+1;
    end  % whileÓï¾ä½áÊø
k