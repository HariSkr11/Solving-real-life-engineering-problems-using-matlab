%MATLAB PART FOR QUESTION 1
T=input("Enter the torque provided by the engine ");
R= input("Enter the reduction ratio of the engine ");
M=T/(R*0.25*9.81);
disp("The max mass lifted up is ")
disp(M);
M1=1:T;
A=1:T;
for i = 1:T
    M1(1,i)=i/(R*0.25*9.81);
end
plot(A,M1)
title("variation of max weight lifted up by the torque to the torque provided by the engine ")
xlabel("Torque in Nm ")
ylabel("mass in kg")

%MATLAB PART FOR QUESTION 2
T=input("Enter the torque provided by the engine ");
R= input("Enter the reduction ratio of the engine ");
r=input("Enter the radius of the winch ");
a=1:r;
M2=1:r;
for i= 1:r
     M2(1,i)=T/(R*i*9.81);
end
figure;
plot(a,M2)
title("variation of max weight lifted up by the torque to the radius of the winch ")
xlabel("Torque in Nm ")
ylabel("mass in kg")