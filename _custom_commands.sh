#!/bin/bash

function search() {
  LOC={path/to/search.py}
  while getopts :s:r: options; do
  	OPTIND=1	
  	case $options in 
    	  s)
  	 	python3 $LOC s ${@:2}
  	 	return
  		;;
     	  r)
 	 	python3 $LOC r ${@:2}
 	 	return
 		;; 
 	  ?) 	echo "Invalid option -$OPTARG"
 	  	echo "Try 'search help' for more information"
 	  	return
 	  	;;
  	esac
  done
  case $1 in 
 	"help")
      		echo "Usage: search [-s] [-r]." 
      		echo "The s and r flags add a stackoverflow.com or reddit.com filter respectively to help narrow your search."
      		;; 
 	*)
 		echo "Inside the base case"
      		python3 $LOC $@
      		;; 
  esac
}
