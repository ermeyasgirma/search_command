# Custom Search Command

This project adds a terminal command aptly named "search", which allows you to enter a question, after which it launches the top stackoverflow search result, or the top result in a new tab.

The idea is to save having to navigate to chrome and look through the results, lazy, I know.

Assuming that you on a linux machine and have python pre installed you will need to do the following.

Packages to install:
  $ pip install google && beautifulsoup4
  
We will be adding our search command into a file called .custom_commands which you can use to add further commands yourself in the future.

 You can create your own file locally by going to your home directory,  $ cd ~, will take you there and doing the following:
  
        touch .custom_commands
        
  Then you can open that file and edit it 
  
        gedit .custom_commands
        
  Now simply copy and paste the contants into the newly opened text editor.
  
 Replace the variable LOC in the bash file .custom_commands with the path to search.py from your home directory.
 
Set up the right permissions for our script:
  chmod u+x
  
  This grants execute permissions but only to the owner of that file. Allows you to run it directly from your terminal.
  However this is not strictly necessary as we will be adding this to your ~/.bashrc file.
  
To load our command into the current terminal session we do 

        source ~/.custom_commands.sh
        
However to save us having to do this everytime we open a new terminal, we can add it to ~/.bashrc, which is executed each time you open a new terminal sessions

  

