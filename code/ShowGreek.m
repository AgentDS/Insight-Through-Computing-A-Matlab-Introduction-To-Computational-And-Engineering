% How to produce Greek letters

close all
figure
axis off
hold on
fill([-1 12 12 -1 -1], [-1 -1 12 12 -1], [0.667 0.667 1])
plot([-1 12 12 -1 -1], [-1 -1 12 12 -1], 'Color',[0 1 0], 'Linewidth', 5)

text(3, 10, 'Greek Symbols', 'Color', 'r', 'FontSize', 18)
x= 0;     x1= x + 0.7;
y= 4;     y1= y + 0.7;
z= 8;     z1= z + 0.7;

text(x,8,'\alpha :', 'Color', 'r', 'FontSize', 12);     text(x1, 8, '\\alpha', 'Color', 'r', 'FontSize', 12);
text(x,7,'\beta :', 'Color', 'r', 'FontSize', 12);      text(x1, 7, '\\beta', 'Color', 'r', 'FontSize', 12);
text(x,6,'\gamma :', 'Color', 'r', 'FontSize', 12);     text(x1, 6, '\\gamma', 'Color', 'r', 'FontSize', 12);
text(x,5,'\delta :', 'Color', 'r', 'FontSize', 12);     text(x1, 5, '\\delta', 'Color', 'r', 'FontSize', 12);
text(x,4,'\epsilon :', 'Color', 'r', 'FontSize', 12);   text(x1, 4, '\\epsilon', 'Color', 'r', 'FontSize', 12);
text(x,3,'\kappa :', 'Color', 'r', 'FontSize', 12);     text(x1, 3, '\\kappa', 'Color', 'r', 'FontSize', 12);
text(x,2,'\lambda :', 'Color', 'r', 'FontSize', 12);    text(x1, 2, '\\lambda', 'Color', 'r', 'FontSize', 12);
text(x,1,'\mu :', 'Color', 'r', 'FontSize', 12);        text(x1, 1, '\\mu', 'Color', 'r', 'FontSize', 12);
text(x,0,'\nu :', 'Color', 'r', 'FontSize', 12);        text(x1, 0, '\\nu', 'Color', 'r', 'FontSize', 12);


text(y,8,'\omega :', 'Color', 'r', 'FontSize', 12);     text(y1, 8, '\\omega', 'Color', 'r', 'FontSize', 12);
text(y,7,'\phi :', 'Color', 'r', 'FontSize', 12);       text(y1, 7, '\\phi', 'Color', 'r', 'FontSize', 12);
text(y,6,'\pi :', 'Color', 'r', 'FontSize', 12);        text(y1, 6, '\\pi', 'Color', 'r', 'FontSize', 12);
text(y,5,'\chi :', 'Color', 'r', 'FontSize', 12);       text(y1, 5, '\\chi', 'Color', 'r', 'FontSize', 12);
text(y,4,'\psi :', 'Color', 'r', 'FontSize', 12);       text(y1, 4, '\\psi', 'Color', 'r', 'FontSize', 12);
text(y,3,'\rho :', 'Color', 'r', 'FontSize', 12);       text(y1, 3, '\\rho', 'Color', 'r', 'FontSize', 12);
text(y,2,'\sigma :', 'Color', 'r', 'FontSize', 12);     text(y1, 2, '\\sigma', 'Color', 'r', 'FontSize', 12);
text(y,1,'\tau :', 'Color', 'r', 'FontSize', 12);       text(y1, 1, '\\tau', 'Color', 'r', 'FontSize', 12);
text(y,0,'\upsilon :', 'Color', 'r', 'FontSize', 12);   text(y1, 0, '\\upsilon','Color', 'r', 'FontSize', 12);


text(z,8,'\Sigma :', 'Color', 'r', 'FontSize', 12);     text(z1, 8, '\\Sigma', 'Color', 'r', 'FontSize', 12);
text(z,7,'\Pi :', 'Color', 'r', 'FontSize', 12);       text(z1, 7, '\\Pi', 'Color', 'r', 'FontSize', 12);
text(z,6,'\Lambda :', 'Color', 'r', 'FontSize', 12);        text(z1, 6, '\\Lambda', 'Color', 'r', 'FontSize', 12);
text(z,5,'\Omega :', 'Color', 'r', 'FontSize', 12);       text(z1, 5, '\\Omega', 'Color', 'r', 'FontSize', 12);
text(z,4,'\Gamma :', 'Color', 'r', 'FontSize', 12);       text(z1, 4, '\\Gamma', 'Color', 'r', 'FontSize', 12);
