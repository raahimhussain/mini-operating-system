#!/bin/bash
var
var1
echo "main menu"
echo "1.file management"
echo "2.process maangement"
echo "3.user management"
read input
case $input in
	1) echo "welcome to file management"
		echo "what you want to do?"
		echo "1.creat file or folder"
		echo "2.change rights of files"
		echo "3.search in files"
		read input1
		case $input1 in
			1) echo "create file or folder"
				read file
				case $file in
					1) echo "enter name of file"
						read file1
						echo "file create" | tee $file1
						;;
					2) echo "enter name of folder"
						read folder1
						mkdir $folder1
						;;
				esac
				;;


			       	

				

			

				        
		
				2) echo "rights"
					echo "enter the file to be changed"

					read file3
					
					
						chmod u+x $file3
						echo "file is writable"
					

				;;
		
			3) echo "search"
				echo "enter the hint of file to be search"
				read file5
				ls *$file5*
				;;
		esac
		;;

	2) echo "wellcome to process maangement"
		echo "which process you want to perform"
		echo "1.sort"
		echo "2.multiple matrix(bankers algorithm)"
		echo "3.display the tasks"
		echo "4.open the applications"
		echo "5.sharing data"
		read proc
		case $proc in
			1) echo "sorting"
			bash os1.sh
			
				;;
			2) echo "multiple threads for sorving multiple matrix"
				gcc -o os4 os4.c
				./os4
				;;
			3)echo "running process"
				ps
				echo "you want to kill any job?"
				echo "1.kill"
				echo "2.no"

				read inp
				case $inp in
					1)echo "enter the pid you want to kill from above list"
						read pid
						kill -9 -$pid
						;;
					esac

				;;
			4)echo "open the applications"
				echo "1.mozilla firefox"
				echo "2.leaf pad"
				echo "3.armitage"
				read choice
				case $choice in
					1) firefox
						;;
					2) leafpad
						;;
					3) armitage
						;;
				esac
				;;
			5)echo "sharing of data"
				echo "select first process"
				echo "1.sort"
				echo "2.ls"
				echo "3.more"
				read share
				case $share in
					1)var=sort
						;;
					2)var=ls
						;;
					3)var=more
						;;
					 
						
				esac
				echo "select second process"
				read share1
				case $share1 in
					1)var1=sort
						;;
					2)var1=ls
						;;
					3)var1=more
						;;

					esac

				
				gcc -o lab121 lab121.c
				./lab121 $var $var1
				;;



			






		esac
		;;
	3)echo "wellcome to user management"
		echo "1.create c program"
	       echo "2.display the files"
      
       read user
       case $user in
	       1)echo "give name to your c code"
		       read code
		       vim $code.c
		       
		       echo "1.you want to execute the file?"
		       echo "2.you want to delete the file?"
		       
		       read code2
		       case $code2 in
			       1)gcc -o $code $code.c
				       ./$code
				       ;;
			       2)rm $code.c
				       ;;

		       esac
		       ;;
		       esac
		       ;;
	       2) ls
		       ;;
       esac
     
		     
       




					

