% @author: Nishanth
% @date: 20th Sept 2020
% @brief: rand MxN

% reset workspace
clc;
clear;

% read user configurations
config = readtable("ex2q7.csv");
m = config.m;
n = config.n;

% generate random MxN matrix
out = rand (m,n);
disp("Initial values: ");
disp(out);

% solution 1 element by element access
% set value 0 if < .35
% set value 1 if >= .35
for i = 1:m
    for j = 1:n
        if out(i,j) < .3500
            out(i,j) = 0;
        else
            out(i,j) = 1;
        end
    end
end

% solution 2
% out(out>= .35) = 1;
% out(out<.35) = 0;

% Print the output values
disp ("Processed output: ");
disp(out);
