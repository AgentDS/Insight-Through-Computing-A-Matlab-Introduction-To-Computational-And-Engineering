% P13_2_5
function [tVals,y] = MakeSound(i,j)
% i (1<=i<=4) and j (1<=j<=3) are integers that identify
% the row i and column j button in the touch-tone pad.
% The sample times and signal are returned in tVals and y.

% The touchpad frequencies for the rows and columns...
fR = [ 697  770  852  941];

fC = [ 1209  1336  1477];

% Sampling rate. This many numbers/sec in the digital signal:
Fs = 32768;
% Duration of the tone is .25 sec. 
tVals = (0:(1/Fs):.25)';

% Sample the signal sin(2*pi*fR(i)*t)  + sin(2*pi*fC(j)*t) at times
% specified by tVals and add in noise...
yR = sin(2*pi*fR(i)*tVals); 
yC = sin(2*pi*fC(j)*tVals); 
y  = (yR + yC)/2;

end