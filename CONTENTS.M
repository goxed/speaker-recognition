% Voicebox: Speech Processing Toolbox
%
% Audio File Input/Output
%   readwav    - Read a WAV file
%   writewav   - Write a WAV file
%   readhtk    - Read HTK waveform files
%   writehtk   - Write HTK waveform files
%   readsfs    - Read SFS files
%   readsph    - Read SPHERE/TIMIT waveform files
%   readaif    - Read AIFF Audio Interchange file format file
%   readcnx    - Raed BT Connex database files
%
% Frequency Scales
%   frq2mel    - Convert Hertz to mel scale
%   mel2frq    - Convert mel scale to Hertz
%   frq2erb    - Convert Hertz to erb rate scale
%   erb2frq    - Convert erb rate scale to Hertz
%   frq2midi   - Convert Hertz to midi scale of semitones
%   midi2frq   - Convert midi scale of semitones to Hertz
%
% Fourier/DCT/Hartley Transforms
%   rfft       - FFT of real data
%   irfft      - Inverse of FFT of real data
%   rsfft      - FFT of real symmetric data
%   rdct       - DCT of real data
%   irdct      - Inverse of DCT of real data
%   rhartley   - Hartley transform of real data
%
% Random Number Generation
%   randvec    - Generate random vectors
%   usasi      - Generate USASI noise
%   randfilt   - Generate filtered random noise without transients
%
% Vector Distances
%   disteusq   - Calculate euclidean/mahanalobis distances between two sets of vectors
%   distchar   - COSH spectral distance between AR coefficient sets 
%   distitar   - Itakura spectral distance between AR coefficient sets 
%   distisar   - Itakura-Saito spectral distance between AR coefficient sets
%   distchpf   - COSH spectral distance between power spectra 
%   distitpf   - Itakura spectral distance between power spectra 
%   distispf   - Itakura-Saito spectral distance between power spectra 
%
% Speech Analysis
%   activlev   - Calculate the active level of speech (ITU-T P.56)
%   enframe    - Divide a speech signal into frames
%   spgrambw   - Monochrome spectrogram
%   schmitt    - Pass a signal through a schmitt trigger
%
% LPC Analysis of Speech
%   lpcauto    - LPC analysis: autocorrelation method
%   lpccovar   - LPC analysis: covariance method
%   lpc--2--   - Convert between alternative LPC representation
%   lpcrr2am   - Matrix with all LPC filters up to order p
%   lpcconv    - Arbitrary conversion between LPC representations
%   lpcbwexp   - Bandwidth expansion of LPC filter
%   ccwarpf    - warp complex cepstrum coefficients
%   lpcifilt   - inverse filter a speech signal
%   lpcrand    - create random stable filters
%
% Speech Synthesis
%   glotros    - Rosenberg model of glottal waveform
%   glotlf     - Liljencrants-Fant model of glottal waveform
%
% Speech Enhancement
%   specsubm   - Spectral subtraction
%
% Speech Coding
%   lin2pcmu   - Convert linear PCM to mu-law PCM
%   pcma2lin   - Convert A-law PCM to linear PCM
%   pcmu2lin   - Convert mu-law PCM to linear PCM
%   lin2pcma   - Convert linear PCM to A-law PCM
%   kmeans     - Vector quantisation: k-means algorithm
%   kmeanlbg   - Vector quantisation: LBG algorithm
%   potsband   - Create telephone bandwidth filter
%
% Speech Recognition
%   melbankm   - Mel filterbank transformation matrix
%   melcepst   - Mel cepstrum frontend for recogniser
%   cep2pow    - Convert mel cepstram means & variances to power domain
%   pow2cep    - Convert power domain means & variances to mel cepstrum
%   gaussmix   - Fit a gaussian mixture model to data values
%
% Utility Functions
%   zerotrim   - Remove empty trailing rows and columns
%   permutes   - All n! permutations of 1:n
%   choosenk   - All choices of k elements out of 1:n
%   bitsprec   - Rounds values to a precision of n bits
%   sprintsi   - Print a value with an SI multiplier
%   logsum     - Calculates log(sum(exp(x))) without overflow
%   dualdiag   - Simultaneously diagonalise two hermitian matrices
%   dlyapsq    - Solve the discrete lyapunov equation

% Unclassified
%   window     - 
%   windowx    - 

% Missing

%   Copyright (c) 1998 Mike Brookes
%
%      Last modified Wed Jan  9 15:22:33 2002
%
%   VOICEBOX is a MATLAB toolbox for speech processing. Home page is at
%   http://www.ee.ic.ac.uk/hp/staff/dmb/voicebox/voicebox.html
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   This program is free software; you can redistribute it and/or modify
%   it under the terms of the GNU General Public License as published by
%   the Free Software Foundation; either version 2 of the License, or
%   (at your option) any later version.
%
%   This program is distributed in the hope that it will be useful,
%   but WITHOUT ANY WARRANTY; without even the implied warranty of
%   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%   GNU General Public License for more details.
%
%   You can obtain a copy of the GNU General Public License from
%   ftp://prep.ai.mit.edu/pub/gnu/COPYING-2.0 or by writing to
%   Free Software Foundation, Inc.,675 Mass Ave, Cambridge, MA 02139, USA.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

