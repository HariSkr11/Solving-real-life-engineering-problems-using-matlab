%Code for bridge truss 1
disp("Enter what would you like to do ")
disp("1.variation of truss forces with load")
disp("2.variation of truss forces with load and angle ")
disp("3.find out the max load by giving the max truss force bearable ")
n=input("Enter the choice ");
switch n
    case 1
        P=input("Enter the load of the vechile ");
        p=P/2;
        x=floor(p);
        AN=0:x;
        BM=0:x;
        MC=0:x;
        BC=0:x;
        DE=0:x;
        y=0:x;

        for i=0:x
            AN(1,i+1)=i*cotd(57.5);
            BM(1,i+1)=i*cscd(57.5);
            MC(1,i+1)=i;
            BC(1,i+1)=-2*i*cotd(57.5);
            DE(1,i+1)=-3*i*cotd(57.5);
        end

        figure
        plot(y,AN);
        title("Variation of force in AN with load");
        xlabel("load in kN");
        ylabel("Truss force in kN");


        figure
        plot(y,BM);  
        title("Variation of force in BM with load");
        xlabel("load in kN");
        ylabel("Truss force in kN");

        figure
        plot(y,MC);
        title("Variation of force in MC with load");
        xlabel("load in kN");
        ylabel("Truss force in kN");


        figure
        plot(y,BC);
        title("Variation of force in BC with load");
        xlabel("load in kN");
        ylabel("Truss force in kN");


       figure
       plot(y,DE);
       title("Variation of force in DE with load");
       xlabel("load in kN");
       ylabel("Truss force in kN");

    case 2
        %Matlab code for part 2
        t = input("Enter the angle BAN ");
        P=input("Enter the load of the vechile ");
        p=P/2;
        AN=1:t;
        BM=1:t;
        BC=1:t;
        DE=1:t;
        y=1:t;

        for i=1:t
           AN(1,i)=p*cotd(i);
           BM(1,i)=p*cscd(i);
           BC(1,i)=-2*p*cotd(i);
           DE(1,i)=-3*p*cotd(i);
        end

        figure
        plot(y,AN);
        title("Variation of force in AN with angle ");
        xlabel("angle in degrees ");
        ylabel("Truss force in kN");


        figure
        plot(y,BM);
        title("Variation of force in BM with angle ");
        xlabel("angle in degrees ");
        ylabel("Truss force in kN");

        figure
        plot(y,BC);
        title("Variation of force in BC with angle ");
        xlabel("angle in degrees ");
        ylabel("Truss force in kN");

        figure
        plot(y,DE);
        title("Variation of force in DE with angle ");
        xlabel("angle in degrees ");
        ylabel("Truss force in kN");
    case 3
        m=input("Enter the max truss force each of the truss can bear ");
        p=m/(3*cotd(57.5));
        disp("The maximum load the bridge can bear in kN is ")
        disp(2*p)
end








