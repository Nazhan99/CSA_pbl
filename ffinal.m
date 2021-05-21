clear all
clc
num=[1 2];
den=[1 9 18 0];
G=tf(num,den)
% test=[2 9 12 8];
% r=roots(test)
rlocus(G)