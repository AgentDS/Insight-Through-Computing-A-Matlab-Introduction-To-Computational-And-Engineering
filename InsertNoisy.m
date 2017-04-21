% P13_2_5
function yNoisy = InsertNoisy(tVals,y)
% Adds noise to the signal y.

n = length(y);
% Add noise...
A = .5;
yNoisy = y + A*randn(n,1);
end