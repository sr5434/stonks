clc, clearvars%Cleanup
T = readtable('data.csv');%Load price data
f = fit(convertTo( ...
    datetime( ...
    cell2mat( ...
    T.Date),'InputFormat','MM/yyyy') ...
    ,'epochtime','Epoch','2001-01-01','TicksPerSecond',1000), ...
    T.Close, ...
    "poly2");%Fit model to price data
f(0)%Input the number of seconds between 01-01-2000 at midnight and whenever you want to calculate the price for
