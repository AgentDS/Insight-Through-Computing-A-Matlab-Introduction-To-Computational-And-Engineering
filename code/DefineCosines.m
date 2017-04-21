% P13_2_5
function [r,c] = DefineCosines(y)
% Calculate the cosine that signal y makes with each of the 4 perfect row
% signals and each of the three perfect column signals.
% r,c分别为最有可能的行与列的组合
% Set up the perfect signal matrices...
Fs = 32768;
tVals = 0:(1/Fs):.25;
tau = 2*pi*tVals';
fR = [697 770 852 941];
trueR = [sin(tau*fR(1)) sin(tau*fR(2)) sin(tau*fR(3)) sin(tau*fR(4))];
fC = [1209 1336 1477];
trueC = [sin(tau*fC(1)) sin(tau*fC(2)) sin(tau*fC(3))];

% Compute the row and column cosines...
for i=1:4
    rowCosine(i) = cos_xy(y,trueR(:,i));
end
for i=1:3
    colCosine(i) = cos_xy(y,trueC(:,i));
end


[rMax,r]= max(rowCosine);
[cMax,c]= max(colCosine);
end