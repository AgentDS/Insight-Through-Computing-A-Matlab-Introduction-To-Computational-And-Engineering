P= [pwd '/MyData/12_4/Cornell_Clock.jpg'];
Q= [pwd '/MyData/12_4/Cornell_Clock_Border.jpg'];
Border(P,Q);
A= imread(Q,'jpg');
imshow(A)