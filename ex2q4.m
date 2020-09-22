% @author: Nishanth
% @date: 19th Sept 2020
% @brief: 10x10 matrix

% reset workspace
clc;
clear;

% create matrix
res = repmat(15,10,10);
iMat = 17 * eye(10,10);
res = res + iMat;
res(10,10) = 15;

% print matrix
disp(res);