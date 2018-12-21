function Hd = IIR2(fs,fpass1,fpass2)
%IIR2 Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 8.4 and the Signal Processing Toolbox 6.22.
% Generated on: 21-Dec-2018 03:02:15

% Elliptic Bandpass filter designed using FDESIGN.BANDPASS.

% All frequency values are in Hz.
Fs = fs;  % Sampling Frequency

N      = 32;     % Order
Fpass1 = fpass1;   % First Passband Frequency
Fpass2 = fpass2;  % Second Passband Frequency
Apass  = 1;      % Passband Ripple (dB)
Astop  = 80;     % Stopband Attenuation (dB)

% Construct an FDESIGN object and call its ELLIP method.
h  = fdesign.bandpass('N,Fp1,Fp2,Ast1,Ap,Ast2', N, Fpass1, Fpass2, ...
                      Astop, Apass, Astop, Fs);
Hd = design(h, 'ellip');

% [EOF]
