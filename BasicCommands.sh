#to find the name of the operating system
uname

#to find the working directory the user is in
pwd #print working directory

#to change directory or to move to a different directory
cd /file/file/...

#to move back in a directory
cd ..

#move to root folder 
cd /

# list all elements

ls

#list all the content of a folder in a long list format

ls -l

#show hidden files as well

ls -a

#To view the content of a file
cat file.extension

#pip command | is used to feed output of one file as input of another file

cat error.txt | grep database > database_error.txt

# grep is used to filter the content of a file on a basis of a pattern

grep <keyword>

# > is used to save the content of a file in another file

#for example
cat error.txt | grep database > database_error.txt # in this command the output from error.txt is filtered out on the basis of database text and all those data is stored in a new file called database_error.txt

#cp is used for copying a file or folder to another file or folder but we just have to mention the complete folder or file path

cp error.txt /root/dberrors/  #creates a copy in the destination directory

#mv like cp command mv is used to move the file or folder from one directory to another

mv error.txt /root/dberrors/ #cut and paste the entire file in the new directory

#wc command is for counting the content in a file. wc stands for word count

#we have 5 flags or parameters for wc command

#-l counts the length of lines
#-w count the length of words
#-c count the length of bytes
#-m count the length of characters
#-L count the length of Longest lines

wc -w errors.txt  # count the length of words from errors.txt

#to delete any file in the linux file system

rm <filename>

#find command is used to find any file from any location in the entire linux file system

find <location> -name "file name" # For location . is used for current directory
                                  # For location / is for root directory(basically searching in the entire linux system

#suppose I want to search for a file name that starts with database and ends with log

find / -name "database*.log" 

#diff to find the difference in the content of two files.
#suppose there are two files databaseErrors.log and databaseErrors.log.backup. Suppose somebody change any content in one of the two files how to find out what change was made and in which file

diff <file1> <file2>

# How to check for a service is running or not. We have a command called curl to check the url of an application on a port number
curl -I https://google.com # -I is a flag to just get the header or meta data of the url

#vim is used for opening an editor and edit a file
#vim has three modes insert mode (to edit), normal mode and command mode(to save, search and quit)

vim <filename>

#to edit the file we need to go to insert mode and to do that we need to type i

#to exit we need to first go to normal mode and to do that press esc key and then type the commands for exit

#following are the command mode commands to exit the vim

#to quit :q

#to quit without saving :q!

#to save and continue writing the file :w

#to save and quit :wq

#to save only if changes were made :x


#chmod command is used to change the permission of the file

chmod 777 <filename> #full permission to read, write and execute
chmod 755 <filename> #only owner read, write and execute whereas others can read and execute
chmod 644 <filename> #onwer can read and write and others can just read
chmod 600 <filename> #only owners can read and write

chown # add user groups


#echo is for printing and debugging

echo "hello world"  #it prints hello world


# process

ps #It is used to check processes in Linux

#check python related process in the system
ps aux | grep python

#check web related process in the system
ps aux | grep nginx

# kill processes

kill <process id>

# force kill processes

kill -9 <process id>

# check memory and cpu usage in linux
top

#check free space in linux
free -h

#check disk space
df -h

#update the linux system
apt-get update

#apt-get is a package manager use to install packages


#network tools


#install net-tools for using the below tool;s
apt-get install net-tools
ifconfig # for finding ip address of the linux system
netstat #does same thing what are the services listening, open ports etc

#install iputils-ping
apt-get install iputils-ping
ping <domain> or ipaddress #check response from a website

#install dnsutils
apt-get install dnsutils
nslookup #find ipaddress of the domain name

#nmap

apt-get install nmap
nmap <ipaddress> #basic scan

nmap -p <port> <ipadress> # to check if the ip address is accessible at the mentioned port

nmap -sV <ipdrress> or <doman name> # check what services are running on the ip address
