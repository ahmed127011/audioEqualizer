function Hd = IIR2(fs,fstop1,fpass1,fstop2,fpass2)
%IIR2 Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 8.4 and the Signal Processing Toolbox 6.22.
% Generated on: 21-Dec-2018 02:43:35

% Elliptic Bandpass filter designed using FDESIGN.BANDPASS.

% All frequency values are in Hz.
Fs = fs;  % Sampling Frequency

Fstop1 = fstop1;     % First Stopband Frequency
Fpass1 = fpass1;     % First Passband Frequency
Fpass2 = fpass2;     % Second Passband Frequency
Fstop2 = fstop2;     % Second Stopband Frequency
Astop1 = 60;      % First Stopband Attenuation (dB)
Apass  = 1;       % Passband Ripple (dB)
Astop2 = 80;      % Second Stopband Attenuation (dB)
match  = 'both';  % Band to match exactly

% Construct an FDESIGN object and call its ELLIP method.
h  = fdesign.bandpass(Fstop1, Fpass1, Fpass2, Fstop2, Astop1, Apass, ...
                      Astop2, Fs);
Hd = design(h, 'ellip', 'MatchExactly', match);

% [EOF]
