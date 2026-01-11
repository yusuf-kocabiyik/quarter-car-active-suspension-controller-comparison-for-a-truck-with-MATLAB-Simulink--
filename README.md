<h2>In this project,</h2>h2> <br></br>
we aimed to model a quarter car active suspension system with three different controllers and compare the body and suspension travel results with given different road profiles as inputs to the system. 
These controllers are inclueds: PID controller, LQR and genetic algorithm(GA) optimized LQR. With these controllers we have compared active suspension behaviours and evaluated different results.

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

Bump as a step input:
<img width="410" height="266" alt="6" src="https://github.com/user-attachments/assets/6b5bb57d-17a2-4df3-a3cd-8fd4f022021f" />
<img width="362" height="220" alt="7" src="https://github.com/user-attachments/assets/229ebb88-88b4-4859-b6be-28852fe45732" />
<br/><br/>

ISO D type road profile:
<br/>

<img width="682" height="417" alt="8" src="https://github.com/user-attachments/assets/876440ec-d476-47cf-bdfc-4a7f535b93cf" />
<img width="635" height="478" alt="9" src="https://github.com/user-attachments/assets/6c57e05a-51fd-4bb8-b993-fe5afb48032e" />

<h3>You can reach all related files by inspecting main folder</h3><br/>
Regards
