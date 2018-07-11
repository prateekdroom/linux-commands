#script to kill zombie process in your terminal

kill $(ps -A -ostat,ppid | awk '/[zZ]/ && !a[$2]++ {print $2}')
