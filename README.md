# git-push-script-shell
Shell Script to help people push on remote repository

# Usage
Clone the repo on to your local machine and copy the desired file into your working directory and open the file by double clicking on it OR by opening it using command line.
Note: It always adds all the files in the directory

### Note:
Before executing, make the file executable by using ```chmod +x gitCommit.sh``` in the command line

###### By Double-Clicking:
You will prompted to input the remote URL of the repo where the files are to be pushed.

###### Using Command Line:
You can either enter the remote URL after adding a space after the File Name, like ```gitCommit.sh <remote URL>``` OR you will prompted to enter the remote URL afterwards.


You can also specify the commit message after remote URL, like ```gitCommit.sh <remote URL> "commit Message"```.
If you do not specify any commit message, the deafult is "Files Updated"


# Note
This scripts only work if you have git installed
