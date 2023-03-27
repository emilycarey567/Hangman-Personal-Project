    %Stage9 final hangman visual to be display when game is lost
    %Stage9 will become part of endofgame function
    axis([0 10 0 10])%axis 10*10

    %Plotting the lines of the post
    line1=line([2,2],[9,0]);%line1 
    line1.Color='k';%changing colour to black k is the short name for black
    line1.LineWidth=3;%changing line width to 3 
    line2=line([5,2],[9,9]);
    line2.Color='k';
    line2.LineWidth=3;
    line3=line([5,5],[8,9]);
    line3.Color='k';
    line3.LineWidth=3;
   
    hold on
    %Ploting the head of the hangman via plotting a circle
    %theta range is defined
    theta=0:0.0001:2*pi;
    %radius of the circle is 1
    radiusofCircle=1;
    %define the center points of the circle
    xCenterPoint=5;
    yCenterPoint=7;
    %Define parametric equation
    xCoordinate=xCenterPoint+radiusofCircle*cos(theta);
    yCoodinate=yCenterPoint+radiusofCircle*sin(theta);
    %plot coordinates and the colour is changed to black and the width is
    %now 3
    plot(xCoordinate,yCoodinate,'color','k','LineWidth',3);
   
    hold on
    %Plotting the line of the body
    line4=line([5,5],[3,6]);
    line4.Color='k';
    line4.LineWidth=3;
    %Plotting the right arm
    hold on
    line5=line([5,6],[5,6]);
    line5.Color='k';
    line5.LineWidth=3;
    %Plotting the left arm
    hold on
    line6=line([5,4],[5,6]);
    line6.Color='k';
    line6.LineWidth=3;
    %Plotting the right leg
    hold on
    line7=line([5,6],[3,2]);
    line7.Color='k';
    line7.LineWidth=3;
    %Plotting the left leg
    hold on
    line8=line([5,4],[3,2]);
    line8.Color='k';
    line8.LineWidth=3;
    %Left eye
    line9=line([4.3,4.9],[6.75,7.4]);
    line9.Color='r';
    line9.LineWidth=1;
    line10=line([4.3,4.9],[7.4,6.75]);
    line10.Color='r';
    line10.LineWidth=1;

    %right eye
    line11=line([5.1,5.7],[6.75,7.4]);
    line11.Color='r';%changing colour r is the short name for red
    line11.LineWidth=1;%changing width to 1
    line12=line([5.7,5.1],[6.75,7.4]);
    line12.Color='r';%changing colour r is the short name for red
    line12.LineWidth=1;%changing width to 1
