
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




