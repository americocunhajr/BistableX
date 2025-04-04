% -----------------------------------------------------------------
%  SVD_Denoise.m
% -----------------------------------------------------------------
%  Programmer: Americo Cunha Jr
%              americo.cunhajr@gmail.com
%
%  Originally programmed in: Aug 14, 2024
%            Last update in: Aug 15, 2024
% -----------------------------------------------------------------
%  This function removes noise from a given time series using 
%  Singular Value Decomposition (SVD). It constructs a Hankel matrix
%  from the time series, performs SVD, and reconstructs a denoised
%  time series by truncating small singular values.
%
%  Input:
%  (Nx x 1 double) x - noisly time series
%         (int >0) w - window length for Hankel matrix
%         (int >0) r - truncation rank (optional)
% 
%  Output:
%  (Nx x 1 double) denoised_x - denoised time series
%         (int >0)          r - truncation rank (optional)
% -----------------------------------------------------------------
%  Reference:
%  D. L. Donoho and M. Gavish
%  The Optimal Hard Threshold for Singular Values is 4/sqrt(3),
%  IEEE Transactions on Information Theory, 60(8):5040-5053, 2014
%  DOI:   https://doi.org/10.1109/TIT.2014.2323359
%  ArXiv: http://arxiv.org/abs/1305.5870
% -----------------------------------------------------------------
function [x_denoised,r] = SVD_Denoise(x,w,r)

    % check number of arguments
    if nargin < 2
        error('Too few inputs.');
    elseif nargin > 3
        error('Too many inputs.');
    end

    % check x for consistency
    if ~isvector(x)
        error('x must be a column vector.');
    elseif size(x,2) ~= 1
        % convert to a column vector (if necessary)
        x = x(:);
    end
    
    % check w for consistency
    if ~isscalar(w) || mod(w,1) ~= 0 || w <= 0
        error('w must be a positive integer.');
    end
    
    % Length of the input time series
    N = length(x);
    
    % check that w is not greater than N
    if w > N
        error('w cannot be greater than the length of the time series.');
    end
    
    % Preallocate the Hankel matrix
    H = zeros(N-w+1,w);
    
    % Construct the Hankel matrix H from the time series x
    for i = 1:N-w+1
        H(i,:) = x(i:i+w-1);
    end
    
    % Perform Singular Value Decomposition on the Hankel matrix
    [U,S,V] = svd(H,'econ');
    
    % Determine the rank r if not provided using Gavish and Donoho's method
    if nargin < 3
        [m, n] = size(H);
        s      = diag(S);
        beta   = min(m, n) / max(m, n);
        thresh = optimal_SVHT_coef(beta, 0)*median(s);
        r      = length(s(s > thresh));
    else
        % check r for consistency
        if ~isscalar(r) || mod(r,1) ~= 0 || r <= 0
            error('r must be a positive integer.');
        end

        % check that r is not greater than w
        if r > w
            error('r cannot be greater than w.');
        end
    end
    
    % Truncate the singular values to the top r values
    S_r                  = S;
    S_r(r+1:end,r+1:end) = 0;
    
    % Reconstruct the denoised Hankel matrix
    H_denoised = U*S_r*V';
    
    % Preallocate the denoised time series and a counter for averaging
    x_denoised = zeros(N, 1);
    count      = zeros(N, 1);
    
    % Reconstruct the denoised time series using diagonal averaging
    for i = 1:N-w+1
        for j = 1:w
            x_denoised(i+j-1) = x_denoised(i+j-1) + H_denoised(i, j);
            count(i+j-1)      = count(i+j-1) + 1;
        end
    end
    
    % Normalize by the number of contributions to each element
    x_denoised = x_denoised./count;
end
% -----------------------------------------------------------------

% -----------------------------------------------------------------
% This function comoutes the optimal threshold coefficient.
% 
% Originally programmed by Donoho and Gavish (2014)
% -----------------------------------------------------------------
function coef = optimal_SVHT_coef(beta,sigma_known)
    if sigma_known
        coef = optimal_SVHT_coef_sigma_known(beta);
    else
        coef = optimal_SVHT_coef_sigma_unknown(beta);
    end
end

function lambda_star = optimal_SVHT_coef_sigma_known(beta)
    assert(all(beta>0));
    assert(all(beta<=1));
    assert(numel(beta) == length(beta)); % beta must be a vector
    w           = (8*beta)./(beta+1+sqrt(beta.^2+14*beta+1));
    lambda_star = sqrt(2*(beta+1)+w);
end

function omega = optimal_SVHT_coef_sigma_unknown(beta)
    assert(all(beta>0));
    assert(all(beta<=1));
    assert(numel(beta) == length(beta)); % beta must be a vector
    coef     = optimal_SVHT_coef_sigma_known(beta);
    MPmedian = zeros(size(beta));
    for i = 1:length(beta)
        MPmedian(i) = MedianMarcenkoPastur(beta(i));
    end
    omega = coef./sqrt(MPmedian);
end

function med = MedianMarcenkoPastur(beta)
    MarPas = @(x) 1-incMarPas(x,beta,0);
    lobnd  =     (1-sqrt(beta))^2;
    hibnd  =     (1+sqrt(beta))^2;
    change =      1;
    while change && (hibnd-lobnd > 0.001)
        change = 0;
        x      = linspace(lobnd,hibnd,5);
        y      = arrayfun(MarPas,x);
        if any(y < 0.5)
            lobnd  = max(x(y < 0.5));
            change = 1;
        end
        if any(y > 0.5)
            hibnd  = min(x(y > 0.5));
            change = 1;
        end
    end
    med = (hibnd+lobnd)/2;
end

function I = incMarPas(x0, beta, gamma)
    if beta > 1
        error('beta beyond valid range.');
    end
    topSpec      = (1+sqrt(beta))^2;
    botSpec      = (1-sqrt(beta))^2;
    Q            = @(x) (topSpec-x).*(x-botSpec) > 0;
    point        = @(x) sqrt((topSpec-x).*(x-botSpec))./(beta.*x)/(2*pi);
    counterPoint = 0;
    MarPas       = @(x) IfElse(Q(x),point(x),counterPoint);
    if gamma ~= 0
       fun = @(x) (x.^gamma.*MarPas(x));
    else
       fun = @(x) MarPas(x);
    end
    I   = integral(fun,x0,topSpec);
end

function y = IfElse(Q, point, counterPoint)
    y = point;
    if any(~Q)
        if length(counterPoint) == 1
            counterPoint = ones(size(Q)) .* counterPoint;
        end
        y(~Q) = counterPoint(~Q);
    end
end
% -----------------------------------------------------------------