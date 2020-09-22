% @author: Nishanth
% @date: 19th Sept 2020
% @brief: Plot function

% reset workspace
clc;
clear;

% initial values
timeInSec = linspace(0,3,100);

% compute y
y = 1 + (exp(-2 .* timeInSec) .* sin(8 .* timeInSec - pi / 2));

% find peak value and index
[peakVal, idx] = max(y);

% display peak value and corresponding time
disp("Peak of y: " + peakVal);
disp("Time instance of the peak value: "+ timeInSec(idx)+ " Seconds");

% plot graph timeInSec vs y
plot (timeInSec, y, "k+:");
title("Plot of Time vs function y")
xlabel("Time in seconds");
ylabel("Values of y(t)");
grid;

