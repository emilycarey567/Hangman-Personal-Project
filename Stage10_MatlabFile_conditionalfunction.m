
%Stage 9- implementing a visual in the endOfGame
%function
%Stage10-Introducing game and conditional statement as seen below
clc;
clear;
%Hangman Game
%Author Emily Carey

%Introduce Game
disp("WELCOME TO HANGMAN");
%Display the rules and aim of the game
disp("Try and guess all of the characters to a random word you have 6 guesses to get the correct word");
disp("You can only guess a singular letter");
disp("Good luck!");

%Stage 1 reading in a dictionary
wordsInFile=readDictionary("dictionary.txt");%argument dictionary.txt (File dictionary.txt was sourced from class notes-Week 6 Tutorial)

%Stage 2- A random word is chosen from the dictionary.txt file and assigned the
%variable selectedRandomWord-format sourced from (https://au.mathworks.com/matlabcentral/answers/459758-how-do-you-ask-matlab-for-a-random-word-from-dictionary)
randomWord=randperm(length(wordsInFile),1);%selects a random integer corresponding to a word from the list of words in the dictionary.txt file sourced from:(https://au.mathworks.com/matlabcentral/answers/459758-how-do-you-ask-matlab-for-a-random-word-from-dictionary)
selectedRandomWord = [wordsInFile{randomWord}];%selectedRandomWord is the variable assigned to the word at the corresponding random integer

%Stage 3 - A for-loop that displays the required number of asterisks for the
%selected random word
unknownLetters=[];%initialise vector
lengthOfSelectedRandomWord=length(selectedRandomWord);%assign variable to the length of the selected word
for i=1:lengthOfSelectedRandomWord %for every value i from 1 through each character of the selected random word in steps of 1
    unknownLetters=[unknownLetters '*']; %each time through the loop an astrik will be added for each character
end %end of for-loop
disp(unknownLetters) %display asterisks for each character of the selected random word


stringFindInput=[];%initialise vector 
correctLetters=0; %initialise correctLetters to be 0
wrongLetters=0;%wrong letters initialised to 0
numberOfGuesses=6;%number of guesses user has is 6
possibleUserInput='a':'z';%possible user input (correct)

%Stage 6 while loop to determines how many guesses the user has left
while 1
%Stage4- Getting input from user and determining how many times the users input is in
%the selectedRandomWord 
userInput = input("Please guess a letter:",'s');%ask user for user input 

%Stage 10 conditional statement if the user does not enter a letter
if userInput~=possibleUserInput %if statement- if the user does not enter a letter
    userInput=input('Invalid try again:','s');%user will be prompted to enter another input
end%end

stringFindInput=strfind(selectedRandomWord,userInput);%strfind finds strings within other strings. stringFindInput will determine where the userinput occurs in the selectedRandomWord 
inputLengthCorrect=length(stringFindInput);%inputLengthCorrect is assigned the length of stringFindInput
correctLetters=correctLetters+inputLengthCorrect; %cumulative correct letters 

%Stage5- Conditional execution of if statement,
%if a correct letter was guessed it will print a statement similarly to if
%the user didnt input a correct letter it will also print a message.
%if statement, checks if user input correctly guessed a letter/letters 
if inputLengthCorrect>=1 %if the letter the user inputted occurs once or more in the selectedRandomWord 
    for i=1:inputLengthCorrect %for-loop, loops through the total amount correct
      if lengthOfSelectedRandomWord==correctLetters%if user guesses all correct letters
          clc;%clear command window
          %Stage 7-endOfGame function added to display if the user has won or lost
         endofgame(lengthOfSelectedRandomWord, correctLetters, selectedRandomWord)
        return
      else
        clc; %clear command window 
      fprintf("Well done, that letter was guessed correctly\n")%print to user they guessed a correct letter
    end%end of for-loop
unknownLetters(stringFindInput(i))=userInput;%astrik is replaced with correctly guessed letter (line of code sourced from 'Hangman In Matlab'- Youtube 2020)
fprintf("%s\n",unknownLetters)%print the letters of the word that have been guessed correctly
end
else  
    clc;%clear command window
    wrongLetters=wrongLetters+1; %cumulative wrong guesses
    if wrongLetters==6%if statement if the user has used up all of their guesses
    %Stage 7-endOfGame function added to display if the user has won or lost
    endofgame(lengthOfSelectedRandomWord, correctLetters, selectedRandomWord)
    break
else
    fprintf("sorry that letter was wrong\n") %print message the user guessed a wrong letter
    numberOfGuesses=numberOfGuesses-1; %if user guesses letter wrong the number of guesses left will go down by one 
    fprintf ("You have %d remaining tries left\n",numberOfGuesses)%print to user how many guesses they have left
    fprintf ("%s\n",unknownLetters)%print asterisks
    %Stage 8-function of hangman drawing
    pictureofhangman(lengthOfSelectedRandomWord,wrongLetters,selectedRandomWord);
end  
end
end