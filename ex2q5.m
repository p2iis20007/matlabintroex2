% @author: Nishanth
% @date: 19th Sept 2020
% @brief: 9x9 matrix

% reset workspace
clc;
clear;

% compute matrix
mat = eye(3,3);
mat = 1 - mat;
mat = [mat mat*2 mat*3; mat*4 mat*5 mat*6; mat*7 mat*8 mat*9];

% print output matrix
disp(mat)
