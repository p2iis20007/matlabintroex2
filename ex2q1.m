% @author: Nishanth
% @date: 19th Sept 2020
% @brief: Find I vector 

% reset workspace
clc;
clear;

% initial values
rMat = [7 -5 0; -5 19 -4; 0 -4 6];
vMat = [-25; 25; 50];

% compute I vector
iMat = inv(rMat) * vMat;

% display output
fprintf("I1: %f\n",iMat(1));
fprintf("I2: %f\n", iMat(2));
fprintf("I3: %f\n", iMat(3));

