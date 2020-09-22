% @author: Nishanth
% @date: 19th Sept 2020
% @brief: Find the sum

% reset workspace
clc;
clear;

% get input
n = input ("Enter a natural number less than equal to 100: ");

% compute the sum
if (n >= 1) && (n <= 100)
    val = n:1:100;
    s = sum(val .^ 2);
    disp("sum: " + s);
else
    disp("invalid input");
end