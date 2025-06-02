%Get the letter from the user and check it is vowel or consanant

char=input("Enter your letter:",'s')
disp("Your letter is: " +char)

if(char < 0)
    disp('Invalid')
elseif(char == "a" || char == "e" || char == "i" || char == "o" || char == "u")
    disp('Your letter is Vowel letter')
else
    disp('Your letter is not a vowel letter')
end