%% Parameters of the system used for the simulation

ms  = 730.1;% Sprung Mass (kg) 
mus = 54.3;% Unsprung Mass (kg)
ks  = 19960;% Suspension Stiffness (N/m) 
kus = 175500;% Wheel stiffness (N/m)
bs  = 1290;% Suspension Inherent Damping coefficient (sec/m)
bus = 645;% Wheel Inhenrent Damping coefficient (sec/m)


%% System Dynamics for the Active Suspension system.
A = [ 0 1 0 -1 ;
    -ks/ms -bs/ms 0 bs/ms;
      0 0 0 1; 
    ks/mus bs/mus -kus/mus -(bs+bus)/mus];

B = [0  0 ; 
     0 1/ms ; 
    -1  0 ;
    bus/mus -1/mus ];

C = [ 1 0 0 0 ; 
    -ks/ms -bs/ms 0 bs/ms ];


D = [0 0;
     0 0;
     0 0;
     0 0;
     0 0;
     0 1/ms];
sys=ss(A,B,C,D)
%% Controllability
rank(ctrb(A,B))
%% LQR Control law

Q = diag([300000, 60000, 1, 1]);

R = 0.01;

K = lqr( A, B(:,2), Q, R ) 

%% Simulation Initiation/ Time Setting

Sim_Time= 10;

sim('Suspension_model')
% sim('CLEANEDSuspension_model')

%% Plot of Truck Body Movement-Zs
x1 = Zs_lqr.time;
y1 = Zs_lqr.data;
y2 = Zs_PAS.data;
y3 = Zs_OP.data;
y13 = Zs_PID.data;

figure (1)
p=plot(x1,y1,'r',x1,y2,'b',x1,y3,'m',x1,y13,'g')
p(1).LineWidth = 1.7;
p(2).LineStyle  = '--';
p(2).LineWidth = 1.7;
p(3).LineWidth= 1.7;
p(4).LineWidth= 1.7;
grid
title ('\fontsize{17}Time response of Body Movement') 
xlabel('\fontsize{20}Time (secs)') 
ylabel('\fontsize{20}Movement (m/s2)'); 
legend({'LQR','Passive','Optimal LQR','Optimal PID'},'FontSize',16,'FontWeight','bold')


%% Plot of Truck Body Acceleration 
x2 = Acceleration_LQR.time;
y4 = Acceleration_LQR.data;
y5 = Acceleration_PAS.data;
y6 = Acceleration_OP.data;
y14 = Acceleration_PID.data;

figure (2)
p=plot(x2,y4,'r',x2,y5,'b',x2,y6,'m',x2,y14,'g')
p(1).LineWidth = 1.7;
p(2).LineStyle  = '--';
p(2).LineWidth = 1.7;
p(3).LineWidth= 1.7;
p(4).LineWidth= 1.7;
grid
title ('\fontsize{17}Time response of Sprung mass acceleration') 
xlabel('\fontsize{20}Time (secs)') 
ylabel('\fontsize{20}Acceleration (m/s2)'); 
legend({'LQR','Passive','Optimal LQR','Optimal PID'},'FontSize',16,'FontWeight','bold')



 %% Plot of the Suspension Travel 
x3 = Suspension_Travel_LQR.time;
y7 = Suspension_Travel_LQR.data;
y8 = Suspension_Travel_PAS.data;
y9 = Suspension_Travel_OP.data;
y15 = Suspension_Travel_PID.data;

figure (3)
p=plot(x3,y7,'r',x3,y8,'b',x3,y9,'m',x3,y15,'g')
p(1).LineWidth = 1.7;
p(2).LineStyle  = '--';
p(2).LineWidth = 1.7;
p(3).LineWidth= 1.7;
p(4).LineWidth= 1.7;
grid
title ('\fontsize{17}Time response of the Suspension Travel') 
xlabel('\fontsize{20}Time (secs)') 
ylabel('\fontsize{20}Travel (m)'); 
legend({'LQR','Passive','Optimal LQR','Optimal PID'},'FontSize',16,'FontWeight','bold')
 

%% Plot of Wheel Deflection
x4 = Deflection_LQR.time;
y10 = Deflection_LQR.data;
y11 = Deflection_PAS.data;
y12 = Deflection_OP.data;
y16 = Deflection_PID.data;

figure (4)
p=plot(x4,y10,'r',x4,y11,'b',x4,y12,'m',x4,y16,'g')
p(1).LineWidth = 1.7;
p(2).LineStyle  = '--';
p(2).LineWidth = 1.7;
p(3).LineWidth= 1.7;
p(4).LineWidth= 1.7;
grid
title ('\fontsize{17}Time response of the Wheel Deflection') 
xlabel('\fontsize{20}Time (secs)') 
ylabel('\fontsize{20}Wheel Deflection (m)'); 
legend({'LQR','Passive','Optimal LQR','Optimal PID'},'FontSize',16,'FontWeight','bold')




