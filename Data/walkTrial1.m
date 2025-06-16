walk1 = readtable('C:/Users/kaeden/Desktop/Data/AGD10_walk_1_ORIGINAL.CSV');
walk1.Properties.VariableNames = {'time', 'hindfoot', 'forefoot', 'a', 'b'}
%head(walk1);

time = walk1{:,1};
hindfoot = walk1{:,2};
forefoot = walk1{:,3};

trendline_forefoot = detrend(forefoot);
trendline_hindfoot = detrend(hindfoot);


% Plotting baseline data
figure();
hold on;
%plot(time, forefoot);
plot(time, trendline_forefoot, 'red');

%plot(time, hindfoot);
plot(time, trendline_hindfoot, 'blue');
hold off;

