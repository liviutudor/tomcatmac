#!/bin/bash

TOMCAT_PORT=8080

case $1 in 
	start) 
		echo -n "Redirecting port 80 to 8080..." 
		sudo ipfw add 100 fwd 127.0.0.1,$TOMCAT_PORT tcp from any to any 80 in 
		echo "done." 
		;;

	stop) 
		echo -n "Stopping redirection from port 80 to 8080..." 
		sudo ipfw del 100 
		echo "done." 
		;;   

	*) 
		sudo ipfw list 
		;; 
esac
