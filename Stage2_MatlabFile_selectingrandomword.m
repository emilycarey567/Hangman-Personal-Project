
%Stage 1 reading in a dictionary
wordsInFile=readDictionary("dictionary.txt");%argument dictionary.txt (File dictionary.txt was sourced from class notes-Week 6 Tutorial)


%Stage 2- A random word is chosen from the dictionary.txt file and assigned the
%variable selectedRandomWord-format sourced from (https://au.mathworks.com/matlabcentral/answers/459758-how-do-you-ask-matlab-for-a-random-word-from-dictionary)
randomWord=randperm(length(wordsInFile),1);%selects a random integer corresponding to a word from the list of words in the dictionary.txt file
selectedRandomWord = [wordsInFile{randomWord}];%selectedRandomWord is the variable assigned to the word at the corresponding random integer

disp(selectedRandomWord)%for testing purposes