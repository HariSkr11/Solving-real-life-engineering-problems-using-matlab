%QUESTION 1 MATLAB CODE
D=[-6 -4 0];
C=[-6 4 0];
B=[6 4 0];
A=[6 -4 0];
q=12;
E=[0 0 q];
W= input("Enter the weight of the car ");
AE=E-A;
BE=E-B;
CE=E-C;
DE=E-D;
AECAP=AE/norm(AE);
disp("The cartesian angle wrt x axis for AE is ")
disp(acosd(AECAP(1,1)))
BECAP=BE/norm(BE);
disp("The cartesian angle wrt x axis for BE is ")
disp(acosd(BECAP(1,1)))
CECAP=CE/norm(CE);
disp("The cartesian angle wrt x axis for CE is ")
disp(acosd(CECAP(1,1)))
DECAP=DE/norm(DE);
disp("The cartesian angle wrt x axis for DE is ")
disp(acosd(DECAP(1,1)))
R=AECAP+BECAP+CECAP+DECAP;
T=W/norm(R);

disp("The tension in each cable is ")
disp(T)
x=1:W;
T1=1:W;
for i=1:W
    T1(1,i)=W/i;
end
figure;
plot(x,T1)
title("VARIATION OF TENSION IN EACH CABLE VS WEIGHT OF THE CAR IN kN ")
xlabel("Weight in kN")
ylabel("Tension in kN")

%QUESTION 2 MATLAB
T=input("Enter the  tension for each cable ");
disp("THE RESULTANT TENSION IS ");
W=norm(R)*T;
disp(W)
r=1:T;
r2=1:T;
for o = 1:T
    r2(1,o)=norm(R)*o;
end
figure;
plot(r,r2)
title("THE VARIATION OF RESULTANT TENSION WITH TENSION IN EACH CABLE")
ylabel("Weight in kN")
xlabel("resultant in kN")

%QUESTION 3 MATLAB
q=input("Enter the z coordinate of E ");
T=input("Enter the tension in each cable ");

a=1:q;
a1=1:q;

for i=1:q
    D=[-6 -4 0];
    C=[-6 4 0];
    B=[6 4 0];
    A=[6 -4 0];
    E=[0 0 i];
    AE=E-A;
    BE=E-B;
    CE=E-C;
    DE=E-D;
    AECAP=AE/norm(AE);
    BECAP=BE/norm(BE);
    CECAP=CE/norm(CE);
    DECAP=DE/norm(DE);
    R=AECAP+BECAP+CECAP+DECAP;
    a1(1,i)= norm(R)*T;
   
    
end
figure;
plot(a,a1)
title("THE VARIATION OF RESULTANT TENSION WITH E COORDINATE")
xlabel("coordinate")
ylabel("resultant tension in kN")



