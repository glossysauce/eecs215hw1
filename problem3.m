%% clean up workspace
clear;
clc;
close all;

%% main code body
% do plots
dt = 1e-2; % seconds
t = 0:dt:5; % seconds
[current, voltage] = P1_35func(t); % Call the function

%% define power
p = current .* voltage;

%% plot power
subplot(2,1,1);
plot(t, p, 'linewidth', 1);
grid on;
xlabel('time(s)');
ylabel('Power (W)');

%% Local function for current, voltage vs. time
function [ii, vv] = P1_35func(t)
    for jj = 1:length(t)
        t0 = t(jj);
        if t0 < 1
            ii(jj) = 10 * t0;
            vv(jj) = 5;
        elseif t0 >= 1 && t0 < 3
            ii(jj) = 10;
            vv(jj) = 0;
        elseif t0 >= 3 && t0 < 4
            ii(jj) = 10 - 10*(t0 - 3);
            vv(jj) = -5;
        else
            ii(jj) = 0;
            vv(jj) = 0;
        end
    end
end
