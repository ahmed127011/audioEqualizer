function Hd = fir_low(Fs, Fc)
%FIR_LOW Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.2 and the Signal Processing Toolbox 7.4.
% Generated on: 21-Dec-2018 02:40:15

% FIR Window Lowpass filter designed using the FIR1 function.

% All frequency values are in Hz.

N    = 16;       % Order
flag = 'scale';  % Sampling Flag
Beta = 0.5;      % Window Parameter

% Create the window vector for the design algorithm.
win = kaiser(N+1, Beta);

% Calculate the coefficients using the FIR1 function.
b  = fir1(N, Fc/(Fs/2), 'low', win, flag);
Hd = dfilt.dffir(b);

% [EOF]
