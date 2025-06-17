detrendplot detrendplot(dataStruct)
%Takes struct, detrends yaxis, and returns a plot
%Inputs
%   dataStruct - Struct containing:
%       xaxis       : x-axis values
%       y1, y2      : y-axis datasets to detrend
%       y1Title     : label for y1 in legend
%       y2Title     : label for y2 in legend
% Outputs
%   combined plots

% Detrending the input data
trend_y1 = detrend(dataStruct.yaxis1);
trend_y2 = detrend(dataStruct.yaxis2);

% Creating the plot
figure();
hold on;
plot(dataStruct.xaxis, trend_y1, 'r', 'DisplayName', dataStruct.yaxis1Title);
plot(dataStruct.xaxis, trend_y2, 'b', 'DisplayName', dataStruct.yaxis2Title);

%Add labels
xlabel('time');
ylabel('Frequency');
title('Detrended Signals');
legend();
hold off;
end