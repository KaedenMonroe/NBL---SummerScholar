function [list] = sepCycle(data)
% summary
%Inputs
%   dataStruct - Struct containing:
%       xaxis       : x-axis values
%       xaxisTitle  :label for x-axis in legend
%       y1, y2      : y-axis datasets to detrend
%       y1Title     : label for y1
%       y2Title     : label for y2
% output

list = {};
buffer = [];
enumerate = 1;
for i = data
    if i == 0
        list{enumerate} = buffer;
        buffer = [];
        enumerate = enumerate + 1;
    else
        enumerate(end+1) = data(i);
    end
end