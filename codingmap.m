clear
clc


% num=[1];
% den= [1 31622800 10000000];
% G=tf(num,den)
% step(G)
% [r,p,c]=residue(num,den)


% num=[1 4];
% den= conv([1 7],[1 10]);
% G=tf(num,den)
% pzmap(G)


% num=[1 4];
% den= [1 5];
% G=tf(num,den)
% pzmap(G)


% num=[20];
% den= [1 20];
% G=tf(num,den)
% pzmap(G)
% figure
% step(G)


% num=[9];
% den= [1 9 9];
% G=tf(num,den)
% pzmap(G)
% figure
% step(G)

% w=5
% z=0.1
% 
% num=[w*w]
% den=[ 1 2*z*w w*w]
% G=tf(num,den)
% step(G)

% num=[1 4]
% den=[ 1 8 0]
% G=tf(num,den)
% T=feedback(G,1)
% step(T)

% s=tf('s');
% G=((s+4)/(s+8));
% T=feedback(G,1);
% %for step input
% step(T)
% 
% 
% %for ramp input
% t=0:0.01:1;
% u =t;
% %change to t^2 for parabola input
% [y,t,x]= lsim(T,u,t);
% plot(t,y,'b',t,u,'r')


% s=tf('s');
% G=((s+4)/(s*s*(s+8)));
% T=feedback(G,1);
% %for step input
% % step(T)
% 
% 
% %for ramp input
% t=0:0.1:10;
% u =t.^2;
% %change to t^2 for parabola input
% [y,t,x]= lsim(T,u,t);
% plot(t,y,'b',t,u,'r')

% s=tf('s');
% G=((s+4)/(s*s*(s+8)));
% T=feedback(G,1);
%for step input
% step(T)


%for ramp input
% t=0:0.01:100;
% u =t.^2;
%change to t^2 for parabola input
% [y,t,x]= lsim(T,u,t);
% plot(t,y,'b',t,u,'r')



% K=100
% num=K;
% den=conv([1 2], [1 9 10]);
% G=tf(num,den);
% T=feedback(G,1);
% margin(T)

% num=[1];
% den=[1 1];
% S=tf(num,den)

% timestep=0.01;
% tfinal=10;
% t=0:timestep:tfinal;
% 
% frequency=1;
% u=sin(frequency*t);
% y=lsim(S,u,t);
% 
% plot(t,u,'b',t,y,'r'),grid
% legend({'Input (u)', 'Output(y)'})

%Bode plot
% num=[1 0.1];
% den=conv([1 1],[1 10]);
% S=tf(num,den)

num=[1];
den=conv([1 0],[1 2 10]);
S=tf(num,den)
margin(S)
[Gm,Pm,Wcg,Wcp] = margin(S)
[wn,zeta]=damp(S)
bode(S),grid

