disp('三维点')
Q1.x= 1;    Q1.y= 1;    Q1.z= 1;
Q2.x= 1;    Q2.y= 1;    Q2.z= -1;
dQ= GetDist(Q1,Q2);
disp('直角坐标系')
dQ

P1.rho= sqrt(3);    P1.theta= pi/4;    P1.phi= 0.9553;
P2.rho= sqrt(3);    P2.theta= pi/4;    P2.phi= -0.9553;
dP= GetDist(P1,P2);
disp('球坐标系')
dP

W1.r= sqrt(2);    W1.theta= pi/4;    W1.z= 1;
W2.r= sqrt(2);    W2.theta= pi/4;    W2.z= -1;
dW= GetDist(W1,W2);
disp('圆柱坐标系')
dW




disp('二维点')
Q1= MakePoint(1,1); 
Q2= MakePoint(1,-1);  
dQ= GetDist(Q1,Q2);
disp('直角坐标系')
dQ


W1= MakePointPolar(sqrt(2),pi/4); 
W2= MakePointPolar(sqrt(2),-pi/4); 
dW= GetDist(W1,W2);
disp('极坐标系')
dW





