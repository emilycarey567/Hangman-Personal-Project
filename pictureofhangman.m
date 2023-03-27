%Stage 8 picture of hangman function
%after each wrong guess a new body part will be added on

function pictureofhangman(lengthOfSelectedRandomWord,wrongLetters,selectedRandomWord)

if wrongLetters==1 %if the user has only incorrectly guessed 1 letter
    axis([0 10 0 10])%axis to plot 10*10
   
    %Plotting the lines of the post
    line1=line([2,2],[9,0]);
    line1.Color='k';%changing the colour 'k' is the short name for black(source-Matlab help)
    line1.LineWidth=3;%changing the line width to three (source-Matlab help)
    %this is repeated down below for line2 and line3
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
end
if wrongLetters==2 %if user has guessed two incorrect letters
    axis([0 10 0 10])
    %Plotting the lines of the post
     line1=line([2,2],[9,0]);
    line1.Color='k';
    line1.LineWidth=3;
    
    line2=line([5,2],[9,9]);
    line2.Color='k';
    line2.LineWidth=3;
    
    line3=line([5,5],[8,9]);
    line3.Color='k';
    line3.LineWidth=3;
   
    hold on
    %Ploting the head of the hangman via plotting a circle
    theta=0:0.0001:2*pi;
    radiusofCircle=1;
    xCenterPoint=5;
    yCenterPoint=7;
    xCoordinate=xCenterPoint+radiusofCircle*cos(theta);
    yCoodinate=yCenterPoint+radiusofCircle*sin(theta);
    plot(xCoordinate,yCoodinate,'color','k','LineWidth',3);
   
    hold on
    %Plotting the line of the body
    line4=line([5,5],[3,6]);
    line4.Color='k';
    line4.LineWidth=3;
end
if wrongLetters==3
    axis([0 10 0 10])
    %Plotting the lines of the post
    line1=line([2,2],[9,0]);
    line1.Color='k';
    line1.LineWidth=3;
    
    line2=line([5,2],[9,9]);
    line2.Color='k';
    line2.LineWidth=3;
    
    line3=line([5,5],[8,9]);
    line3.Color='k';
    line3.LineWidth=3;
   
    hold on
    %Ploting the head of the hangman via plotting a circle
    theta=0:0.0001:2*pi;
    radiusofCircle=1;
    xCenterPoint=5;
    yCenterPoint=7;
    xCoordinate=xCenterPoint+radiusofCircle*cos(theta);
    yCoodinate=yCenterPoint+radiusofCircle*sin(theta);
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
end
if wrongLetters==4
    axis([0 10 0 10])
    %Plotting the lines of the post
          line1=line([2,2],[9,0]);
    line1.Color='k';
    line1.LineWidth=3;
    
    line2=line([5,2],[9,9]);
    line2.Color='k';
    line2.LineWidth=3;
    
    line3=line([5,5],[8,9]);
    line3.Color='k';
    line3.LineWidth=3;
   
    hold on
    %Ploting the head of the hangman via plotting a circle
    theta=0:0.0001:2*pi;
    radiusofCircle=1;
    xCenterPoint=5;
    yCenterPoint=7;
    xCoordinate=xCenterPoint+radiusofCircle*cos(theta);
    yCoodinate=yCenterPoint+radiusofCircle*sin(theta);
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
end
if wrongLetters==5
    axis([0 10 0 10])
    %Plotting the lines of the post
      line1=line([2,2],[9,0]);
    line1.Color='k';
    line1.LineWidth=3;
    
    line2=line([5,2],[9,9]);
    line2.Color='k';
    line2.LineWidth=3;
    
    line3=line([5,5],[8,9]);
    line3.Color='k';
    line3.LineWidth=3;
   
    hold on
    %Ploting the head of the hangman via plotting a circle
    theta=0:0.0001:2*pi;
    radiusofCircle=1;
    xCenterPoint=5;
    yCenterPoint=7;
    xCoordinate=xCenterPoint+radiusofCircle*cos(theta);
    yCoodinate=yCenterPoint+radiusofCircle*sin(theta);
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
end

