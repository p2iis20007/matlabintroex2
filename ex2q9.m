% @author: Nishanth
% @date: 20th Sept 2020
% @brief: speed control of dc motor

% reset workspace
clc;
clear;

% read configuration
config = readtable("ex2q9.csv");

% set configurations
carrierFreq = config.carrFreq;
modFreq = config.modFreq;
fs = config.fs;
modSignalCycles = config.modCycles;
modSignalAmp = config.modSigAmp;

% generate time 
T = modSignalCycles * (1/modFreq);
t = linspace (0, T, modSignalCycles*fs);

% modulating signal 
w = 2 * pi * modFreq;
modSig = modSignalAmp * sin(w*t);

% carrier signal
wCarr = 2 * pi * carrierFreq;
carrSignal = sawtooth(wCarr * t,.5);

% pwm signal
pwmSig = zeros (size(t)); 
for i = 1:length(t)
    if modSig(i) > carrSignal(i)
        pwmSig(i) = 1;
    else
        pwmSig(i) = 0;
    end
end

subplot(2,1,1);
plot(t,modSig);
hold on;
plot(t,carrSignal);
hold off;
grid on;
title("Carrier and Modulating Signals")
xlabel ("Time in seconds");
ylabel ("Vcarrier & Vmodulating");
legend("Modulating Signal", "Carrier Signal")

subplot(2,1,2);
plot(t,pwmSig);
grid on;
title("PWM Signal")
xlabel ("Time in seconds");
ylabel ("Vpwm");
