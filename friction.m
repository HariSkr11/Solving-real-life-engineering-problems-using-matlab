%Friction in banking of roads
disp("Enter the action required to do ")
h=input("1.FINDING FRICTIONAL FORCE 2.FINDING VMAX 3.FINDING ANGLE OF BANKING")
switch h
    case 1
        m=input("Enter the mass of the car ");
        t=input("Enter the the inclination angle in degrees ");
        v=input("Enter the velocity of the car ");
        r=input("Enter the radius of curve ");
        a=[sind(t) cosd(t);cosd(t) -sind(t)];
        inva=inv(a);
        b=[(m*(v.^2)/r);(m*9.81)];
        x=inva*b;
        x1=1:m;
        disp("The frictional force acting is ")
        disp(x(2,1))
        for m1=1:m
            b=[(m1*(v.^2)/r);(m1*9.81)];
            x=inva*b;
            x2=x(2,1);
            x1(1,m1)=x2;
        end
        m1=1:m;
       plot(m1,x1)
       title("Variation of friction with mass of the car");
       xlabel("Mass in kg");
       ylabel("Friction in N");
    case 2
        %Velocity max when theta and coefficient of friction is given
        t=input("Enter the the inclination angle in degrees ");
        r=input("Enter the radius of curve ");
        m=input("Enter the mass of the car ");
        u=input("Enter the friction coefficient  of the road ");
        num=r*9.81*(tand(t)+u);
        deno=(1-(u*tand(t)));
        fr=num/deno;
        v=sqrt(fr);
        disp("The max velocity with which car should be moved is ")
        disp(v)
    case 3
        %angle of banking when max velocity and radius is given and graph
        u=input("Enter the friction coefficient  of the road ");
        r=input("Enter the radius of curve ");
        v=input("Enter the max velocity of the car ");
        num=1-u;
        deno=(v*v*u/(r*9.81))+1;
        t=atand((num/deno));
        disp("The inclination angle is ")
        disp(t)
        v1=1:v;
        t1=1:v;
        for v2=1:v
           num=1-u;
           deno=(v2*v2*u/(r*9.8))+1;
           t1(1,v2)=atand((num/deno));
        end
        figure;
        plot(v1,t1)
        title("Variation of banking angle with max veloity of the car");
        xlabel("velocity in m/s");
        ylabel("theta in degrees");
end










