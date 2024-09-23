clc;
clear;
close;

% Training data (K) matrix 4x6 
k = [ 2  7  6  3  6  3;
     10  2  8 10  9  2;
      5  3  1  3  5  6;
      3  3  6  1  6 10];
% Training supervisor/target
t = [1 0 0 1 1 0;
     0 1 1 0 0 1]

% The weight and bias are obtained from the ann_training.m 
% Layer 2 trained weight and bias matrix 5x5
wb2 = [-1.2  1.3  1.7 -1.3 -1.3;
        0.3  0.5  0.2  1.0 -1.0;
        0.6  0.1  0.8  1.5 -1.0;
        1.3 -1.2 -1.4  1.3 -0.9;
        1.3  0.3  0.5  0.4 -1.0];
% Layer 3 trained weight and bias matrix 2x6
wb3 = [ 5.2	-0.3 0.8 -3.5 0.1 -1.5;
       -4.8	 0.1 0.7  4.0 0.9 -1.4];

% Padding 1 to last row, matrix 5x6 
k_padded = cat(1, k, ones(1, 6));

z2 = wb2 * k_padded; % matrix 5x6 
a2 = 1./(1+exp(-z2)); % matrix 5x6 

% Padding 1 to last row, matrix 6x6 
a2_padded = cat(1, a2, ones(1, 6));

z3 = wb3 * a2_padded; % matrix 2x6 
a3 = 1./(1+exp(-z3)); % matrix 2x6 

% Should be the same as t
pred = round(a3)