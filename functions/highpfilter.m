function H = highpfilter(tipus, M, N, D0, n)
% H = HPFILTER(TYPE, M,N,D0,N) creates the transfer
% function of a highpass filter, H, of the specified TYPE and
% size (M-by-N). To view the filter as an image or mesh
% plot, it should be centered using H=fftshift(H).
%
% Valid values for TYPE, DO and n are:
%
% 'ideal' ideal highpass filter with cutoff frequency D0. n
% need not be supplied. D0 must be positive.
%
% 'btw' Butterworth highpass filter of order n, and cutoff
% D0. The default value for n is 1.0. D0 must be
% positive.
%
% 'gauss' gaussian highpass filter with cutoff (standard
% deviation) D0. n need not be supplied. D0 must
% be positive.
    H = zeros(M,N);
    [U,V]= dftuv(M,N);
    D = (U.^2+V.^2);

    if tipus == "ideal"
        H(D>=D0) = 1;
        
    elseif tipus == "btw"
        H = 1-(1./(1+(D./D0).^(2*n)));

    elseif tipus == "gauss"
        H = 1-(exp(-D.^2./(2*D0^2)));

    end
end