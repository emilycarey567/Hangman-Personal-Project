%Stage 1-Testing of function readDictionary 
%Function is called storing returned values into the variable wordsInFile
%Test 1 
wordsInDictionary=readDictionary("dictionary.txt");%argument dictionary.txt (File was sourced from class notes-Week 6 Tutorial)
disp(wordsInDictionary) %display the values 

% %Test 2
wordsInWord=readDictionary("word.txt");%argument word.txt
disp(wordsInWord)%display the values 

% %Test 3
wordsInNouns=readDictionary("nouns.txt");%argument nouns.txt
disp(wordsInNouns)%display the values 

