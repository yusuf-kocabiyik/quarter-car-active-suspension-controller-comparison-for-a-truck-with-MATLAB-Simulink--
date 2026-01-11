<strong>In this project,</strong> <br></br>
we aimed to model a quarter car active suspension system with three different controllers and compare the body and suspension travel results with given different road profiles as inputs to the system. 
These controllers are inclueds: PID controller, LQR and genetic algorithm(GA) optimized LQR. With these controllers we have compared active suspension behaviours and evaluated different results.

Below you can see our quarter car active suspension model:

<img width="685" height="546" alt="1" src="https://github.com/user-attachments/assets/845d0dd5-93cb-4ad2-a73f-255599a4f62b" />

By inspecting the system, we can derive its mathematical model like down below;<br/>
𝒎_𝒖 𝒛 ̈_𝒖=−𝒃_𝒔 (𝒛 ̇_𝒖−𝒛 ̇_𝒔 )−𝒃_𝒕 (𝒛 ̇_𝒖−𝒛 ̇_𝒔 )−𝒌_𝒔 (𝒛_𝒖−𝒛_𝒔 )−𝒌_𝒕 (𝒛_𝒖−𝒛_𝒓 )  −𝒇_𝒂<img width="1028" height="54" alt="image" src="https://github.com/user-attachments/assets/85dee3d2-8735-4299-a03a-c2e31884eaf5" />
