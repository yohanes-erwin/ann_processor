clc;
clear;
close;

% Training data (K)
k = [ 2  7  6  3  6  3;
     10  2  8 10  9  2;
      5  3  1  3  5  6;
      3  3  6  1  6 10];
% Training supervisor/target
t = [1 0 0 1 1 0;
     0 1 1 0 0 1];
 
% Layer 2 random weight matrix 5x4
w2 = [0.1 0.4 0.1 0.9;
      0.3 0.5 0.2 1.0;
      0.6 0.1 0.8 1.5;
      1.0 0.2 0.4 0.2;
      1.3 0.3 0.5 0.4];
% Layer 3 random weight matrix 2x5
w3 = [0.7 0.2 1.3 0.5 0.6;
      0.2 0.5 1.1 1.2 1.3];

% Layer 2 bias matriks 5x1 
b2 = [-1;
      -1;
      -1;
      -1;
      -1];
% Layer 3 bias matriks 2x1 
b3 = [-1;
      -1];
  
% Forward process (random weight before training)
z2 = w2 * k + b2*ones(1,size(k,2));
a2 = 1./(1+exp(-z2));
z3 = w3 * a2 + b3*ones(1,size(k,2));
a3 = 1./(1+exp(-z3));
fprintf('=== Prediction before training ===\n');
pred = round(a3)

% Training using back propagation
% Step size 
eta = 0.1; % Learning rate. If the learning rate is too high, 
           % the updated coefficient becomes too large and 
           % the cost may not decrease 
[w2,w3,b2,b3] = Back_propagation(k,w2,w3,b2,b3,t,eta);

% Forward process (final weight after training)
z2 = w2 * k + b2*ones(1,size(k,2));
a2 = 1./(1+exp(-z2));
z3 = w3 * a2 + b3*ones(1,size(k,2));
a3 = 1./(1+exp(-z3));
fprintf('=== Prediction after training ===\n');
pred = round(a3)

% Comparison
fprintf('=== Ground truth ===\n');
t