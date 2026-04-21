<h1>Quarter Car Active Suspension Control System (MATLAB/Simulink)</h1>

<p>
This project focuses on modeling and control of a quarter car active suspension system for a truck using MATLAB/Simulink.
The objective is to improve ride comfort and road handling by designing and comparing different control strategies.
</p>


<h2> Overview</h2>
<p>
A quarter car model is used to represent the vertical dynamics of a vehicle suspension system.
Different road profiles are applied as inputs, and the system response is analyzed under various control approaches.
</p>


<h2>System Modeling</h2>
<ul>
  <li>Quarter car dynamic model with sprung and unsprung masses</li>
  <li>Suspension spring and damping elements</li>
  <li>Road disturbance as system input</li>
</ul>

<p>
The system is modeled in MATLAB/Simulink using differential equations and dynamic system representation.
</p>


<h2>Control Strategies</h2>
<p>
Three different control approaches are implemented and compared:
</p>

<ul>
  <li><b>PID Controller</b> – classical control approach</li>
  <li><b>LQR Controller</b> – optimal control method</li>
  <li><b>GA-Optimized LQR</b> – LQR parameters optimized using a genetic algorithm</li>
</ul>


<h2>Performance Evaluation</h2>
<p>
System performance is evaluated based on:
</p>

<ul>
  <li>Body displacement (ride comfort)</li>
  <li>Suspension travel</li>
  <li>Response to different road profiles</li>
</ul>

<p>
Simulation results are compared to assess the effectiveness of each control method.
</p>

<hr>

<h2> Tools & Technologies</h2>
<ul>
  <li>MATLAB</li>
  <li>Simulink</li>
</ul>

<h2>Results</h2>
<p>
Simulation results demonstrating the system response under different controllers and road profiles are provided below.
These results highlight the trade-offs between comfort and stability for each control strategy.
</p>

<h2>Notes</h2>
<p>
This project demonstrates the application of both classical and modern control methods to a real-world engineering problem.
</p>

Below you can see our quarter car active suspension model:

<img width="685" height="546" alt="1" src="https://github.com/user-attachments/assets/845d0dd5-93cb-4ad2-a73f-255599a4f62b" />

By inspecting the system, we can derive its mathematical model like down below;<br/>

<img width="482" height="172" alt="2" src="https://github.com/user-attachments/assets/aafc91d7-79cc-41be-b011-60adca05f6bb" /> 
<img width="423" height="172" alt="3" src="https://github.com/user-attachments/assets/9b2d8a6c-1320-49a5-9e72-905f41cd9434" />
<br/><br/> 
With these model and parameters we can evaluate our state space model likes this and A,B,C,D matrixes.<br/>


<img width="811" height="282" alt="4" src="https://github.com/user-attachments/assets/95666bc3-223c-46bb-b426-a88950b73098" />

<br/><br/>
 Here is our LQR - Optimal LQR simulink model;
<img width="722" height="360" alt="5" src="https://github.com/user-attachments/assets/af146f1b-d50a-4058-bf8c-21758ac482a3" />

Lastly our comparison results to two different road profile --> first input : bump road,  second input: ISO D type road profile;<br/>

Bump as a step input:<br/>
<img width="410" height="266" alt="6" src="https://github.com/user-attachments/assets/6b5bb57d-17a2-4df3-a3cd-8fd4f022021f" />
<img width="362" height="220" alt="7" src="https://github.com/user-attachments/assets/229ebb88-88b4-4859-b6be-28852fe45732" />
<br/><br/>

ISO D type road profile:
<br/>

<img width="682" height="417" alt="8" src="https://github.com/user-attachments/assets/876440ec-d476-47cf-bdfc-4a7f535b93cf" />
<img width="635" height="478" alt="9" src="https://github.com/user-attachments/assets/6c57e05a-51fd-4bb8-b993-fe5afb48032e" />

<h3>You can reach all related files by inspecting main folder</h3><br/>
Regards
