% M14_3_1
function [x,y] = pwLadapt2(f,L,fL,R,fR,tol)
% Produces column n-vectors x and y so that plot(x,y) is a good
% rendition of the function f across the interval [L,R].
% fL is the value of f at L and fR is the value of f at R.
% tol > 0 determines how close the piecewise linear interpolant
% is to f. The x and y vectors may be as long as 2(R-L)/tol so
% tol should not be too small.

if (R-L) <= tol
    % The linear interpolant is acceptable...
    x = [L;R]; y = [fL;fR];
else
    m  = (L+R)/2; fm = f(m);
    if abs(fm-(fL+fR)/2) <= tol
        % The linear interpolant is acceptable...
        x = [L;m;R]; y = [fL;fm;fR];
    else
        % Produce left and right piecewise linear interpolants...
        [xL,yL] = pwLadapt2(f,L,fL,m,fm,tol);
        [xR,yR] = pwLadapt2(f,m,fm,R,fR,tol);
        % and synthesize...
        x = [ xL;xR(2:length(xR))];
        y = [ yL;yR(2:length(yR))];
    end
end
