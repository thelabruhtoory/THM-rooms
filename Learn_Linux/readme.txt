					[Task 1] Intro

#1 	

Read the above.

					[Task 2] Methodology

#1 	

Read the above.

					[Task 3] [Section 1: SSH] - Intro 

#1 	

Read the above

					[Task 4] [Section 1: SSH] - Putty and ssh 

#1 	

SSH into the server
					
					[Task 5] [Section 2: Running Commands] - Basic Command Execution 

#1 	

Read the above
					
					
					[Task 6] [Section 2: Running Commands] - Manual Pages and Flags 

#1 	

How would you output hello without a newline
'''
echo -n hello
'''					
					
					[Task 7] [Section 3: Basic File Operations] - ls 

#1 	

What flag outputs all entries
'''
-a
'''

#2 	

What flag outputs things in a "long list" format 
'''
-l
'''					
					
					[Task 8] [Section 3: Basic File Operations] - cat 

#1 	

What flag numbers all output lines?  
'''
-n
'''										
					
					[Task 9] [Section 3: Basic File Operations] - touch 

#1 	

Read the above!					
					
					[Task 10] [Section 3: Basic File Operations] - Running A Binary

#1 	

How would you run a binary called hello using the directory shortcut . ?
'''
./hello
'''		

#2 	

How would you run a binary called hello in your home directory using the shortcut ~ ?
'''
~/hello
'''			

#3 	

How would you run a binary called hello in the previous directory using the shortcut .. ?
'''
../hello
'''
					
					[Task 11] Binary - Shiba1 

#1 	

What's the password for shiba2   
'''
pinguftw

'''	
					
					[Task 12] su 

#1 	

How do you specify which shell is used when you login? 
'''
-s
'''				
					
					[Task 13] [Section 4 - Linux Operators]: Intro 

#1 	

Read the above					
					
					[Task 14] [Section 4: Linux Operators]: ">" 

#1 	

How would you output twenty to a file called test
'''
echo twenty > test
'''					
					
					[Task 15] [Section 4: Linux Operators]: ">>" 

#1 	

Read the above
	
					
					[Task 16] [Section 4: Linux Operators]: "&&" 

#1 	

Read the above					
					
					[Task 17] [Section 4: Linux Operators]: "&" 

#1 	

Read the above					
					
					[Task 18] [Section 4: Linux Operators]: "$" 

#1 	

How would you set nootnoot equal to 1111
'''
export nootnoot=1111
'''					

#2 	

What is the value of the home environment variable
'''
/home/
'''
					
					[Task 19] [Section 4: Linux Operators]: "|" 

#1 	

Read the above!					
					
					[Task 20] [Section 4: Linux Operators] - ";" 

#1 	

Read the above.					
					
					[Task 21] Binary - shiba2 


#1 	

What is shiba3's password
'''
happynootnoises
'''					
					
					[Task 22] [Section 5 - Advanced File Operations]: Intro 

#1 	

Read the above.					
					
					[Task 23] [Section 5 - Advanced File Operators]: A bit of background.

#1 	

Read the above!					
					
					[Task 24] [Section 5: Advanced File Operations]: chmod 

#1 	

What permissions mean the user can read the file, the group can read and write to the file, and no one else can read, write or execute the file?
'''
460
'''

#2 	

What permissions mean the user can read, write, and execute the file, the group can read, write, and execute the file, and everyone else can read, write, and execute the file.
'''
777
'''
					
					[Task 25] [Section 5: Advanced File Operations] - chown 
					
	
		
					[Task 25] [Section 5: Advanced File Operations] - chown
					
#1 	

How would you change the owner of file to paradox
'''
'''

#2 	

What about the owner and the group of file to paradox 
'''
chown paradox:paradox file 
'''

#3

What flag allows you to operate on every file in the directory at once?  
'''
-R
'''		 
					
					[Task 26] [Section 5: Advanced File Operations] - rm 
					
#1 	

What flag deletes every file in a directory
'''
-r
'''

#2 	

How do you suppress all warning prompts
'''
-f
'''
					
					[Task 27] [Section 5: Advanced File Operations] - mv 

#1 	

How would you move file to /tmp
'''
mv file /tmp
'''					
					
					[Task 28] [Section 5: Advanced File Operations] - cp 

#1
'''
no answer
'''					
					
					[Task 29] [Section 5: Advanced file Operations] - cd && mkdir

#1 	Using relative paths, how would you cd to your home directory.
'''
cd ~
'''					
	
#2 	

Using absolute paths how would you make a directory called test in /tmp
'''
mkdir /tmp/test
'''				
					[Task 30] [Section 5: Advanced File Operations] ln

#1 	

How would I link /home/test/testfile to /tmp/test
'''
ln home/test/testfile /tmp/test
'''					
					
					[Task 31] [Section 5 - Advanced File Operations]: find

#1 	

How do you find files that have specific permissions?
'''
-perm
'''					
	
#2 	

How would you find all the files in /home
'''
find /home 
'''

#3 	

How would you find all the files owned by paradox on the whole system
'''
find / -user paradox
'''

					[Task 32] [Section 5: Advanced File Operations] - grep 

#1 	

What flag lists line numbers for every string found?
'''
-n
'''					

#2 	

How would I search for the string boop in the file aaaa in the directory /tmp
'''
grep boop /tmp/aaaa
'''					
					[Task 33] Binary - Shiba3 

#1 	

What is shiba4's password
'''
(/opt/secret/shiba4)
test1234
'''					
					
					[Task 34] [Section 6: Miscellaneous]: Intro 

#1 	

Read the above					
					
					[Task 35] [Section 6: Miscellaneous]: sudo 

#1 	

How do you specify which user you want to run a command as.
'''
-u
'''					

#2 	

How would I run whoami as user jen?
'''
sudo -u jen whoami
'''					

#3 	

How do you list your current sudo privileges(what commands you can run, who you can run them as etc.) 
'''
-l
'''
				
					[Task 36] [Section 6: Miscellaneous]: Adding users and groups 

#1 	

How would I add the user test to the group test
'''
sudo usermod -a -G test test
'''					
					
					[Task 37] [Section 6: Miscellaneous]: nano 
					
#1 	

Read the above
					
					[Task 38] [Section 6: Miscellaneous]: Basic shell scripting 
					
#1 	

Read the above
					
					[Task 39] [Section 6: Miscellaneous]: Important Files and Directories 
					
#1 	

Read the above
					
					[Task 40] [Section 6 - Miscellaneous]: Installing packages(apt) 
					
#1 	

Read the above
					
					[Task 41] [Section 6: Miscellaneous]: Processes 
					
#1 	

Read the above!
					
					[Task 42] Fin ~ 
					
#1 	:)
					
					[Task 43] Bonus Challenge - The True Ending 

#1 	Finish this room off! What is the root.txt flag
'''
(nootnoot:notsofast)

ad91979868d06e19d8e8a9c28be56e0c
'''