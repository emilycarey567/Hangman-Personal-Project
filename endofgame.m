%end  of game function is used when user has won or lost
function endofgame(lengthOfSelectedRandomWord, correctLetters, selectedRandomWord)
if length(selectedRandomWord)==correctLetters %if the user has won
    fprintf("YAY!, you have guessed the word!!!\n")%print to user
    fprintf("The word is %s\n",selectedRandomWord)
    %Stage11 will be displayed in the endofgame function if user wins
    axis([0 10 0 10])%axis

    %Making up letter W
    line1=line([1,2],[8,4]);
    line2=line([2,3],[4,5]);
    line3=line([3,4],[5,4]);
    line4=line([4,5],[4,8]);

    %Making up letter I
    line5=line([5.5,6.5],[8,8]);
    line6=line([6,6],[8,4]);
    line7=line([5.5,6.4],[4,4]);

    %Making up letter N
    line8=line([7,7.5],[4,8]);
    line9=line([7.5,8],[8,4]);
    line10=line([8,8.5],[4,8]);
    %displays the word WIN

else
    fprintf("Unlucky, you've lost the game\n")
    fprintf("The word is %s\n",selectedRandomWord)

    %Stage9 final hangman visual to be display when game is lost
    axis([0 10 0 10])
    %Plotting the lines of the post
              line1=line([2,2],[9,0]);
    line1.Color='k';
    
    line2=line([5,2],[9,9]);
    line2.Color='k';
    
    line3=line([5,5],[8,9]);
    line3.Color='k';
   
    hold on
    %Ploting the head of the hangman via plotting a circle
    theta=0:0.0001:2*pi;
    radiusofCircle=1;
    xCenterPoint=5;
    yCenterPoint=7;
    xCoordinate=xCenterPoint+radiusofCircle*cos(theta);
    yCoodinate=yCenterPoint+radiusofCircle*sin(theta);
    plot(xCoordinate,yCoodinate,'color','k');
   
    hold on
    %Plotting the line of the body
    line4=line([5,5],[3,6]);
    line4.Color='k';
    %Plotting the right arm
    hold on
    line5=line([5,6],[5,6]);
    line5.Color='k';
    %Plotting the left arm
    hold on
    line6=line([5,4],[5,6]);
    line6.Color='k';
    %Plotting the right leg
    hold on
    line7=line([5,6],[3,2]);
    line7.Color='k';
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
    line11.Color='r';
    line11.LineWidth=1;
    line12=line([5.7,5.1],[6.75,7.4]);
    line12.Color='r';
    line12.LineWidth=1;

end
end
