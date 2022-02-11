%MATLAB PART FOR THE 1ST QUESTION
%Getting the x coordinate of B
in = 'input the value of x coordinate of B ';
x = input(in);
%applying the value of x in the integrated formulaes obtained
X1 = ((((4*(x^2))+1)^1.5)/12)-0.0833;
X2 = (log((4*(x^2) +1)^0.5+(2*x))+(2*x*((4*(x^2) +1)^0.5)))/4;
Xcm=X1/X2;
Y1=(((4*(x^2) +1)^0.5).*(16*(x^3) + 2*x)-log((4*(x^2) +1)^0.5 +2*x))/64;
Y2 = (log((4*(x^2) +1)^0.5+2*x)+(2*x*((4*(x^2) +1)^0.5)))/4;
Ycm= Y1/Y2;
disp("The value of Xcom is ")
disp(Xcm)
disp("The value of Ycom is ")
disp(Ycm)

%creating array for storing values
e=1:x;
xc=1:x;
yc=1:x;
for i=1:x
    X1 = ((((4*(i^2))+1)^1.5)/12)-0.0833;
    X2 = (log((4*(i^2) +1)^0.5+(2*i))+(2*i*((4*(i^2) +1)^0.5)))/4;
    xc(1,i)=X1/X2;
    Y1=(((4*(i^2) +1)^0.5).*(16*(i^3) + 2*i)-log((4*(i^2) +1)^0.5 +2*i))/64;
    Y2 = (log((4*(i^2) +1)^0.5+2*i)+(2*x*((4*(i^2) +1)^0.5)))/4;
    yc(1,i)=Y1/Y2;
end

%ploting variation of different values
figure;
plot(e,xc)
title("The variation of XCOM with x cordinate of b")
xlabel("X coordinate of B ")
ylabel("XCOM coordinate ")

figure;
plot(e,yc)
title("The variation of YCOM with x cordinate of b")
xlabel("X coordinate of B ")
ylabel("YCOM coordinate ")



%MATLAB CODE FOR 2ND PART
in = 'input the value of x coordinate of B ';
x = input(in);
X1 = ((((4*(x^2))+1)^1.5)/12)-0.0833;
X2 = (log((4*(x^2) +1)^0.5+(2*x))+(2*x*((4*(x^2) +1)^0.5)))/4;
Xcm=X1/X2;
Y1=(((4*(x^2) +1)^0.5).*(16*(x^3) + 2*x)-log((4*(x^2) +1)^0.5 +2*x))/64;
Y2 = (log((4*(x^2) +1)^0.5+2*x)+(2*x*((4*(x^2) +1)^0.5)))/4;
Ycm= Y1/Y2;
L=(log((4*(x^2) +1)^0.5+(2*x))+(2*x*((4*(x^2) +1)^0.5)))/4;
%Getting the weight per unit length from the user
W=input("Enter the weight per unit length ");
%formulating the ay and by values
%also creating arrays for storing values
ay=1:W;
by=1:W;
w=1:W;
t=L*W;
AY=t*(x-Xcm);
BY=AY-t;
disp("AY is ")
disp(AY)
disp("BY is ")
disp(BY)
for i=1:W
    t=L*i;
    ay(1,i)=t*(x-Xcm);
    by(1,i)=(ay(1,i))-t;
end
%plotting variations
figure;
plot(w,ay)
title("The variation of AY with Weight per unit length")
xlabel("Weight per unit length ")
ylabel("AY in N ")

figure;
plot(w,by)
title("The variation of BY with Weight per unit length")
xlabel("Weight per unit length ")
ylabel("BY in N ")

