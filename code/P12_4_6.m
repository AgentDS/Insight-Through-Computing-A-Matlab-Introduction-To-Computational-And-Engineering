close all
P= [pwd '/MyData/12_4/Cornell_Clock.jpg'];
Q= [pwd '/MyData/12_4/Cornell_Clock_Crop.jpg'];
type= 'jpg';
Crop(P,Q,type);
pause(1)
close all
imshow(imread(Q,type))
