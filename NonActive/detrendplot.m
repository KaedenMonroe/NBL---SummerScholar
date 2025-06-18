function detrendplot(dataStruct)
%Takes struct, detrends yaxis, and returns a plot
%Inputs
%   dataStruct - Struct containing:
%       xaxis       : x-axis values
%       xaxisTitle  :label for x-axis in legend
%       y1, y2      : y-axis datasets to detrend
%       y1Title     : label for y1
%       y2Title     : label for y2
% Outputs
%   combined plots

% Detrending the input data
trend_y1 = detrend(dataStruct.y1);
trend_y2 = detrend(dataStruct.y2);

% Creating the plot
figure();
hold on;
plot(dataStruct.xaxis, trend_y1, 'r', 'DisplayName', dataStruct.y1Title);
plot(dataStruct.xaxis, trend_y2, 'b', 'DisplayName', dataStruct.y2Title);

%Add labels
xlabel('xaxisTitle');
ylabel('Frequency');
title('Detrended Signals');
legend();
hold off;
end 
