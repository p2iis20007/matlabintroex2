% @author: Nishanth
% @date: 20th Sept 2020
% @brief: signal processing function


% reset workspace
clc;
clear;

% prefined values 
X = [4 2 6 3];
Y = [6 2 7 1];

% read configurations
config = readtable("ex2q8.csv");

% compute A
A = X(config.i) * Y(config.j);
disp("A(i,j): ");
disp(A);

% compute B
B = X(config.i) / Y(config.j);
disp("B(i,j): ");
disp(B);

% compute C
C = X(config.i) * Y(config.i);
disp("C(i): ");
disp(C);

% compute D
D = X(config.i) / (2 + X(config.i) + Y(config.j));
disp("D(i,j): ");
disp(D);
