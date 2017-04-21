n= 1000000;
sigma= 12;
mu= 75;
y= mu+sigma*randn(n,1);
x= linspace(mu-4*sigma,mu+4*sigma,17);
hist(y,x)