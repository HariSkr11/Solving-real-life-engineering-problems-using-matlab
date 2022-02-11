b=input("Enter the base length ");
A1=(1.3*(b-0.6))/4; %right angled triangle area
I1=((b-0.6)/2)*(1.3^3)/36; %right angled triangle moment of inertia wrt centroid
dy1=(1.3/3)+0.5;%right angled triangle distance of centroid from x axis
X1=(dy1^2);
S1=(A1*(X1))+I1;%right angled triangle moment of inertia wrt x axis

A2=((b-0.6)*0.5/2); %2 small rectangles area
I2=((b-0.6)/2*(0.5^3))/12; % 2 small rectangles on the base moment of inertia wrt centroid
dy2=0.25;% 2 small rectangles on the base distance of centroid from x axis
X2=(dy2^2);
S2=(A2*(X2))+I2; % 2 small rectangles on the base moment of inertia wrt x axis

A3 = 1.5; % BIG RECTANGLE area
dy3=1.25; % BIG RECTANGLE moment of inertia wrt centroid
I3=(0.6*(2.5^3))/12; % BIG RECTANGLE distance of centroid from x axis
X3=(dy3^2);
S3=(A3*(X3))+I3;% BIG RECTANGLE moment of inertia wrt x axis

A4 = (3.14*(0.125)^2); %hollow circle area
dy4 = 2.2; %hollow circle moment of inertia wrt centroid
I4 = (3.14*(0.25^4))/64; %hollow circle distance of centroid from x axis
X4=(dy4^2);
S4=(A4*(X4))+I4; %hollow circle moment of inertia wrt x axis

A5=(0.92/2); %hollow TRIANGLE area
dy5=(0.5+(0.92/3)); %hollow TRIANGLE distance of centroid from x axis
I5=((0.92^3)/36); %hollow TRIANGLE moment of inertia wrt centroid
X5=(dy5^2); 
S5=(A5*(X5))+I5; %hollow TRIANGLE moment of inertia wrt x axis

S=(2*S1)+(2*S2)+(S3)-S4-S5;%final moment of inertia
disp("The moment of inertia with respect of x axis is ")
disp(S)
m1=1:b;
m2=1:b
a=1:b;
for i=1:b
    A1=(1.3*(i-0.6))/4; %right angled triangle area
    I1=((i-0.6)/2)*(1.3^3)/36; %right angled triangle 
    dy1=(1.3/3)+0.5;%right angled triangle moment of inertia wrt centroid
    X1=(dy1^2);
    S1=(A1*(X1))+I1;%right angled triangle moment of inertia wrt x axis
    A2=((i-0.6)*0.5/2); % 2 small rectangles on the base area
    I2=((i-0.6)/2*(0.5^3))/12; % 2 small rectangles on the base moment of inertia wrt centroid
    dy2=0.25;% 2 small rectangles on the base distance of centroid from x axis  
    X2=(dy2^2);
    S2=(A2*(X2))+I2; % 2 small rectangles on the base moment of inertia wrt x axis
    m1(1,i)=(2*S1)+(2*S2)+(S3)-S4-S5;
end
plot(a,m1)
title("Variation of moment of inertia wrt base ")
xlabel("base length ")
ylabel("moment of inertia with respect x axis")
%we only need to change the values for right angled triangle and rectangles
%as they are depenedent on b
