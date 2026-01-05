
% Genetic Algorithm to tune PID Parameters
%Initialization

no_var = 3;
lb = [0 0 0];
ub = [150 3000 45];


%GA Options
ga_opt = gaoptimset('Display','off','Generations',25,'PopulationSize',50,'PlotFcns',@gaplotbestf);
obj_fn = @(k) optimization_PID(k);

%GA command

[k,best] = ga((obj_fn),no_var,[],[],[],[],lb,ub,[],ga_opt)

