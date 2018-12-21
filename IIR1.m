function Hd = IIR1(fs,fpass,fstop)
%IIR1 Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 8.4 and the Signal Processing Toolbox 6.22.
% Generated on: 21-Dec-2018 02:39:50

% Elliptic Lowpass filter designed using FDESIGN.LOWPASS.

% All frequency values are in Hz.
Fs = fs;  % Sampling Frequency

Fpass = fpass;     % Passband Frequency
Fstop = fstop;     % Stopband Frequency
Apass = 1;       % Passband Ripple (dB)
Astop = 80;      % Stopband Attenuation (dB)
match = 'both';  % Band to match exactly

% Construct an FDESIGN object and call its ELLIP method.
h  = fdesign.lowpass(Fpass, Fstop, Apass, Astop, Fs);
Hd = design(h, 'ellip', 'MatchExactly', match);

% [EOF]
