
function cost = optimization_PID(k)
assignin('base','k',k);
sim("Suspension_model_PID.slx");
cost= ITAE(length(ITAE))
end

