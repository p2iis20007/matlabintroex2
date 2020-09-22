% @author: Nishanth
% @date: 19th Sept 2020
% @brief: halfwave rectification circuit

% reset workspace
clc;
clear;

% get configuration
config = readtable("ex2q6.csv");

vp = config.vp; % peak voltage
nc = config.cycles; % number of repetition
ns = config.samples; % number of samples

theta = linspace(0,nc*2*pi,ns);

% compute half wave
vout = zeros(1,length(theta));

j = 1;
for i = 1:length(theta)
    if (theta(i) > ((j * 2) - 1) * pi) && (theta(i) < j * 2 * pi)
        vout(i) = 0;
    else 
        vout(i) = vp * sin (theta(i));
    end
    if theta(i) > j * 2 * pi
        j=j+1;
    end
end

% plot graph
plot (theta,vout, "k");
title("Halfwave Rectification Plot");
xlabel ("Theta (wt)");
ylabel ("Vout");
grid
axis([0 nc*2*pi -vp vp])

