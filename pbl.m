clear all
clc

num=[20 30];
den=[0.2 15 30 1];
G=tf(num,den) % in transfer function
[A,B,C,D]= tf2ss(num,den) %convert tf to ss




% margin(G)
% [Gm,Pm,Wcg,Wcp] = margin(G)
% [wn,zeta]=damp(G)
% bode(G),grid


% num=[1 20];
% den=[1 5 6 0];
% [A,B,C,D]= tf2ss(num,den)
% [num,den]=ss2tf(A,B,C,D)