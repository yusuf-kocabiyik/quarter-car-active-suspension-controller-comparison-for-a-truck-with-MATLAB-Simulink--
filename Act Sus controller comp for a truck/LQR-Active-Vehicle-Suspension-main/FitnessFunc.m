

function J = FitnessFunc(q)

	% Q = [ q1, q2, q3, q4 ]
	% R = q5 

	% ############### MODEL PARAMETERS############### 

     ms  = 730.1;% Sprung Mass (kg) 
     mu = 54.3;% Unsprung Mass (kg)
      ks  = 19960;% Suspension Stiffness (N/m) 
      kt = 175500;% Wheel stiffness (N/m)
      bs  = 1290;% Suspension Inherent Damping coefficient (sec/m)
      bus = 645;% Wheel Inhenrent Damping coefficient (sec/m)


	 

	% ############### State Space Model ##############
	A = [ 0 1 0 -1;
	    -ks/ms -bs/ms 0 bs/ms;
	    0 0 0 1;
	    ks/mu bs/mu -kt/mu -(bs+bus)/mu];

	B = [0  0; 
	     0 1/ms;
	     -1  0;
	     bus/mu -1/mu];

	C = [ 1 0 0 0;
	     -ks/ms -bs/ms 0 bs/ms];

	D = [0 0;
	     0 1/ms];

	% Declaration of Q and R matrices variables 
	temp = [q(1);
			q(2);
			q(3);
			q(4)];
	Q = diag(temp);
	R = q(5);
	 
	% Calculating Gain
	k = lqr(A, B(:, 2), Q, R);
     

	% Calculating eigen vector and eigen values

	% V is the right eigenvector and W is the left eigenvector 
	% D is the diagonal matrix of the eigenvalues
	

	[V, D, W] = eig(A - B(:, 2) * k);

	S = dot(transpose(W), V)/(norm(V, 2)*norm(W, 2));
	J = abs(sum(S));
    

end
