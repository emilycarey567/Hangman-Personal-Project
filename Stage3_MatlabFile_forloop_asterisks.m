%Stage 1 reading in a dictionary
wordsInFile=readDictionary("dictionary.txt");%argument dictionary.txt (File dictionary.txt was sourced from class notes-Week 6 Tutorial)


%Stage 2- A random word is chosen from the dictionary.txt file and assigned the
%variable selectedRandomWord-format sourced from (https://au.mathworks.com/matlabcentral/answers/459758-how-do-you-ask-matlab-for-a-random-word-from-dictionary)

randomWord=randperm(length(wordsInFile),1);%selects a random integer corresponding to a word from the list of words in the dictionary.txt file
selectedRandomWord = [wordsInFile{randomWord}];%selectedRandomWord is the variable assigned to the word at the corresponding random integer


%Stage 3 - A for-loop that displays the required number of asterisks for the
%selected random word
unknownLetters=[];%initialise vector
lengthOfSelectedRandomWord=length(selectedRandomWord);%assign variable to the length of the selected word
for i=1:lengthOfSelectedRandomWord %for every value i from 1 through each character of the selected random word in steps of 1
    unknownLetters=[unknownLetters '*']; %each time through the loop an asterisk will be added for each character
end %end of for-loop
disp(selectedRandomWord)%testing purposes
disp(unknownLetters) %display asterisks for each character of the selected random word

