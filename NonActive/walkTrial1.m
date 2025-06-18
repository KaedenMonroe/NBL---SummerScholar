walk1 = readtable('C:\Users\kaeden\Desktop\Code\Summer Scholar\Data\AGD10_walk_1_ORIGINAL.CSV');
walk1.Properties.VariableNames = {'time', 'hindfoot', 'forefoot', 'a', 'b'};


dataStruct.xaxis = walk1{:,1};
dataStruct.xaxisTitle = 'Time';
dataStruct.y1 = walk1{:,2};
dataStruct.y1Title = 'hindfoot';
dataStruct.y2 = walk1{:,3};
dataStruct.y2Title = 'forefoot';

detrendplot(dataStruct);




